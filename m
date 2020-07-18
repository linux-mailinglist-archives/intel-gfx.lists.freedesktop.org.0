Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0315224B00
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jul 2020 13:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C386E1F5;
	Sat, 18 Jul 2020 11:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7E16E1F5
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jul 2020 11:44:36 +0000 (UTC)
IronPort-SDR: N1N95fhDfmEIB26QuEp5bPP0VdODjQ0BViIiQEjNbwO6ECxvK93CK20RvI2X4xS733dfPXKqpx
 KQoX3qwAHQwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="234590758"
X-IronPort-AV: E=Sophos;i="5.75,367,1589266800"; d="scan'208";a="234590758"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2020 04:44:35 -0700
IronPort-SDR: EqUlL6MGa7jYBnLkxjYuGw3liQHL2x2ayfCiUR7ESNvmwDXSU6NdsVqI4VDth1cWsdZALehvAG
 OXs7U0j6JiKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,367,1589266800"; d="scan'208";a="283041468"
Received: from lkp-server02.sh.intel.com (HELO 50058c6ee6fc) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 18 Jul 2020 04:44:34 -0700
Received: from kbuild by 50058c6ee6fc with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jwlGc-0000lO-5i; Sat, 18 Jul 2020 11:44:34 +0000
Date: Sat, 18 Jul 2020 19:44:28 +0800
From: kernel test robot <lkp@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <20200718114427.GA32671@c5c18c185bfe>
References: <20200718000437.69033-5-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200718000437.69033-5-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [RFC PATCH] drm/i915/perf: i915_perf_mmap() can be
 static
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
Cc: kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Signed-off-by: kernel test robot <lkp@intel.com>
---
 i915_perf.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index e77582761a642..90535e38b91b9 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3423,7 +3423,7 @@ static const struct vm_operations_struct vm_ops_oa = {
 	.fault = vm_fault_oa,
 };
 
-int i915_perf_mmap(struct file *file, struct vm_area_struct *vma)
+static int i915_perf_mmap(struct file *file, struct vm_area_struct *vma)
 {
 	struct i915_perf_stream *stream = file->private_data;
 	int len;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
