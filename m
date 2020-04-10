Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5BC1A48B4
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 18:59:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4932389916;
	Fri, 10 Apr 2020 16:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24B4689916;
 Fri, 10 Apr 2020 16:59:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D8EBA0088;
 Fri, 10 Apr 2020 16:59:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Venkata Sandeep Dhanalakota" <venkata.s.dhanalakota@intel.com>
Date: Fri, 10 Apr 2020 16:59:27 -0000
Message-ID: <158653796708.10042.925320524279741584@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200410165158.29546-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20200410165158.29546-1-venkata.s.dhanalakota@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_introduce_a_mech?=
 =?utf-8?q?anism_to_extend_execbuf2?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/4] drm/i915: introduce a mechanism to extend execbuf2
URL   : https://patchwork.freedesktop.org/series/75810/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f52f98b82c3b drm/i915: introduce a mechanism to extend execbuf2
-:141: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#141: FILE: include/uapi/drm/i915_drm.h:1204:
+#define __I915_EXEC_UNKNOWN_FLAGS (-(I915_EXEC_USE_EXTENSIONS<<1))
                                                              ^

total: 0 errors, 0 warnings, 1 checks, 113 lines checked
8171b3a56b0a drm/i915: add syncobj timeline support
-:26: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#26: 
    https://lists.freedesktop.org/archives/dri-devel/2019-August/229287.html

total: 0 errors, 1 warnings, 0 checks, 555 lines checked
d387ab6f223d drm/i915: peel dma-fence-chains wait fences
2856c1eadad1 drm/selftests: selftest for timeline semaphore
-:21: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#21: 
new file mode 100644

-:98: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#98: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:51:
+	spinlock_t lock;

-:113: ERROR:SPACING: space required after that ',' (ctx:VxV)
#113: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:66:
+	pr_debug("release %lld\n",fence->seqno);
 	                         ^

-:154: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#154: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:107:
+static struct fence_chain* fence_chain(struct dma_fence *prev,

-:155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#155: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:108:
+static struct fence_chain* fence_chain(struct dma_fence *prev,
+				    u64 seqno)

-:166: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#166: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:119:
+	dma_fence_init(&f->fence, &mock_ops,
+			       &f->lock, 0, seqno);

-:182: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#182: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:135:
+	ci->chains = kvmalloc_array(count, sizeof(struct fence_chain *),
+				GFP_KERNEL | __GFP_ZERO);

-:188: ERROR:SPACING: space required after that ';' (ctx:VxV)
#188: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:141:
+	for (i = 0;i < ci->nchains; i++) {
 	          ^

-:275: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#275: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:228:
+		pr_err("Incorrect chain-fence.seqno:%lld reported for completed seqno:1\n",
+			f->seqno);

-:312: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 17)
#312: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:265:
+	if(dma_fence_is_signaled(f)) {
+		 err = -1;

-:312: ERROR:SPACING: space required before the open parenthesis '('
#312: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:265:
+	if(dma_fence_is_signaled(f)) {

-:314: WARNING:TABSTOP: Statements should start on a tabstop
#314: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:267:
+		 goto err;

-:320: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 17)
#320: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:273:
+	if(!dma_fence_is_signaled(f))
+		 err = -1;

-:320: ERROR:SPACING: space required before the open parenthesis '('
#320: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:273:
+	if(!dma_fence_is_signaled(f))

-:344: ERROR:SPACING: space required after that ';' (ctx:VxV)
#344: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:297:
+	for (i = 0;i < count; i++) {
 	          ^

-:354: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 25)
#354: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:307:
+		if(dma_fence_is_signaled(f)) {
+			 err = -1;

-:354: ERROR:SPACING: space required before the open parenthesis '('
#354: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:307:
+		if(dma_fence_is_signaled(f)) {

-:356: WARNING:TABSTOP: Statements should start on a tabstop
#356: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:309:
+			 goto err;

-:363: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 25)
#363: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:316:
+		if(!dma_fence_is_signaled(f))
+			 err = -1;

-:363: ERROR:SPACING: space required before the open parenthesis '('
#363: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:316:
+		if(!dma_fence_is_signaled(f))

-:368: ERROR:SPACING: space required after that ';' (ctx:VxV)
#368: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:321:
+	for (i = 0;i < count; i++) {
 	          ^

-:394: ERROR:SPACING: space required after that ';' (ctx:VxV)
#394: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:347:
+	for (i = 0;i < count; i++) {
 	          ^

-:401: ERROR:SPACING: space required after that ';' (ctx:VxV)
#401: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:354:
+	for (i = 0;i < count; i++) {
 	          ^

-:402: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 25)
#402: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:355:
+		if(dma_fence_is_signaled(&signal->chain.base))
+			 err = -1;

-:402: ERROR:SPACING: space required before the open parenthesis '('
#402: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:355:
+		if(dma_fence_is_signaled(&signal->chain.base))

-:409: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 17)
#409: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:362:
+	if(!dma_fence_is_signaled(&signal->chain.base))
+		 err = -1;

-:409: ERROR:SPACING: space required before the open parenthesis '('
#409: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:362:
+	if(!dma_fence_is_signaled(&signal->chain.base))

-:412: ERROR:SPACING: space required after that ';' (ctx:VxV)
#412: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:365:
+	for (i = 0;i < count; i++) {
 	          ^

-:462: ERROR:SPACING: space required before the open brace '{'
#462: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:415:
+	if (f && dma_fence_wait(f, true)){

-:495: ERROR:SPACING: space required after that ';' (ctx:VxV)
#495: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:448:
+	for (i = 0;i < MAX_TIMELINES; i++) {
 	          ^

-:509: ERROR:SPACING: space required after that ';' (ctx:VxV)
#509: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:462:
+	for (i = 0;i < MAX_TIMELINES; i++) {
 	          ^

-:510: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#510: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:463:
+	for (i = 0;i < MAX_TIMELINES; i++) {
+

-:519: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#519: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:472:
+		dma_fence_add_callback(t[i]->syncobj->fence,
+					&signaler->cb,

-:535: ERROR:SPACING: space required after that ';' (ctx:VxV)
#535: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:488:
+	for (i = 0;i < count; i++) {
 	          ^

-:567: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#567: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:520:
+	slab_timeline = KMEM_CACHE(mock_timeline,
+				 SLAB_TYPESAFE_BY_RCU |

-:571: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#571: FILE: drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c:524:
+	slab_fence_chain = KMEM_CACHE(fence_chain,
+				 SLAB_TYPESAFE_BY_RCU |

total: 18 errors, 9 warnings, 9 checks, 566 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
