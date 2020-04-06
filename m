Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E1619F5FC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 14:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 342B289E98;
	Mon,  6 Apr 2020 12:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B57F889E98
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 12:44:45 +0000 (UTC)
IronPort-SDR: +qKbbSDtjcEwLT23CJn+Hxo3Igh1e6cH84SnH1RcxyylF8NKVdiukB0vlvhGTqpp2hSt7TAbYa
 ET2QFG7FjseA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 05:44:45 -0700
IronPort-SDR: BEhhto1/sQ5jFOnpTgWNAxdphE2wArTbpPDWzHp7X9WkFt43MS8378UaNIYVQLvjHWFrW7lXrJ
 Nu58xbYqG91A==
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="397488590"
Received: from maytarsh-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.38.121])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 05:44:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Bharadiya\,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200406111638.GA16489@plaxmina-desktop.iind.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-2-jani.nikula@intel.com>
 <20200406105401.GA16300@plaxmina-desktop.iind.intel.com>
 <87mu7olvnj.fsf@intel.com>
 <20200406111638.GA16489@plaxmina-desktop.iind.intel.com>
Date: Mon, 06 Apr 2020 15:44:40 +0300
Message-ID: <87k12slr5z.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/17] drm/i915/panel: use struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 Apr 2020, "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> Adding new i915 variable seems to be redundant here since we can 
> directly use "connector->base.dev" for getting struct drm_device
> pointer.

We could. However, struct drm_i915_private *i915 is widely used and
needed throughout the driver, all over the place. I'd rather add i915
now instead of first using connector->base.dev or whatever, and having
someone add i915 at a later time and then converting to &i915->drm.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
