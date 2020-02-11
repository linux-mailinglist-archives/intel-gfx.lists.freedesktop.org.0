Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D231591E8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 15:27:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118846EE69;
	Tue, 11 Feb 2020 14:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 094A96EE69
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 14:27:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 06:27:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="256484180"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by fmsmga004.fm.intel.com with ESMTP; 11 Feb 2020 06:27:27 -0800
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 11 Feb 2020 14:27:26 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 11 Feb 2020 14:27:26 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Tue, 11 Feb 2020 14:27:26 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [PATCH v1] drm/i915: Call intel_edp_init_connector only for eDP.
Thread-Index: AQHV4NCr6ZnEndN/Hkex5zsAYfOKi6gV9ckAgAAHaQCAAAcWgIAAAUoAgAADaoCAAAM9gA==
Date: Tue, 11 Feb 2020 14:27:26 +0000
Message-ID: <24eea19d0aee5fed1610c27c11e6b5246d923b4a.camel@intel.com>
References: <20200211114038.21035-1-stanislav.lisovskiy@intel.com>
 <87zhdpz35z.fsf@intel.com>
 <713d424e3ab55716b9f475ee0453dc3e4848e226.camel@intel.com>
 <87r1z1z0ri.fsf@intel.com>
 <7137346ae4f624b263d85ce79ea62fea70de5037.camel@intel.com>
 <87d0alyzzg.fsf@intel.com>
In-Reply-To: <87d0alyzzg.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.163]
Content-ID: <C54122EE91A1524E94BD501E73BC017F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Call intel_edp_init_connector
 only for eDP.
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

On Tue, 2020-02-11 at 16:12 +0200, Jani Nikula wrote:
> On Tue, 11 Feb 2020, "Lisovskiy, Stanislav" <
> stanislav.lisovskiy@intel.com> wrote:
> > Well, you can just take all those checks and put them into separate
> > function. Something like:
> > 
> > bool intel_dp_supports_mst(intel_dp) {
> > 	if (HAS_DP_MST(i915) && !intel_dp_is_edp(intel_dp)) &&
> >              !(INTEL_GEN(i915) < 12 && port == PORT_A) &&
> >              !(INTEL_GEN(i915) <	11 && port == PORT_E))
> > 			return true;
> > 	return false;
> > }
> > 
> > so, then you would have it nicely looking and understandable:
> > 
> > if (intel_dp_supports_mst(intel_dp))
> > 	intel_dp_mst_encoder_init(intel_dig_port,
> >                                   intel_connector->base.base.id);
> > 
> > Anyway, I'm _not_ stating that this is _always_ the best way, but 
> > I don't see at least any reasons currently why it couldn't be done
> > so.
> 
> It's fine, until you realize you need to call a function with the
> condition from more than one place, and you need to remember to have
> the
> same conditions in all the places. So the condition is no longer in
> one
> isolated place. It's not like we haven't thought about this before.
> ;)

Well, that is why I didn't say that this is always a best approach. :)

Sure, if I had to do lots of calls of this function(even though this
should be reviewed then, why we have to do it in a multiple places),
I would then just put this check and init together into some helper
function.

Stan

> 
> BR,
> Jani.
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
