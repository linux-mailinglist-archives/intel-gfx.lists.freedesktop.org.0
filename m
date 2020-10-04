Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5760228354F
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Oct 2020 14:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99C689D53;
	Mon,  5 Oct 2020 12:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 795 seconds by postgrey-1.36 at gabe;
 Sun, 04 Oct 2020 20:49:48 UTC
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com
 [148.163.143.35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EAA989DDF
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Oct 2020 20:49:48 +0000 (UTC)
Received: from pps.filterd (m0150244.ppops.net [127.0.0.1])
 by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 094KSQAb002628
 for <intel-gfx@lists.freedesktop.org>; Sun, 4 Oct 2020 20:36:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com;
 h=date : from : to :
 subject : message-id : reply-to : content-type : mime-version; s=pps0720;
 bh=ErMtz+UxxYdpksyjhZAXQfgIVYTvlvGVgWJuLeN5xcc=;
 b=n+k9V67funcOMAKUU4lQor/hbDuok7KQUaeHxpnRkrEtBD91bdfmgl00Nk9GraBsxaEm
 wI7fuyrxTKDjURM0oq5CRcozCDmb9qCUO1FH3Zu31GYTniQef3VKcmQlEfZWvjCcyAQM
 tZkDanjYlZozTT4PIXZyzi45F/7uCyTxAsLTTiQCZUA34feBX7hb+kckm+t54lDQqY4X
 x5U6SRyrqfsfopTnym2LfGXbB597gaSXv1RbBWGZlQFFESIdHsS9GRZlGPHJHBQi3GM7
 8vBLxmreGNcM4ZUtjSXRXQvxUpIg+dEIJ3T8//gc5VlpMkk7r0XX3FyVNIp/L89lI64r WQ== 
Received: from g4t3427.houston.hpe.com (g4t3427.houston.hpe.com
 [15.241.140.73])
 by mx0b-002e3701.pphosted.com with ESMTP id 33xhy2s3d8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sun, 04 Oct 2020 20:36:32 +0000
Received: from g4t3433.houston.hpecorp.net (g4t3433.houston.hpecorp.net
 [16.208.49.245])
 by g4t3427.houston.hpe.com (Postfix) with ESMTP id F1AFC57
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Oct 2020 20:36:31 +0000 (UTC)
Received: from rfwz62 (rfwz62.americas.hpqcorp.net [10.33.237.8])
 by g4t3433.houston.hpecorp.net (Postfix) with ESMTP id C453547
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Oct 2020 20:36:31 +0000 (UTC)
Date: Sun, 4 Oct 2020 14:36:31 -0600
From: rwright@hpe.com
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201004203631.GA6686@rfwz62>
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-10-04_20:2020-10-02,
 2020-10-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0
 mlxlogscore=999 priorityscore=1501 lowpriorityscore=0 phishscore=0
 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1011 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2010040158
X-Mailman-Approved-At: Mon, 05 Oct 2020 12:02:54 +0000
Subject: [Intel-gfx] [RFC] drm/i915/gt: reduce context clear batch size to
 avoid gpu hang
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

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
looking at that.   Maybe it doesn't need a new quirk?  Maybe
there is already something distinctive on which the decision
could be made?

diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index d93d85cd3027..6d24e266cda2 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -49,7 +49,11 @@ struct batch_vals {
 static void
 batch_get_defaults(struct drm_i915_private *i915, struct batch_vals *bv)
 {
-       if (IS_HASWELL(i915)) {
+        struct pci_dev *d = i915->drm.pdev;
+        int force_reduced = (d->subsystem_vendor == PCI_VENDOR_ID_HP
+                         && d->subsystem_device == 0x2b38);
+
+       if (IS_HASWELL(i915) && !force_reduced) {
                bv->max_primitives = 280;
                bv->max_urb_entries = MAX_URB_ENTRIES;
                bv->surface_height = 16 * 16;

-- 
--
Randy Wright            Usmail: Hewlett Packard Enterprise
Email: rwright@hpe.com          Servers Linux Enablement
Phone: (970) 898-0998           3404 E. Harmony Rd, Mailstop 36
                                Fort Collins, CO 80528-9599 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
