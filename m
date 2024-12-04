Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF32E9E3DE0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 16:10:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40AD310E4DC;
	Wed,  4 Dec 2024 15:10:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y1l11WVd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B3A10E4D0;
 Wed,  4 Dec 2024 15:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733325051; x=1764861051;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uPE46rsQByo00Pndx1biCVfkToXpH8ca0XKaz0gT3Eg=;
 b=Y1l11WVdTlvrocYaPGhRyKKDYTu4W70FT9pnITZXBmFeJWQhKpobw3We
 NIw5BGCtpGl9eOp/EqVDftuFlRFOPKB0xqDzT1tTaIo4hXDcWWl+x9jho
 OXycFrwyc2nTrMUtCODpXauEJ9sOnd+D/zRRPg+0+bjKXIzeNFqK49AnE
 pfxpnItlKqDNox6UBRBZjJ8ZpgaPGwxZGYZtqBO8ga1/09kK1nnCQWqUV
 +k3rNhuEwnzN9DyigjmYMfDFcVgL21B5RewcW0BLGrJ82bo81vmKavm/M
 0tRaCYUDFXobMEL01UKsOzTeS6gLw49U+JVg0n68jR2pqjq3r2qYEIH0S Q==;
X-CSE-ConnectionGUID: 1ADIECUzTmetmVx10fzoVg==
X-CSE-MsgGUID: vx7isu9WTF2PRtfTzNt89A==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44987668"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44987668"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:10:50 -0800
X-CSE-ConnectionGUID: n+NcHtupSP6PH5Lx/waY+Q==
X-CSE-MsgGUID: gOLBgJSxQxCxygSctBKGMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="94252303"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:08:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Ville
 Syrjala <ville.syrjala@linux.intel.com>, Sergey Senozhatsky
 <senozhatsky@chromium.org>
Subject: Re: [PATCH 0/3] drm/i915/display: handle hdmi connector init failures
In-Reply-To: <20241203123126.GE886051@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731599468.git.jani.nikula@intel.com>
 <20241115050045.GM1458936@google.com> <20241203123126.GE886051@google.com>
Date: Wed, 04 Dec 2024 17:08:44 +0200
Message-ID: <877c8f32pv.fsf@intel.com>
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

On Tue, 03 Dec 2024, Sergey Senozhatsky <senozhatsky@chromium.org> wrote:
> On (24/11/15 14:00), Sergey Senozhatsky wrote:
>> On (24/11/14 17:52), Jani Nikula wrote:
>> > This is an attempt to resolve [1].
>> > 
>> > [1] https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
>> > 
>> > Jani Nikula (3):
>> >   drm/i915/hdmi: propagate errors from intel_hdmi_init_connector()
>> >   drm/i915/hdmi: add error handling in g4x_hdmi_init()
>> >   drm/i915/ddi: propagate errors from intel_ddi_init_hdmi_connector()
>> 
>> So these look reasonable and good to me, and I think landing them
>> makes a lot of sense.  For that part feel free to add:
>> 
>> Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
>> and FWIW
>> Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>
>> 
>> 
>> 
>> Now, regarding the issue in question - we are getting there, but not
>> quite there yet.
>> 
>> I'm still seeing multiple NULL-ptr derefs, namely on
>> 
>>  DDI A/PHY A
>>  DDI TC1/PHY TC1
>>  DDI TC2/PHY TC2
>>  DDI TC3/PHY TC3
>>  DDI TC4/PHY TC4
>> 
>> The thing is, all of them are DP connectors, we only ever call
>> intel_ddi_init_dp_connector() on them, so dig_port->hdmi
>> is not init-ed, wheres intel_hdmi_encoder_shutdown() doesn't
>> distinguish and treats everyone as HDMI connector, dereferencing
>> ->hdmi.
>> 
>> With the small addition I don't see null-ptr derefs anymore:
>
> Gentle ping on this.

v2 with two additional patches at [1].

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1733324735.git.jani.nikula@intel.com

-- 
Jani Nikula, Intel
