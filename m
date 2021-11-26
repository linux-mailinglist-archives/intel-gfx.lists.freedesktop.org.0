Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF49B45EF85
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 15:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94376F4CF;
	Fri, 26 Nov 2021 14:02:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5EA86F4CF;
 Fri, 26 Nov 2021 14:02:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="222893128"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="222893128"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 06:02:28 -0800
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="457669366"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.185])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 06:02:26 -0800
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1mqbn8-0005D2-Nb; Fri, 26 Nov 2021 16:01:30 +0200
Date: Fri, 26 Nov 2021 16:01:30 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YaDous43wLnrFUhL@platvala-desk.ger.corp.intel.com>
References: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
 <20211119125945.55056-5-tvrtko.ursulin@linux.intel.com>
 <d8edf1b5-89e7-d2cf-0689-5357c8f06251@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d8edf1b5-89e7-d2cf-0689-5357c8f06251@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 5/6] intel_gpu_top: Remove
 clients support
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 26, 2021 at 01:07:24PM +0000, Tvrtko Ursulin wrote:
> 
> On 19/11/2021 12:59, Tvrtko Ursulin wrote:
> > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > 
> > When kernel feature was removed the intel_gpu_top part was forgotten.
> > 
> > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> Will someone ack this or we carry this code until it ships, if it hasn't
> already?

Does that question mean client busyness will some day return?

Either way,
Acked-by: Petri Latvala <petri.latvala@intel.com>


