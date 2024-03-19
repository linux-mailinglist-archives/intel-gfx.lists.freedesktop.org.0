Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1EA880050
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 16:13:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D1410E558;
	Tue, 19 Mar 2024 15:13:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O1TnU/gV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE8010E558
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 15:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710861189; x=1742397189;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AvEQqamQyRKysZtBOHiId2gZwe3tUkhwexnPFLJe4Nw=;
 b=O1TnU/gVfXxPlz7oP0Lksun+gEe4/xIoDYXBsRItuovTZtIxMUSP3bjR
 dUg0sEo5SHbt6a3ObO6vwSiB991KKTNrLjWdbThl+cssMjDT1agMtqIlj
 JCBAqRGw2VoGihwm4G8TwaIsMIQN2CY67jThyqhBapRwZKHmLK2OPbNex
 hADzDtArgOSop3Gkn5wK45aYksjc0eQY6cLuwm9Y0PjhmX3duxrX8AweI
 VLjF0w+V434uielHB33/FSCKSKueQnPHbKF+k+T1OHKVqCtXHCIP+8lIx
 ARwdeqoEmOeoHIlIzVoEXSRiB0+iY6CEEvfTGeWbGlBgAEdlAYiXDKrSN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5596293"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5596293"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 08:06:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="18411872"
Received: from rcritchl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.139])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 08:06:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, luca@coelho.fi, gustavo.sousa@intel.com
Subject: Re: [PATCH] drm/xe/display: fix type of intel_uncore_read*() functions
In-Reply-To: <y5sc3bfcyhzmmeq7ru3jgsr2pw3xistizk4ycvbfw22rmn4ijb@erie627pruac>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240314065221.1181158-1-luciano.coelho@intel.com>
 <y5sc3bfcyhzmmeq7ru3jgsr2pw3xistizk4ycvbfw22rmn4ijb@erie627pruac>
Date: Tue, 19 Mar 2024 17:06:35 +0200
Message-ID: <87a5muntvo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 19 Mar 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Mar 14, 2024 at 08:52:21AM +0200, Luca Coelho wrote:
>>Some of the backported intel_uncore_read*() functions used the wrong
>>types.  Change the function declarations accordingly.
>>
>>Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>
> if a patch affects xe, please always Cc the xe mailing list so it
> triggers CI on those machines

Indeed. I just bounced the patch to intel-xe to trigger CI.

BR,
Jani.

>
> Lucas De Marchi

-- 
Jani Nikula, Intel
