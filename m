Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EA25F2C00
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 10:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBDBA10E272;
	Mon,  3 Oct 2022 08:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF7F710E272
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 08:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664786265; x=1696322265;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vhUPxgAx8uPCs0NYdrVo77Nw2tWafkfhGfl1EPvTkV0=;
 b=EZFsIoivxwhgMMaPd3LxJfTaBiknezf1E2ZRwee9eiec+e15TJD4Eox1
 ZdcQkG7hnYN8IbBtnZ/gVUVbdrROMI0/KbzjzMsCJCOaEISQMXdU+bNZF
 OCGYaHk4HF+kC7FFIRiHCAWrNIkBmLLtXNcsSCtZryHcVWcY/yxzIrHQ7
 veax8j5zY4OyKeJQQT/5EDFoIYhsdFJbob2QQT3QTtBdox3PmFg62so52
 tEUr1zNnwGbHOiVMaOBE+4Is2NRU8QXHPwzw8vXeCW++CzjiazmUPk53A
 bHkoqk2VZ+q6MuOpJDoNKk7QZkCu4aAn15wzxLJGVV41iYypntZHX23e2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="301301447"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="301301447"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 01:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="574552740"
X-IronPort-AV: E=Sophos;i="5.93,364,1654585200"; d="scan'208";a="574552740"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga003.jf.intel.com with SMTP; 03 Oct 2022 01:37:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 11:37:41 +0300
Date: Mon, 3 Oct 2022 11:37:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YzqfVR8RjL06e20Y@intel.com>
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Oct 01, 2022 at 11:23:17PM -0000, Patchwork wrote:
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][58] -> [SKIP][59] ([i915#4525])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12204/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109175v2/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html

shard-iclb skips most DRRS tests, but does execute a few which is
weird.

I spot checked a few of he logs and saw at least three different panels
being used:
1. using preferred EDID fixed mode: "2560x1440": 60 241750 2560 2608 2640 2720 1440 1443 1448 1481 0x48 0xa
2. using preferred EDID fixed mode: "1920x1080": 60 141000 1920 1936 1952 2104 1080 1083 1097 1116 0x48 0xa
3. using preferred EDID fixed mode: "1920x1080": 60 138780 1920 1966 1996 2080 1080 1082 1086 1112 0x48 0xa
   using alternate EDID fixed mode: "1920x1080": 40 92520 1920 1966 1996 2080 1080 1082 1086 1112 0x40 0xa

So the DRRS tests were only executed when they ended up on machine with 
panel 3.

Having different panels between the machines in the shard pool is not
great. We can get all kinds of pingpongs depending on how tests get
scheduled to individual machines.

-- 
Ville Syrjälä
Intel
