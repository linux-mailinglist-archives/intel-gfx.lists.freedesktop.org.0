Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB336D995E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 16:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F3210EBF8;
	Thu,  6 Apr 2023 14:16:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16D9310EBF0;
 Thu,  6 Apr 2023 14:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680790555; x=1712326555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gW7TxLJ3IaGPzRsnMstqVz0vpDfD+kxVXz0iaEQORAM=;
 b=j+r02fZhNwnmeMDcJP9kqYkxrjN0eFmtZotwPa1L21h9VhSk/3fOPAYF
 5eB1+/fUE7eHp69ciFTOkqS4xwV2csZTP3Go94TZCWviJ8XExi8GyTOMd
 WfAjm2KcEbJbj3ahAxGvCXZkmR8BKb9F9i2MdhnIGnANGdJxUl2Rprfmk
 AypOJhfqzAnBf3fVfA7YtE55DN+5dQ3YCZRfDVkwKaMZpuj1On5ynUAtb
 I9VQZoTDVR1tVJfMDQJCEwjIEz+UX9e9pRYh1pdwI+IzbPNcYNo5bUo/Y
 C5htNgYONmg2uCNlFyq3KKHhdlCVLMLVozS+YCIAOIF/1lYSFcvt6UshT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="331380150"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="331380150"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:15:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="689684959"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="689684959"
Received: from pjkenny-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.218.83])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:15:52 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Apr 2023 15:15:36 +0100
Message-Id: <20230406141538.3414368-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406141538.3414368-1-tvrtko.ursulin@linux.intel.com>
References: <20230406141538.3414368-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 6/8] lib/igt_drm_clients: Decouple
 hardcoded engine assumptions
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Intel_gpu_top gets it's main engine configuration data via PMU probe and
uses that for per client view as well. Furthemore code so far assumed only
clients belonging from a single DRM card would be tracked in a single
clients list.

