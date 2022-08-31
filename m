Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7C25A8146
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 17:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7798910E44A;
	Wed, 31 Aug 2022 15:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACD410E432
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 15:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661959816; x=1693495816;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=HZf2rJPj9tc38KzrNv7ww/yrNRT+Jyzd4DyafT9Kxdg=;
 b=TnfiMzZIOli9StPwKBDFOI7f6MsbxcI7mFGFELq76/eYh0PalGc+unlr
 gdqRfQPdedTchNUtLALF8QL2nPWvWms0AYfJmwvxaAwFs3If8dsUmtsnu
 Gs8Ei7LFKCZUa5c5qikeuJQbH/DNOLVQKoRMVlHvtCzeO1XUTbnouPhuf
 7ciYxfbKW/34JH+aBHg8k2OXhNxoHIHfGCn1rNGI6YBJGq3ruh353S7M+
 PY9DbuKCQMbpI/EgMS3pkGJkVczYmP5JpUzvNZ1sRz0KudlPJo3VyiQnn
 X33G5kh8C0k23iAIrehFVSN++HkZdmHCTFheRtHXOBJnaMyX359JnSu3i g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="278489489"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="278489489"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:30:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="641912036"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.2.39])
 ([10.213.2.39])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:30:14 -0700
Message-ID: <d5423f1d-bc51-177d-bd1a-143b129e4ff1@intel.com>
Date: Wed, 31 Aug 2022 17:30:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220830093411.1511040-1-jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220830093411.1511040-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915/crt: remove BUG_ON()
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

On 30.08.2022 11:34, Jani Nikula wrote:
> Avoid BUG_ON(). We don't have such checks on output type anywhere else
> either, so just remove.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
