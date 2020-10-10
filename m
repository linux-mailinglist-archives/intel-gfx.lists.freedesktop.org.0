Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1E728BD1B
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 18:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B8E6E529;
	Mon, 12 Oct 2020 16:01:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 831 seconds by postgrey-1.36 at gabe;
 Sat, 10 Oct 2020 20:25:04 UTC
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com
 [148.163.147.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E4C66E055
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Oct 2020 20:25:04 +0000 (UTC)
Received: from pps.filterd (m0134420.ppops.net [127.0.0.1])
 by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 09AK8WI3012344
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Oct 2020 20:11:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com;
 h=date : from : to : cc :
 subject : message-id : reply-to : content-type : mime-version; s=pps0720;
 bh=Md6qIhIHovte9YdOGvPU2rRM4qhhZ5eplt15/Ax2MCs=;
 b=KJeoLXYthQ+lawMsWMbieNPU7SVE6xQEaQbp5blP4zWD/SkwqEbwvK4lXvjnhKnZZk5z
 42PrhWgiY+f/SKJCSwNyJeMTvpOi2tLy0ej+tHXagG6OCFMrN7+mPAh3FVND70CtiE0e
 hFXwTtivTgHyaMTFULNw8uBA0N8bQmp79Hssiprk+NEF/j0n7XuGyyzlqlBfx3JMgj8G
 hF2poLICsarUl6oTFunRThiTzMBe5YMlCUenXfavZKuCztxKMmQPgVfSqDcrol2NUBa7
 0InfGnjUDqCyE1LK/fKrCmYgOnJq/ewWEtncYOjW5cNvQrxTDJFmEBaB2qA0JGCplBTj /g== 
Received: from g9t5009.houston.hpe.com (g9t5009.houston.hpe.com [15.241.48.73])
 by mx0b-002e3701.pphosted.com with ESMTP id 3432b242y5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Oct 2020 20:11:12 +0000
Received: from g4t3433.houston.hpecorp.net (g4t3433.houston.hpecorp.net
 [16.208.49.245])
 by g9t5009.houston.hpe.com (Postfix) with ESMTP id 9DBDD5B
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Oct 2020 20:11:10 +0000 (UTC)
Received: from rfwz62 (rfwz62.americas.hpqcorp.net [10.33.237.8])
 by g4t3433.houston.hpecorp.net (Postfix) with ESMTP id 9332045;
 Sat, 10 Oct 2020 20:11:10 +0000 (UTC)
Date: Sat, 10 Oct 2020 14:11:10 -0600
From: rwright@hpe.com
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201010201110.GA12600@rfwz62>
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-10-10_07:2020-10-09,
 2020-10-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0
 mlxscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 mlxlogscore=999 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010100189
X-Mailman-Approved-At: Mon, 12 Oct 2020 16:01:02 +0000
Subject: [Intel-gfx] [RFC] drm/i915/gt: reduce context clear batch size to
 avoid gpu hang (rev2)
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
Reply-To: rwright@hpe.com
Cc: rwright@hpe.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The first version of this RFC patch caused a build error when - to my
suprise - it was automatically built.  I had presumed an RFC message
would be for comment only, and so I had pasted part of the patch,
thereby breaking whitespace.  In this version, I have directly included
the patch without pasting, so it should apply.  I also
included a drm_dbg message omitted from v1.

For several months, I've been experiencing GPU hangs when  starting
Cinnamon on an HP Pavilion Mini 300-020 if I try to run an upstream
kernel.  I reported this recently in
https://gitlab.freedesktop.org/drm/intel/-/issues/2413 where I have
attached the requested evidence including the state collected from
/sys/class/drm/card0/error and debug output from dmesg.

I got around to running a bisect to find the problem, which indicates:

  [47f8253d2b8947d79fd3196bf96c1959c0f25f20] drm/i915/gen7: Clear all EU/L3 residual contexts

While I'm experienced in several areas of the Linux kernel, I'm really
nothing but an end user of the graphics drivers.  But the nature of that
troublesome commit suggested to me that reducing the batch size used in
the context clear operation might help this relatively low-powered
system to avoid the hang.... and it did!  I simply forced this system to
take the smaller batch length that is already used for non-Haswell
systems.

I'm calling this patch an RFC because this version is quick-and-dirty,
affecting only one file.  If this makes sense, I have a cleaner version
that keys off of a proper quirk, but let's discuss the idea first before
looking at that.   Maybe it doesn't need a new quirk?  Maybe there is
already something distinctive on which the decision could be made?

Signed-off-by: Randy Wright <rwright@hpe.com>
---
 drivers/gpu/drm/i915/gt/gen7_renderclear.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index d93d85cd3027..96bc09bc41f2 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -49,7 +49,11 @@ struct batch_vals {
 static void
 batch_get_defaults(struct drm_i915_private *i915, struct batch_vals *bv)
 {
-	if (IS_HASWELL(i915)) {
+	struct pci_dev *d = i915->drm.pdev;
+	int force_reduced = (d->subsystem_vendor == PCI_VENDOR_ID_HP
+			  && d->subsystem_device == 0x2b38);
+
+	if (IS_HASWELL(i915) && !force_reduced) {
 		bv->max_primitives = 280;
 		bv->max_urb_entries = MAX_URB_ENTRIES;
 		bv->surface_height = 16 * 16;
@@ -60,6 +64,8 @@ batch_get_defaults(struct drm_i915_private *i915, struct batch_vals *bv)
 		bv->surface_height = 16 * 8;
 		bv->surface_width = 32 * 16;
 	}
+	drm_dbg(&i915->drm, "force_reduced=%d max_primitives=%d\n",
+			     force_reduced, bv->max_primitives);
 	bv->cmd_size = bv->max_primitives * 4096;
 	bv->state_size = STATE_SIZE;
 	bv->state_start = bv->cmd_size;
-- 
2.25.1



--
Randy Wright            Usmail: Hewlett Packard Enterprise
Email: rwright@hpe.com          Servers Linux Enablement
Phone: (970) 898-0998           3404 E. Harmony Rd, Mailstop 36
                                Fort Collins, CO 80528-9599 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
