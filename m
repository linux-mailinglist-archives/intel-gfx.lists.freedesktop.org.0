Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 415A44DCF15
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 20:57:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8CD10E760;
	Thu, 17 Mar 2022 19:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250E310E75C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 19:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647547035; x=1679083035;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yt+AMgLW2MvKNePQx5KDMmsS6e/hryyH03a/OVf0Xlc=;
 b=djEw24d6jTHUM1SvkKOuKZwZuKakdL9Nda2xuUaabl9gPi/j4mewM0pl
 fntcefP5+AUJi6cMt4tIE4vTvH0Xx+u4q6IPDphT8rp+zCLvftHx3tQnN
 A+xvwfZLu4n4c0kP09KTcCv7SweG1nIPtzbCN15BQ9oVbIDl3kuuGi5co
 afmfsn0QWNLCDkVH3MjMzh3MGncbjZAuXogYI+YRrHscV5O4XlFxwGqlg
 gET82HzBPGOZWSm3zN1/wNcmBsepv5LZewUfiV/B5dP3NnRqwQQL1AIy0
 tsiyktPj9se7WRjJQLSbr0XkjL/yZXij7HfiPcJeo/kyTMIiwBfAXoLYw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244422885"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="244422885"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:57:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="516903541"
Received: from cjmartin-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.31.111])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:57:14 -0700
Date: Thu, 17 Mar 2022 12:57:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220317195712.3stt55zzjpw6pxt5@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1647542120.git.jani.nikula@intel.com>
 <f1b1c0d1db3b64761f7b91ce936d42cd4d50ef8f.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <f1b1c0d1db3b64761f7b91ce936d42cd4d50ef8f.1647542120.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/dmc: hide DMC version macros
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 17, 2022 at 08:36:19PM +0200, Jani Nikula wrote:
>The macros are now only needed within intel_dmc.c, so move them there.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
