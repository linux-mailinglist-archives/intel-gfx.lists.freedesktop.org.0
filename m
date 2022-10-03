Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCC85F2C50
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 10:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3DFB10E26B;
	Mon,  3 Oct 2022 08:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A90710E26B
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 08:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664786888; x=1696322888;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=8nUKIuQDvWtJzxjCyhljXMdDtnb41goZ6iI0Fpec38E=;
 b=aNhoMfdA7vrG8afeLkGNkz9bPPyepaUwWQLPyrZ01FsmE7zNpB7k7tIO
 GenY/xnTpuz/g7z9DdJJhtfkqn/+hHp8krwd/1g1+etqhHkl35MmxPycd
 4CfyjAikXkPR5yhzvYkJf+cS9qMoYMCG3s7fMgogcrslbYrYEgAn8ecrE
 9yIQZsg1bxKEG7WUX3wnLihh+f4IsuxgexgTn0NdKfgBL5bIWhfVYcca7
 JiKNWPYWswy1cNcJ8zO34efFjldiCN64a1u/lOsVCwLlnpwClE12PfBv3
 QvssAmPdoXZAwPetthYezyKXL4VLrOsmzvcsPtEnBxMwzFiu+RxfFMj+a Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="282293397"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="282293397"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 01:48:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="656656720"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="656656720"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 03 Oct 2022 01:48:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 11:48:03 +0300
Date: Mon, 3 Oct 2022 11:48:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yzqhwy1/41HmjKMp@intel.com>
References: <20221001182505.3675-1-ville.syrjala@linux.intel.com>
 <166466659715.32391.15847655821384807172@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <166466659715.32391.15847655821384807172@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Per-crtc/connector_DRRS_debugfs_=28rev2=29?=
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

On Sat, Oct 01, 2022 at 11:23:17PM -0000, Patchwork wrote:
>   * igt@kms_frontbuffer_tracking@fbcdrrs-slowdraw (NEW):
>     - shard-tglb:         NOTRUN -> [FAIL][2] +12 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109175v2/shard-tglb2/igt@kms_frontbuffer_tracking@fbcdrrs-slowdraw.html

shard-tglb passes most DRRS tests but fails a few. The reson looks to be
that we have a VRR panel rather than a DRRS panel:
using preferred EDID fixed mode: "1920x1080": 90 214000 1920 1936 1952 2104 1080 1083 1097 1128 0x48 0xa
using alternate EDID fixed mode: "1920x1080": 40 214000 1920 1936 1952 2104 1080 1083 1097 2532 0x40 0xa

The kernel still reports that the connector can do seamless DRRS
since it only checks that we have a multiple refresh rates available.
I guess I could try to tighten up that check a bit and make sure
we have a at least two modes suitable for DRRS in there...

-- 
Ville Syrjälä
Intel