Break this inter-dependency by moving the engine data to be per client and
also have libdrmclient probe the engine configuration independently using
the previously added libdrmfdinfo facilities.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_drm_clients.c |  38 +++++++++++--
 lib/igt_drm_clients.h |  14 ++---
 tools/intel_gpu_top.c | 127 +++++++++++++++++++++++++++++++-----------
 3 files changed, 134 insertions(+), 45 deletions(-)

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
index e11c8b18188f..d507c07fec87 100644
--- a/lib/igt_drm_clients.c
+++ b/lib/igt_drm_clients.c
@@ -97,7 +97,7 @@ igt_drm_client_update(struct igt_drm_client *c, unsigned int pid, char *name,
 	c->last_runtime = 0;
 	c->total_runtime = 0;
 
-	for (i = 0; i < c->clients->num_classes; i++) {
+	for (i = 0; i <= c->engines->max_engine_id; i++) {
 		assert(i < ARRAY_SIZE(info->busy));
 
 		if (info->busy[i] < c->last[i])
@@ -119,6 +119,7 @@ igt_drm_client_add(struct igt_drm_clients *clients,
 		   unsigned int pid, char *name, unsigned int drm_minor)
 {
 	struct igt_drm_client *c;
+	unsigned int i;
 
 	assert(!igt_drm_clients_find(clients, IGT_DRM_CLIENT_ALIVE,
 				     drm_minor, info->id));
@@ -144,8 +145,28 @@ igt_drm_client_add(struct igt_drm_clients *clients,
 	c->id = info->id;
 	c->drm_minor = drm_minor;
 	c->clients = clients;
-	c->val = calloc(clients->num_classes, sizeof(c->val));
-	c->last = calloc(clients->num_classes, sizeof(c->last));
+	c->engines = malloc(sizeof(*c->engines));
+	assert(c->engines);
+	memset(c->engines, 0, sizeof(*c->engines));
+	c->engines->capacity = calloc(info->last_engine_index + 1,
+				      sizeof(*c->engines->capacity));
+	assert(c->engines->capacity);
+	c->engines->names = calloc(info->last_engine_index + 1,
+				   sizeof(*c->engines->names));
+	assert(c->engines->names);
+
+	for (i = 0; i <= info->last_engine_index; i++) {
+		if (!info->capacity[i])
+			continue;
+
+		c->engines->capacity[i] = info->capacity[i];
+		c->engines->names[i] = strdup(info->names[i]);
+		assert(c->engines->names[i]);
+		c->engines->num_engines++;
+		c->engines->max_engine_id = i;
+	}
+	c->val = calloc(c->engines->max_engine_id + 1, sizeof(c->val));
+	c->last = calloc(c->engines->max_engine_id + 1, sizeof(c->last));
 	assert(c->val && c->last);
 
 	igt_drm_client_update(c, pid, name, info);
@@ -154,6 +175,15 @@ igt_drm_client_add(struct igt_drm_clients *clients,
 static
 void igt_drm_client_free(struct igt_drm_client *c, bool clear)
 {
+	unsigned int i;
+
+	if (c->engines) {
+		for (i = 0; i <= c->engines->max_engine_id; i++)
+			free(c->engines->names[i]);
+		free(c->engines->capacity);
+		free(c->engines->names);
+	}
+	free(c->engines);
 	free(c->val);
 	free(c->last);
 
@@ -323,7 +353,7 @@ static bool is_drm_fd(int fd_dir, const char *name, unsigned int *minor)
  *
  * If @name_map is not provided engine names will be auto-detected (this is
  * less performant) and indices will correspond with auto-detected names as
- * listed int clients->engine_class[].
+ * listed int clients->engines->names[].
  */
 struct igt_drm_clients *
 igt_drm_clients_scan(struct igt_drm_clients *clients,
diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
index ffa219c9c9fd..0a903b431eaa 100644
--- a/lib/igt_drm_clients.h
+++ b/lib/igt_drm_clients.h
@@ -31,10 +31,12 @@ enum igt_drm_client_status {
 	IGT_DRM_CLIENT_PROBE
 };
 
-struct igt_drm_client_engine_class {
-	unsigned int engine_class;
-	const char *name;
-	unsigned int num_engines;
+struct igt_drm_client_engines {
+	unsigned int num_engines; /* Number of discovered active engines. */
+	unsigned int max_engine_id; /* Largest engine index discovered.
+				       (Can differ from num_engines - 1 when using the engine map facility.) */
+	unsigned int *capacity; /* Array of engine capacities as parsed from fdinfo. */
+	char **names; /* Array of engine names, either auto-detected or from the passed in engine map. */
 };
 
 struct igt_drm_clients;
@@ -43,6 +45,7 @@ struct igt_drm_client {
 	struct igt_drm_clients *clients; /* Owning list. */
 
 	enum igt_drm_client_status status;
+	struct igt_drm_client_engines *engines; /* Engines used by this client, to map with busynees data. */
 	unsigned int id; /* DRM client id from fdinfo. */
 	unsigned int drm_minor; /* DRM minor of this client. */
 	unsigned int pid; /* PID which has this DRM fd open. */
@@ -59,9 +62,6 @@ struct igt_drm_clients {
 	unsigned int num_clients;
 	unsigned int active_clients;
 
-	unsigned int num_classes;
-	struct igt_drm_client_engine_class *engine_class;
-
 	void *private_data;
 
 	struct igt_drm_client *client; /* Must be last. */
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 4276632eea8d..c7af93e1e85e 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -67,6 +67,12 @@ struct pmu_counter {
 	bool present;
 };
 
+struct engine_class {
+	unsigned int engine_class;
+	const char *name;
+	unsigned int num_engines;
+};
+
 struct engine {
 	const char *name;
 	char *display_name;
@@ -85,7 +91,7 @@ struct engine {
 struct engines {
 	unsigned int num_engines;
 	unsigned int num_classes;
-	struct igt_drm_client_engine_class *class;
+	struct engine_class *class;
 	unsigned int num_counters;
 	DIR *root;
 	int fd;
@@ -117,6 +123,11 @@ struct engines {
 
 };
 
+struct intel_clients {
+	const char *pci_slot;
+	struct igt_drm_client_engines classes;
+};
+
 static struct termios termios_orig;
 
 __attribute__((format(scanf,3,4)))
@@ -774,9 +785,8 @@ static struct igt_drm_clients *display_clients(struct igt_drm_clients *clients)
 	ac = calloc(clients->num_clients, sizeof(*c));
 	assert(ac);
 
-	aggregated->num_classes = clients->num_classes;
-	aggregated->engine_class = clients->engine_class;
 	aggregated->private_data = clients->private_data;
+
 	aggregated->client = ac;
 
 	igt_for_each_drm_client(clients, c, tmp) {
@@ -797,7 +807,8 @@ static struct igt_drm_clients *display_clients(struct igt_drm_clients *clients)
 			ac->pid = c->pid;
 			strcpy(ac->name, c->name);
 			strcpy(ac->print_name, c->print_name);
-			ac->val = calloc(clients->num_classes,
+			ac->engines = c->engines;
+			ac->val = calloc(c->engines->max_engine_id + 1,
 					 sizeof(ac->val[0]));
 			assert(ac->val);
 			ac->samples = 1;
@@ -812,7 +823,7 @@ static struct igt_drm_clients *display_clients(struct igt_drm_clients *clients)
 		ac->total_runtime += c->total_runtime;
 		ac->last_runtime += c->last_runtime;
 
-		for (i = 0; i < clients->num_classes; i++)
+		for (i = 0; i <= c->engines->max_engine_id; i++)
 			ac->val[i] += c->val[i];
 	}
 
@@ -833,7 +844,7 @@ static void free_display_clients(struct igt_drm_clients *clients)
 	/*
 	 * Don't call igt_drm_clients_free or igt_drm_client_free since
 	 * "display" clients are not proper clients and have un-initialized
-	 * fields which we don't want the library to try and free.
+	 * or borrowed fields which we don't want the library to try and free.
 	 */
 	igt_for_each_drm_client(clients, c, tmp)
 		free(c->val);
@@ -1616,15 +1627,15 @@ print_engines_footer(struct engines *engines, double t,
 
 static int class_cmp(const void *_a, const void *_b)
 {
-	const struct igt_drm_client_engine_class *a = _a;
-	const struct igt_drm_client_engine_class *b = _b;
+	const struct engine_class *a = _a;
+	const struct engine_class *b = _b;
 
 	return a->engine_class - b->engine_class;
 }
 
 static void init_engine_classes(struct engines *engines)
 {
-	struct igt_drm_client_engine_class *classes;
+	struct engine_class *classes;
 	unsigned int i, num;
 	int max = -1;
 
@@ -1796,6 +1807,8 @@ static int
 print_clients_header(struct igt_drm_clients *clients, int lines,
 		     int con_w, int con_h, int *class_w)
 {
+	struct intel_clients *iclients = clients->private_data;
+
 	if (output_mode == INTERACTIVE) {
 		const char *pidname = "   PID              NAME ";
 		unsigned int num_active = 0;
@@ -1810,25 +1823,25 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 		if (lines++ >= con_h || len >= con_w)
 			return lines;
 
-		if (clients->num_classes) {
+		if (iclients->classes.num_engines) {
 			unsigned int i;
 			int width;
 
-			for (i = 0; i < clients->num_classes; i++) {
-				if (clients->engine_class[i].num_engines)
+			for (i = 0; i <= iclients->classes.max_engine_id; i++) {
+				if (iclients->classes.capacity[i])
 					num_active++;
 			}
 
 			*class_w = width = (con_w - len) / num_active;
 
-			for (i = 0; i < clients->num_classes; i++) {
-				const char *name = clients->engine_class[i].name;
+			for (i = 0; i <= iclients->classes.max_engine_id; i++) {
+				const char *name = iclients->classes.names[i];
 				int name_len = strlen(name);
 				int pad = (width - name_len) / 2;
 				int spaces = width - pad - name_len;
 
-				if (!clients->engine_class[i].num_engines)
-					continue; /* Assert in the ideal world. */
+				if (!iclients->classes.capacity[i])
+					continue;
 
 				if (pad < 0 || spaces < 0)
 					continue;
@@ -1843,7 +1856,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 		n_spaces(con_w - len);
 		printf("\033[0m\n");
 	} else {
-		if (clients->num_classes)
+		if (iclients->classes.num_engines)
 			pops->open_struct("clients");
 	}
 
@@ -1858,6 +1871,7 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 	     int con_w, int con_h, unsigned int period_us, int *class_w)
 {
 	struct igt_drm_clients *clients = c->clients;
+	struct intel_clients *iclients = clients->private_data;
 	unsigned int i;
 
 	if (output_mode == INTERACTIVE) {
@@ -1868,14 +1882,16 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 
 		printf("%6u %17s ", c->pid, c->print_name);
 
-		for (i = 0; c->samples > 1 && i < clients->num_classes; i++) {
+		for (i = 0;
+		     c->samples > 1 && i <= iclients->classes.max_engine_id;
+		     i++) {
 			double pct;
 
-			if (!clients->engine_class[i].num_engines)
-				continue; /* Assert in the ideal world. */
+			if (!iclients->classes.capacity[i])
+				continue;
 
 			pct = (double)c->val[i] / period_us / 1e3 * 100 /
-			      clients->engine_class[i].num_engines;
+			      iclients->classes.capacity[i];
 
 			/*
 			 * Guard against possible time-drift between sampling
@@ -1903,11 +1919,11 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 		if (c->samples > 1) {
 			pops->open_struct("engine-classes");
 
-			for (i = 0; i < clients->num_classes; i++) {
+			for (i = 0; i <= iclients->classes.max_engine_id; i++) {
 				double pct;
 
 				snprintf(buf, sizeof(buf), "%s",
-					clients->engine_class[i].name);
+					 iclients->classes.names[i]);
 				pops->open_struct(buf);
 
 				pct = (double)c->val[i] / period_us / 1e3 * 100;
@@ -1936,7 +1952,9 @@ print_clients_footer(struct igt_drm_clients *clients, double t,
 		if (lines++ < con_h)
 			printf("\n");
 	} else {
-		if (clients->num_classes)
+		struct intel_clients *iclients = clients->private_data;
+
+		if (iclients->classes.num_engines)
 			pops->close_struct();
 	}
 
@@ -2181,14 +2199,54 @@ static unsigned long elapsed_us(struct timespec *prev, unsigned int period_us)
 static bool client_match(const struct igt_drm_clients *clients,
 			 const struct drm_client_fdinfo *info)
 {
+	struct intel_clients *iclients = clients->private_data;
+
 	if (strcmp(info->driver, "i915"))
 		return false;
-	if (strcmp(info->pdev, clients->private_data))
+	if (strcmp(info->pdev, iclients->pci_slot))
 		return false;
 
 	return true;
 }
 
+static void
+intel_init_clients(struct intel_clients *iclients,
+		   const struct igt_device_card *card, struct engines *engines)
+{
+	unsigned int i;
+
+	iclients->pci_slot = strdup(card->pci_slot_name[0] ?
+				    card->pci_slot_name : IGPU_PCI);
+	assert(iclients->pci_slot);
+
+	iclients->classes.num_engines = engines->num_classes;
+	iclients->classes.max_engine_id = engines->num_classes - 1;
+
+	iclients->classes.capacity = calloc(engines->num_classes,
+					    sizeof(*iclients->classes.capacity));
+	assert(iclients->classes.capacity);
+	iclients->classes.names = calloc(engines->num_classes,
+					 sizeof(*iclients->classes.names));
+	assert(iclients->classes.names);
+
+	for (i = 0; i < engines->num_classes; i++) {
+		if (!engines->class[i].num_engines)
+			continue;
+
+		iclients->classes.num_engines++;
+		iclients->classes.max_engine_id = i;
+		iclients->classes.capacity[i] = engines->class[i].num_engines;
+		iclients->classes.names[i] = strdup(engines->class[i].name);
+	}
+}
+
+static void intel_free_clients(struct intel_clients *iclients)
+{
+	free((void *)iclients->pci_slot);
+	free(iclients->classes.capacity);
+	free(iclients->classes.names);
+}
+
 int main(int argc, char **argv)
 {
 	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
@@ -2201,6 +2259,7 @@ int main(int argc, char **argv)
 		"compute",
 	};
 	bool physical_engines = false;
+	struct intel_clients iclients;
 	int con_w = -1, con_h = -1;
 	char *output_path = NULL;
 	struct engines *engines;
@@ -2324,6 +2383,8 @@ int main(int argc, char **argv)
 	else
 		pmu_device = strdup("i915");
 
+	codename = igt_device_get_pretty_name(&card, false);
+
 	engines = discover_engines(pmu_device);
 	if (!engines) {
 		fprintf(stderr,
@@ -2352,21 +2413,17 @@ int main(int argc, char **argv)
 
 	ret = EXIT_SUCCESS;
 
-	if (has_drm_fdinfo(&card))
-		clients = igt_drm_clients_init(strdup(card.pci_slot_name[0] ?
-						      card.pci_slot_name :
-						      IGPU_PCI));
 	init_engine_classes(engines);
-	if (clients) {
-		clients->num_classes = engines->num_classes;
-		clients->engine_class = engines->class;
+
+	if (has_drm_fdinfo(&card)) {
+		intel_init_clients(&iclients, &card, engines);
+		clients = igt_drm_clients_init(&iclients);
 	}
 
 	pmu_sample(engines);
 	igt_drm_clients_scan(clients, client_match, engine_map,
 			     ARRAY_SIZE(engine_map));
 	gettime(&ts);
-	codename = igt_device_get_pretty_name(&card, false);
 
 	if (output_mode == JSON)
 		printf("[\n");
@@ -2466,8 +2523,10 @@ int main(int argc, char **argv)
 	if (output_mode == JSON)
 		printf("]\n");
 
-	if (clients)
+	if (clients) {
 		igt_drm_clients_free(clients);
+		intel_free_clients(&iclients);
+	}
 
 	free(codename);
 err_pmu:
-- 
2.37.2