> 
> Regards,
> 
> Tvrtko
> 
> > ---
> >   man/intel_gpu_top.rst |   4 -
> >   tools/intel_gpu_top.c | 810 +-----------------------------------------
> >   2 files changed, 1 insertion(+), 813 deletions(-)
> > 
> > diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> > index f4dbfc5b44d9..b3b765b05feb 100644
> > --- a/man/intel_gpu_top.rst
> > +++ b/man/intel_gpu_top.rst
> > @@ -56,10 +56,6 @@ Supported keys:
> >       'q'    Exit from the tool.
> >       'h'    Show interactive help.
> >       '1'    Toggle between aggregated engine class and physical engine mode.
> > -    'n'    Toggle display of numeric client busyness overlay.
> > -    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
> > -    'i'    Toggle display of clients which used no GPU time.
> > -    'H'    Toggle between per PID aggregation and individual clients.
> >   DEVICE SELECTION
> >   ================
> > diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> > index 7311038a39f4..41c59a72c09d 100644
> > --- a/tools/intel_gpu_top.c
> > +++ b/tools/intel_gpu_top.c
> > @@ -627,562 +627,6 @@ static void pmu_sample(struct engines *engines)
> >   	}
> >   }
> > -enum client_status {
> > -	FREE = 0, /* mbz */
> > -	ALIVE,
> > -	PROBE
> > -};
> > -
> > -struct clients;
> > -
> > -struct client {
> > -	struct clients *clients;
> > -
> > -	enum client_status status;
> > -	int sysfs_root;
> > -	int busy_root;
> > -	unsigned int id;
> > -	unsigned int pid;
> > -	char name[24];
> > -	char print_name[24];
> > -	unsigned int samples;
> > -	unsigned long total_runtime;
> > -	unsigned long last_runtime;
> > -	struct engines *engines;
> > -	unsigned long *val;
> > -	uint64_t *last;
> > -};
> > -
> > -struct clients {
> > -	unsigned int num_clients;
> > -	unsigned int active_clients;
> > -
> > -	unsigned int num_classes;
> > -	struct engine_class *class;
> > -
> > -	char sysfs_root[128];
> > -
> > -	struct client *client;
> > -};
> > -
> > -#define for_each_client(clients, c, tmp) \
> > -	for ((tmp) = (clients)->num_clients, c = (clients)->client; \
> > -	     (tmp > 0); (tmp)--, (c)++)
> > -
> > -static struct clients *init_clients(const char *drm_card)
> > -{
> > -	struct clients *clients;
> > -	const char *slash;
> > -	ssize_t ret;
> > -	int dir;
> > -
> > -	clients = malloc(sizeof(*clients));
> > -	if (!clients)
> > -		return NULL;
> > -
> > -	memset(clients, 0, sizeof(*clients));
> > -
> > -	if (drm_card) {
> > -		slash = rindex(drm_card, '/');
> > -		assert(slash);
> > -	} else {
> > -		slash = "card0";
> > -	}
> > -
> > -	ret = snprintf(clients->sysfs_root, sizeof(clients->sysfs_root),
> > -		       "/sys/class/drm/%s/clients/", slash);
> > -	assert(ret > 0 && ret < sizeof(clients->sysfs_root));
> > -
> > -	dir = open(clients->sysfs_root, O_DIRECTORY | O_RDONLY);
> > -	if (dir < 0) {
> > -		free(clients);
> > -		clients = NULL;
> > -	} else {
> > -		close(dir);
> > -	}
> > -
> > -	return clients;
> > -}
> > -
> > -static int __read_to_buf(int fd, char *buf, unsigned int bufsize)
> > -{
> > -	ssize_t ret;
> > -	int err;
> > -
> > -	ret = read(fd, buf, bufsize - 1);
> > -	err = errno;
> > -	if (ret < 1) {
> > -		errno = ret < 0 ? err : ENOMSG;
> > -
> > -		return -1;
> > -	}
> > -
> > -	if (ret > 1 && buf[ret - 1] == '\n')
> > -		buf[ret - 1] = '\0';
> > -	else
> > -		buf[ret] = '\0';
> > -
> > -	return 0;
> > -}
> > -
> > -static int
> > -__read_client_field(int root, const char *field, char *buf, unsigned int bufsize)
> > -{
> > -	int fd, ret;
> > -
> > -	fd = openat(root, field, O_RDONLY);
> > -	if (fd < 0)
> > -		return -1;
> > -
> > -	ret = __read_to_buf(fd, buf, bufsize);
> > -
> > -	close(fd);
> > -
> > -	return ret;
> > -}
> > -
> > -static uint64_t
> > -read_client_busy(struct client *client, unsigned int class)
> > -{
> > -	const char *class_str[] = { "0", "1", "2", "3", "4", "5", "6", "7" };
> > -	char buf[256], *b;
> > -	int ret;
> > -
> > -	assert(class < ARRAY_SIZE(class_str));
> > -	if (class >= ARRAY_SIZE(class_str))
> > -		return 0;
> > -
> > -	assert(client->sysfs_root >= 0);
> > -	if (client->sysfs_root < 0)
> > -		return 0;
> > -
> > -	if (client->busy_root < 0)
> > -		client->busy_root = openat(client->sysfs_root, "busy",
> > -					   O_RDONLY | O_DIRECTORY);
> > -
> > -	assert(client->busy_root);
> > -	if (client->busy_root < 0)
> > -		return 0;
> > -
> > -	ret = __read_client_field(client->busy_root, class_str[class], buf,
> > -				  sizeof(buf));
> > -	if (ret) {
> > -		close(client->busy_root);
> > -		client->busy_root = -1;
> > -		return 0;
> > -	}
> > -
> > -	/*
> > -	 * Handle both single integer and key=value formats by skipping
> > -	 * leading non-digits.
> > -	 */
> > -	b = buf;
> > -	while (*b && !isdigit(*b))
> > -		b++;
> > -
> > -	return strtoull(b, NULL, 10);
> > -}
> > -
> > -static struct client *
> > -find_client(struct clients *clients, enum client_status status, unsigned int id)
> > -{
> > -	unsigned int start, num;
> > -	struct client *c;
> > -
> > -	start = status == FREE ? clients->active_clients : 0; /* Free block at the end. */
> > -	num = clients->num_clients - start;
> > -
> > -	for (c = &clients->client[start]; num; c++, num--) {
> > -		if (status != c->status)
> > -			continue;
> > -
> > -		if (status == FREE || c->id == id)
> > -			return c;
> > -	}
> > -
> > -	return NULL;
> > -}
> > -
> > -static void update_client(struct client *c, unsigned int pid, char *name)
> > -{
> > -	uint64_t val[c->clients->num_classes];
> > -	unsigned int i;
> > -
> > -	if (c->pid != pid)
> > -		c->pid = pid;
> > -
> > -	if (strcmp(c->name, name)) {
> > -		char *p;
> > -
> > -		strncpy(c->name, name, sizeof(c->name) - 1);
> > -		strncpy(c->print_name, name, sizeof(c->print_name) - 1);
> > -
> > -		p = c->print_name;
> > -		while (*p) {
> > -			if (!isprint(*p))
> > -				*p = '*';
> > -			p++;
> > -		}
> > -	}
> > -
> > -	for (i = 0; i < c->clients->num_classes; i++)
> > -		val[i] = read_client_busy(c, c->clients->class[i].class);
> > -
> > -	c->last_runtime = 0;
> > -	c->total_runtime = 0;
> > -
> > -	for (i = 0; i < c->clients->num_classes; i++) {
> > -		if (val[i] < c->last[i])
> > -			continue; /* It will catch up soon. */
> > -
> > -		c->total_runtime += val[i];
> > -		c->val[i] = val[i] - c->last[i];
> > -		c->last_runtime += c->val[i];
> > -		c->last[i] = val[i];
> > -	}
> > -
> > -	c->samples++;
> > -	c->status = ALIVE;
> > -}
> > -
> > -static void
> > -add_client(struct clients *clients, unsigned int id, unsigned int pid,
> > -	   char *name, int sysfs_root)
> > -{
> > -	struct client *c;
> > -
> > -	assert(!find_client(clients, ALIVE, id));
> > -
> > -	c = find_client(clients, FREE, 0);
> > -	if (!c) {
> > -		unsigned int idx = clients->num_clients;
> > -
> > -		clients->num_clients += (clients->num_clients + 2) / 2;
> > -		clients->client = realloc(clients->client,
> > -					  clients->num_clients * sizeof(*c));
> > -		assert(clients->client);
> > -
> > -		c = &clients->client[idx];
> > -		memset(c, 0, (clients->num_clients - idx) * sizeof(*c));
> > -	}
> > -
> > -	c->sysfs_root = sysfs_root;
> > -	c->busy_root = -1;
> > -	c->id = id;
> > -	c->clients = clients;
> > -	c->val = calloc(clients->num_classes, sizeof(c->val));
> > -	c->last = calloc(clients->num_classes, sizeof(c->last));
> > -	assert(c->val && c->last);
> > -
> > -	update_client(c, pid, name);
> > -}
> > -
> > -static void free_client(struct client *c)
> > -{
> > -	if (c->sysfs_root >= 0)
> > -		close(c->sysfs_root);
> > -	if (c->busy_root >= 0)
> > -		close(c->busy_root);
> > -	free(c->val);
> > -	free(c->last);
> > -	memset(c, 0, sizeof(*c));
> > -}
> > -
> > -static int
> > -read_client_sysfs(char *buf, int bufsize, const char *sysfs_root,
> > -		  unsigned int id, const char *field, int *client_root)
> > -{
> > -	ssize_t ret;
> > -
> > -	if (*client_root < 0) {
> > -		char namebuf[256];
> > -
> > -		ret = snprintf(namebuf, sizeof(namebuf), "%s/%u",
> > -			       sysfs_root, id);
> > -		assert(ret > 0 && ret < sizeof(namebuf));
> > -		if (ret <= 0 || ret == sizeof(namebuf))
> > -			return -1;
> > -
> > -		*client_root = open(namebuf, O_RDONLY | O_DIRECTORY);
> > -	}
> > -
> > -	if (*client_root < 0)
> > -		return -1;
> > -
> > -	return __read_client_field(*client_root, field, buf, bufsize);
> > -}
> > -
> > -static int client_last_cmp(const void *_a, const void *_b)
> > -{
> > -	const struct client *a = _a;
> > -	const struct client *b = _b;
> > -	long tot_a, tot_b;
> > -
> > -	/*
> > -	 * Sort clients in descending order of runtime in the previous sampling
> > -	 * period for active ones, followed by inactive. Tie-breaker is client
> > -	 * id.
> > -	 */
> > -
> > -	tot_a = a->status == ALIVE ? a->last_runtime : -1;
> > -	tot_b = b->status == ALIVE ? b->last_runtime : -1;
> > -
> > -	tot_b -= tot_a;
> > -	if (tot_b > 0)
> > -		return 1;
> > -	if (tot_b < 0)
> > -		return -1;
> > -
> > -	return (int)b->id - a->id;
> > -}
> > -
> > -static int client_total_cmp(const void *_a, const void *_b)
> > -{
> > -	const struct client *a = _a;
> > -	const struct client *b = _b;
> > -	long tot_a, tot_b;
> > -
> > -	tot_a = a->status == ALIVE ? a->total_runtime : -1;
> > -	tot_b = b->status == ALIVE ? b->total_runtime : -1;
> > -
> > -	tot_b -= tot_a;
> > -	if (tot_b > 0)
> > -		return 1;
> > -	if (tot_b < 0)
> > -		return -1;
> > -
> > -	return (int)b->id - a->id;
> > -}
> > -
> > -static int client_id_cmp(const void *_a, const void *_b)
> > -{
> > -	const struct client *a = _a;
> > -	const struct client *b = _b;
> > -	int id_a, id_b;
> > -
> > -	id_a = a->status == ALIVE ? a->id : -1;
> > -	id_b = b->status == ALIVE ? b->id : -1;
> > -
> > -	id_b -= id_a;
> > -	if (id_b > 0)
> > -		return 1;
> > -	if (id_b < 0)
> > -		return -1;
> > -
> > -	return (int)b->id - a->id;
> > -}
> > -
> > -static int client_pid_cmp(const void *_a, const void *_b)
> > -{
> > -	const struct client *a = _a;
> > -	const struct client *b = _b;
> > -	int pid_a, pid_b;
> > -
> > -	pid_a = a->status == ALIVE ? a->pid : INT_MAX;
> > -	pid_b = b->status == ALIVE ? b->pid : INT_MAX;
> > -
> > -	pid_b -= pid_a;
> > -	if (pid_b > 0)
> > -		return -1;
> > -	if (pid_b < 0)
> > -		return 1;
> > -
> > -	return (int)a->id - b->id;
> > -}
> > -
> > -static int (*client_cmp)(const void *, const void *) = client_last_cmp;
> > -
> > -static struct clients *sort_clients(struct clients *clients,
> > -				    int (*cmp)(const void *, const void *))
> > -{
> > -	unsigned int active, free;
> > -	struct client *c;
> > -	int tmp;
> > -
> > -	if (!clients)
> > -		return clients;
> > -
> > -	qsort(clients->client, clients->num_clients, sizeof(*clients->client),
> > -	      cmp);
> > -
> > -	/* Trim excessive array space. */
> > -	active = 0;
> > -	for_each_client(clients, c, tmp) {
> > -		if (c->status != ALIVE)
> > -			break; /* Active clients are first in the array. */
> > -		active++;
> > -	}
> > -
> > -	clients->active_clients = active;
> > -
> > -	free = clients->num_clients - active;
> > -	if (free > clients->num_clients / 2) {
> > -		active = clients->num_clients - free / 2;
> > -		if (active != clients->num_clients) {
> > -			clients->num_clients = active;
> > -			clients->client = realloc(clients->client,
> > -						  clients->num_clients *
> > -						  sizeof(*c));
> > -		}
> > -	}
> > -
> > -	return clients;
> > -}
> > -
> > -static bool aggregate_pids = true;
> > -
> > -static struct clients *display_clients(struct clients *clients)
> > -{
> > -	struct client *ac, *c, *cp = NULL;
> > -	struct clients *aggregated;
> > -	int tmp, num = 0;
> > -
> > -	if (!aggregate_pids)
> > -		goto out;
> > -
> > -	/* Sort by pid first to make it easy to aggregate while walking. */
> > -	sort_clients(clients, client_pid_cmp);
> > -
> > -	aggregated = calloc(1, sizeof(*clients));
> > -	assert(aggregated);
> > -
> > -	ac = calloc(clients->num_clients, sizeof(*c));
> > -	assert(ac);
> > -
> > -	aggregated->num_classes = clients->num_classes;
> > -	aggregated->class = clients->class;
> > -	aggregated->client = ac;
> > -
> > -	for_each_client(clients, c, tmp) {
> > -		unsigned int i;
> > -
> > -		if (c->status == FREE)
> > -			break;
> > -
> > -		assert(c->status == ALIVE);
> > -
> > -		if ((cp && c->pid != cp->pid) || !cp) {
> > -			ac = &aggregated->client[num++];
> > -
> > -			/* New pid. */
> > -			ac->clients = aggregated;
> > -			ac->status = ALIVE;
> > -			ac->id = -c->pid;
> > -			ac->pid = c->pid;
> > -			ac->busy_root = -1;
> > -			ac->sysfs_root = -1;
> > -			strcpy(ac->name, c->name);
> > -			strcpy(ac->print_name, c->print_name);
> > -			ac->engines = c->engines;
> > -			ac->val = calloc(clients->num_classes,
> > -					 sizeof(ac->val[0]));
> > -			assert(ac->val);
> > -			ac->samples = 1;
> > -		}
> > -
> > -		cp = c;
> > -
> > -		if (c->samples < 2)
> > -			continue;
> > -
> > -		ac->samples = 2; /* All what matters for display. */
> > -		ac->total_runtime += c->total_runtime;
> > -		ac->last_runtime += c->last_runtime;
> > -
> > -		for (i = 0; i < clients->num_classes; i++)
> > -			ac->val[i] += c->val[i];
> > -	}
> > -
> > -	aggregated->num_clients = num;
> > -	aggregated->active_clients = num;
> > -
> > -	clients = aggregated;
> > -
> > -out:
> > -	return sort_clients(clients, client_cmp);
> > -}
> > -
> > -static void free_clients(struct clients *clients)
> > -{
> > -	struct client *c;
> > -	unsigned int tmp;
> > -
> > -	for_each_client(clients, c, tmp) {
> > -		free(c->val);
> > -		free(c->last);
> > -	}
> > -
> > -	free(clients->client);
> > -	free(clients);
> > -}
> > -
> > -static struct clients *scan_clients(struct clients *clients)
> > -{
> > -	struct dirent *dent;
> > -	struct client *c;
> > -	unsigned int id;
> > -	int tmp;
> > -	DIR *d;
> > -
> > -	if (!clients)
> > -		return clients;
> > -
> > -	for_each_client(clients, c, tmp) {
> > -		assert(c->status != PROBE);
> > -		if (c->status == ALIVE)
> > -			c->status = PROBE;
> > -		else
> > -			break; /* Free block at the end of array. */
> > -	}
> > -
> > -	d = opendir(clients->sysfs_root);
> > -	if (!d)
> > -		return clients;
> > -
> > -	while ((dent = readdir(d)) != NULL) {
> > -		char name[24], pid[24];
> > -		int ret, root = -1, *pr;
> > -
> > -		if (dent->d_type != DT_DIR)
> > -			continue;
> > -		if (!isdigit(dent->d_name[0]))
> > -			continue;
> > -
> > -		id = atoi(dent->d_name);
> > -
> > -		c = find_client(clients, PROBE, id);
> > -
> > -		if (c)
> > -			pr = &c->sysfs_root;
> > -		else
> > -			pr = &root;
> > -
> > -		ret = read_client_sysfs(name, sizeof(name), clients->sysfs_root,
> > -					id, "name", pr);
> > -		ret |= read_client_sysfs(pid, sizeof(pid), clients->sysfs_root,
> > -					id, "pid", pr);
> > -		if (!ret) {
> > -			if (!c)
> > -				add_client(clients, id, atoi(pid), name, root);
> > -			else
> > -				update_client(c, atoi(pid), name);
> > -		} else if (c) {
> > -			c->status = PROBE; /* Will be deleted below. */
> > -		}
> > -	}
> > -
> > -	closedir(d);
> > -
> > -	for_each_client(clients, c, tmp) {
> > -		if (c->status == PROBE)
> > -			free_client(c);
> > -		else if (c->status == FREE)
> > -			break;
> > -	}
> > -
> > -	return display_clients(clients);
> > -}
> > -
> >   static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
> >   static void n_spaces(const unsigned int n)
> > @@ -1324,18 +768,6 @@ json_close_struct(void)
> >   		fflush(stdout);
> >   }
> > -static void
> > -__json_add_member(const char *key, const char *val)
> > -{
> > -	assert(json_indent_level < ARRAY_SIZE(json_indent));
> > -
> > -	fprintf(out, "%s%s\"%s\": \"%s\"",
> > -		json_struct_members ? ",\n" : "",
> > -		json_indent[json_indent_level], key, val);
> > -
> > -	json_struct_members++;
> > -}
> > -
> >   static unsigned int
> >   json_add_member(const struct cnt_group *parent, struct cnt_item *item,
> >   		unsigned int headers)
> > @@ -2061,157 +1493,6 @@ print_engines(struct engines *engines, double t, int lines, int w, int h)
> >   	return lines;
> >   }
> > -static int
> > -print_clients_header(struct clients *clients, int lines,
> > -		     int con_w, int con_h, int *class_w)
> > -{
> > -	if (output_mode == INTERACTIVE) {
> > -		const char *pidname = "   PID              NAME ";
> > -		unsigned int num_active = 0;
> > -		int len = strlen(pidname);
> > -
> > -		if (lines++ >= con_h)
> > -			return lines;
> > -
> > -		printf("\033[7m");
> > -		printf("%s", pidname);
> > -
> > -		if (lines++ >= con_h || len >= con_w)
> > -			return lines;
> > -
> > -		if (clients->num_classes) {
> > -			unsigned int i;
> > -			int width;
> > -
> > -			for (i = 0; i < clients->num_classes; i++) {
> > -				if (clients->class[i].num_engines)
> > -					num_active++;
> > -			}
> > -
> > -			*class_w = width = (con_w - len) / num_active;
> > -
> > -			for (i = 0; i < clients->num_classes; i++) {
> > -				const char *name = clients->class[i].name;
> > -				int name_len = strlen(name);
> > -				int pad = (width - name_len) / 2;
> > -				int spaces = width - pad - name_len;
> > -
> > -				if (!clients->class[i].num_engines)
> > -					continue; /* Assert in the ideal world. */
> > -
> > -				if (pad < 0 || spaces < 0)
> > -					continue;
> > -
> > -				n_spaces(pad);
> > -				printf("%s", name);
> > -				n_spaces(spaces);
> > -				len += pad + name_len + spaces;
> > -			}
> > -		}
> > -
> > -		n_spaces(con_w - len);
> > -		printf("\033[0m\n");
> > -	} else {
> > -		if (clients->num_classes)
> > -			pops->open_struct("clients");
> > -	}
> > -
> > -	return lines;
> > -}
> > -
> > -static bool numeric_clients;
> > -static bool filter_idle;
> > -
> > -static int
> > -print_client(struct client *c, struct engines *engines, double t, int lines,
> > -	     int con_w, int con_h, unsigned int period_us, int *class_w)
> > -{
> > -	struct clients *clients = c->clients;
> > -	unsigned int i;
> > -
> > -	if (output_mode == INTERACTIVE) {
> > -		if (filter_idle && (!c->total_runtime || c->samples < 2))
> > -			return lines;
> > -
> > -		lines++;
> > -
> > -		printf("%6u %17s ", c->pid, c->print_name);
> > -
> > -		for (i = 0; c->samples > 1 && i < clients->num_classes; i++) {
> > -			double pct;
> > -
> > -			if (!clients->class[i].num_engines)
> > -				continue; /* Assert in the ideal world. */
> > -
> > -			pct = (double)c->val[i] / period_us / 1e3 * 100 /
> > -			      clients->class[i].num_engines;
> > -
> > -			/*
> > -			 * Guard against possible time-drift between sampling
> > -			 * client data and time we obtained our time-delta from
> > -			 * PMU.
> > -			 */
> > -			if (pct > 100.0)
> > -				pct = 100.0;
> > -
> > -			print_percentage_bar(pct, *class_w, numeric_clients);
> > -		}
> > -
> > -		putchar('\n');
> > -	} else if (output_mode == JSON) {
> > -		char buf[64];
> > -
> > -		snprintf(buf, sizeof(buf), "%u", c->id);
> > -		pops->open_struct(buf);
> > -
> > -		__json_add_member("name", c->print_name);
> > -
> > -		snprintf(buf, sizeof(buf), "%u", c->pid);
> > -		__json_add_member("pid", buf);
> > -
> > -		if (c->samples > 1) {
> > -			pops->open_struct("engine-classes");
> > -
> > -			for (i = 0; i < clients->num_classes; i++) {
> > -				double pct;
> > -
> > -				snprintf(buf, sizeof(buf), "%s",
> > -					clients->class[i].name);
> > -				pops->open_struct(buf);
> > -
> > -				pct = (double)c->val[i] / period_us / 1e3 * 100;
> > -				snprintf(buf, sizeof(buf), "%f", pct);
> > -				__json_add_member("busy", buf);
> > -
> > -				__json_add_member("unit", "%");
> > -
> > -				pops->close_struct();
> > -			}
> > -
> > -			pops->close_struct();
> > -		}
> > -
> > -		pops->close_struct();
> > -	}
> > -
> > -	return lines;
> > -}
> > -
> > -static int
> > -print_clients_footer(struct clients *clients, double t,
> > -		     int lines, int con_w, int con_h)
> > -{
> > -	if (output_mode == INTERACTIVE) {
> > -		if (lines++ < con_h)
> > -			printf("\n");
> > -	} else {
> > -		if (clients->num_classes)
> > -			pops->close_struct();
> > -	}
> > -
> > -	return lines;
> > -}
> > -
> >   static bool stop_top;
> >   static void sigint_handler(int  sig)
> > @@ -2267,31 +1548,6 @@ static void interactive_stdin(void)
> >   	assert(ret == 0);
> >   }
> > -static void select_client_sort(void)
> > -{
> > -	struct {
> > -		int (*cmp)(const void *, const void *);
> > -		const char *msg;
> > -	} cmp[] = {
> > -		{ client_last_cmp, "Sorting clients by current GPU usage." },
> > -		{ client_total_cmp, "Sorting clients by accummulated GPU usage." },
> > -		{ client_pid_cmp, "Sorting clients by pid." },
> > -		{ client_id_cmp, "Sorting clients by sysfs id." },
> > -	};
> > -	static unsigned int client_sort;
> > -
> > -bump:
> > -	if (++client_sort >= ARRAY_SIZE(cmp))
> > -		client_sort = 0;
> > -
> > -	client_cmp = cmp[client_sort].cmp;
> > -	header_msg = cmp[client_sort].msg;
> > -
> > -	/* Sort by client id makes no sense with pid aggregation. */
> > -	if (aggregate_pids && client_cmp == client_id_cmp)
> > -		goto bump;
> > -}
> > -
> >   static bool in_help;
> >   static void process_help_stdin(void)
> > @@ -2334,29 +1590,9 @@ static void process_normal_stdin(void)
> >   			else
> >   				header_msg = "Showing physical engines.";
> >   			break;
> > -		case 'i':
> > -			filter_idle ^= true;
> > -			if (filter_idle)
> > -				header_msg = "Hiding inactive clients.";
> > -			else
> > -				header_msg = "Showing inactive clients.";
> > -			break;
> > -		case 'n':
> > -			numeric_clients ^= true;
> > -			break;
> > -		case 's':
> > -			select_client_sort();
> > -			break;
> >   		case 'h':
> >   			in_help = true;
> >   			break;
> > -		case 'H':
> > -			aggregate_pids ^= true;
> > -			if (aggregate_pids)
> > -				header_msg = "Aggregating clients.";
> > -			else
> > -				header_msg = "Showing individual clients.";
> > -			break;
> >   		};
> >   	}
> >   }
> > @@ -2384,10 +1620,6 @@ static void show_help_screen(void)
> >   	printf(
> >   "Help for interactive commands:\n\n"
> >   "    '1'    Toggle between aggregated engine class and physical engine mode.\n"
> > -"    'n'    Toggle display of numeric client busyness overlay.\n"
> > -"    's'    Toggle between sort modes (runtime, total runtime, pid, client id).\n"
> > -"    'i'    Toggle display of clients which used no GPU time.\n"
> > -"    'H'    Toggle between per PID aggregation and individual clients.\n"
> >   "\n"
> >   "    'h' or 'q'    Exit interactive help.\n"
> >   "\n");
> > @@ -2396,7 +1628,6 @@ static void show_help_screen(void)
> >   int main(int argc, char **argv)
> >   {
> >   	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
> > -	struct clients *clients = NULL;
> >   	int con_w = -1, con_h = -1;
> >   	char *output_path = NULL;
> >   	struct engines *engines;
> > @@ -2530,23 +1761,15 @@ int main(int argc, char **argv)
> >   	ret = EXIT_SUCCESS;
> > -	clients = init_clients(card.pci_slot_name[0] ? card.card : NULL);
> >   	init_engine_classes(engines);
> > -	if (clients) {
> > -		clients->num_classes = engines->num_classes;
> > -		clients->class = engines->class;
> > -	}
> >   	pmu_sample(engines);
> > -	scan_clients(clients);
> >   	codename = igt_device_get_pretty_name(&card, false);
> >   	while (!stop_top) {
> > -		struct clients *disp_clients;
> >   		bool consumed = false;
> > -		int j, lines = 0;
> >   		struct winsize ws;
> > -		struct client *c;
> > +		int lines = 0;
> >   		double t;
> >   		/* Update terminal size. */
> > @@ -2565,8 +1788,6 @@ int main(int argc, char **argv)
> >   		pmu_sample(engines);
> >   		t = (double)(engines->ts.cur - engines->ts.prev) / 1e9;
> > -		disp_clients = scan_clients(clients);
> > -
> >   		if (stop_top)
> >   			break;
> > @@ -2586,41 +1807,12 @@ int main(int argc, char **argv)
> >   			lines = print_engines(engines, t, lines, con_w, con_h);
> > -			if (disp_clients) {
> > -				int class_w;
> > -
> > -				lines = print_clients_header(disp_clients, lines,
> > -							     con_w, con_h,
> > -							     &class_w);
> > -
> > -				for_each_client(disp_clients, c, j) {
> > -					assert(c->status != PROBE);
> > -					if (c->status != ALIVE)
> > -						break; /* Active clients are first in the array. */
> > -
> > -					if (lines >= con_h)
> > -						break;
> > -
> > -					lines = print_client(c, engines, t,
> > -							     lines, con_w,
> > -							     con_h, period_us,
> > -							     &class_w);
> > -				}
> > -
> > -				lines = print_clients_footer(disp_clients, t,
> > -							     lines, con_w,
> > -							     con_h);
> > -			}
> > -
> >   			pops->close_struct();
> >   		}
> >   		if (stop_top)
> >   			break;
> > -		if (disp_clients != clients)
> > -			free_clients(disp_clients);
> > -
> >   		if (output_mode == INTERACTIVE)
> >   			process_stdin(period_us);
> >   		else
> > 
