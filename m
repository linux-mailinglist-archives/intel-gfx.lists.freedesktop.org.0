Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C29F2185191
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 23:21:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153376E057;
	Fri, 13 Mar 2020 22:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B1536E057;
 Fri, 13 Mar 2020 22:21:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 15:21:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,550,1574150400"; d="scan'208";a="322919665"
Received: from ebrigham-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.252.14.214])
 by orsmga001.jf.intel.com with ESMTP; 13 Mar 2020 15:21:40 -0700
Date: Sat, 14 Mar 2020 00:21:39 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200313222139.GC3001@intel.intel>
References: <20200311093448.4103262-1-chris@chris-wilson.co.uk>
 <20200311093448.4103262-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311093448.4103262-2-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/5] lib/i915: Dynamic subtest
 constructor for sysfs/engines
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> +	lseek(engines, 0, SEEK_SET);
> +	while ((len = syscall(SYS_getdents64, engines, buf, sizeof(buf))) > 0) {
> +		void *ptr = buf;
> +
> +		while (len) {
> +			struct linux_dirent64 {
> +				ino64_t        d_ino;
> +				off64_t        d_off;
> +				unsigned short d_reclen;
> +				unsigned char  d_type;
> +				char           d_name[];
> +			} *de = ptr;

it's unfortunate to be in the situation of doing this, But I
don't see better alternative, it needs to be fixed in the
glibc :(

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
