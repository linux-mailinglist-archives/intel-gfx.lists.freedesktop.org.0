Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84020371292
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 10:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561CA6E094;
	Mon,  3 May 2021 08:44:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F2C6E075;
 Mon,  3 May 2021 08:44:49 +0000 (UTC)
IronPort-SDR: El/yz9nnWEW1LjzRnRFbBpuEOGcmoXAsyY+F9jpyjv95mm5h8kvC0vD6hGztnTXD/6ExWF6bWP
 4ik4vqmjvIsA==
X-IronPort-AV: E=McAfee;i="6200,9189,9972"; a="197305479"
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="197305479"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 01:44:48 -0700
IronPort-SDR: xd2qe6U1Q/xAyIkxyzZeoM9XM2kr4OgipLQMoXq+fusHEHNLgIOPw6axHuvG73mxfbnACMrp39
 GPmZH6l4viyw==
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="432633606"
Received: from tbashir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 01:44:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Cornij\, Nikola" <Nikola.Cornij@amd.com>,
 "lyude\@redhat.com" <lyude@redhat.com>,
 "amd-gfx\@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>
In-Reply-To: <DM5PR12MB4679215F5490F2D38E2A6C51EE5E9@DM5PR12MB4679.namprd12.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210430214531.24565-1-nikola.cornij@amd.com>
 <20210430214531.24565-2-nikola.cornij@amd.com>
 <20bfb456d1f05856ffdc4cd330e1155b99367a01.camel@redhat.com>
 <DM5PR12MB4679215F5490F2D38E2A6C51EE5E9@DM5PR12MB4679.namprd12.prod.outlook.com>
Date: Mon, 03 May 2021 11:44:41 +0300
Message-ID: <87h7jk1a12.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915: Use the correct max source
 link rate for MST
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "koba.ko@canonical.com" <koba.ko@canonical.com>, "Pillai,
 Aurabindo" <Aurabindo.Pillai@amd.com>,
 "bskeggs@redhat.com" <bskeggs@redhat.com>, "Lipski,
 Mikita" <Mikita.Lipski@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 30 Apr 2021, "Cornij, Nikola" <Nikola.Cornij@amd.com> wrote:
> I'll fix the dpcd part to use kHz on Monday

I'd appreciate that, thanks. I think it is the better interface.

> My apologies as well, not only for coming up with the wrong patch in
> first place, but also for missing to CC all the maintainers.

The drivers we have are monsters, and it can be tricky to get the
details right. All the more important to get the Cc's right; then at
least you can blame us afterwards. ;)

Thanks for reacting quickly, though.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
