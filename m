Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFD334405A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 13:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43EB889C93;
	Mon, 22 Mar 2021 12:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 351CD89C93;
 Mon, 22 Mar 2021 12:01:52 +0000 (UTC)
IronPort-SDR: lcDvOYdLPw1+v5lVjay6RBUh+Km+7M3l60SeMrgD1EhkFIa/C8pI2ZyVv+rfmLm1NxIzYhzqEL
 0bMLTT7LnIiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="189657010"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="189657010"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 05:01:51 -0700
IronPort-SDR: 3/ztgiJ8N25LW8GPJQ7PNB11KSX3VKQXms3JRwCjdlun0Yu6QLksSSQ63pXdTVVo/k7iOtxTeu
 GDowkcSuEj0Q==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="414459410"
Received: from sbramhax-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.53.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 05:01:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
In-Reply-To: <CAOFGe94ggJUBH_+bbxAVLUge8NZQYHK55ZzjnQ2erXhh+r8c=A@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210319223856.2983244-1-jason@jlekstrand.net>
 <20210319223856.2983244-2-jason@jlekstrand.net>
 <CAOFGe94ggJUBH_+bbxAVLUge8NZQYHK55ZzjnQ2erXhh+r8c=A@mail.gmail.com>
Date: Mon, 22 Mar 2021 14:01:47 +0200
Message-ID: <87wntz5rdg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Drop
 I915_CONTEXT_PARAM_RINGSIZE
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 20 Mar 2021, Jason Ekstrand <jason@jlekstrand.net> wrote:
>     This reverts commit 88be76cdafc7e60e2e4ed883bfe7e8dd7f35fa3a.  This API

Small nit, I think it would be useful to reference commits with the
citation style:

88be76cdafc7 ("drm/i915: Allow userspace to specify ringsize on construction")

I use this monster in my .gitconfig:

[alias]
	cite = "!f() { git log -1 '--pretty=format:%H (\"%s\")%n' $1 | sed -e 's/\\([0-f]\\{12\\}\\)[0-f]*/\\1/'; }; f"

With that, 'git cite <committish>' will give you the nice reference with
12 chars of sha1 regardless of core.abbrev config.


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
