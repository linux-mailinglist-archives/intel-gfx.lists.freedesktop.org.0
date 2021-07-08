Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E20C63BF2A9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 02:05:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE626E1F7;
	Thu,  8 Jul 2021 00:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295B06E1F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 00:05:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="206400440"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="206400440"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 17:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="498167724"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jul 2021 17:05:04 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 7 Jul 2021 17:05:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 7 Jul 2021 17:05:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 7 Jul 2021 17:05:02 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 7 Jul 2021 17:05:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lbj52vQdclQEHI1RnyI/y/lh4ShcCDXxHvpE9MPjK/cnZ7RTKdFlM12NkHj/bK92/qQw9VZE1h2WWzZv1PzGCAj/+l1qPtKHv5jPIG4FsbEpIc4GUQ1NJymJyrR6fI2mHjhs0GZnpRoxgndA8++TeffL3jBMZUa/Xu9t2iWIajRwgwBuF40Tz7sGZ+ItogHvO+EYFwYG0soTWc3FivZ+UhU21/XnN2ouo9wBFf9eXiADQ7ftlBpWXR96LelYAaSLLOOpFsoFWequKseAd1JWjJR2/KhV0XXpnG/52bw3acUJ8YHS4MmVY7KkcsGknVCiuYCtl9peGqNBOROUk76x7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jpgK3mIIxjg5lOYzA2FYDsDKundjpa0RRNbJxLW9xIg=;
 b=VMwl4ZNAGuvrmBBUk6qHYbn75OqNxf1koMTE7zXhqwyKsrgMeAcBMn6LWa5Mydr8ub/9TZbWy97zIq5+1CkRA9XwfJRlVum6M/1q0oFcykjlv9mDrafbSQJ3SNq0I88c33p66ZFiIBK827tLXCEIu0tER9wGL/g4Geq9N7Agh5uwgDjj708IxRD6aNOk4hlBLyShG59sef14YHECi5hePzfwoUIEBivzt//1wc4QEzsStS7n7vjmq5X/GxXHs4p3ovwYFs7dcz2zBE/aCR+o/hnLgfZiE1T2pYMDj5z4xXE5ZtoRRabLquzw+Edeu+LnW4VMInylwJB08CM3qWnu7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jpgK3mIIxjg5lOYzA2FYDsDKundjpa0RRNbJxLW9xIg=;
 b=ZlenUpxtciPWDPQiN/+20GWtZuv2SdyqsNZTtuDlcoPOaSUfu1KfZ2/mkSiyhf2y4+7rotGwQqJ4pxRSqewd+6TlaNotCog/bOX6xay4lKAwtG2c5rNI2qCaWRd11qquXTKBI09WPT65Aosx2wFGH0GPaaFb6HvA+01/ao25Y7E=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR1101MB2237.namprd11.prod.outlook.com (2603:10b6:301:57::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.26; Thu, 8 Jul
 2021 00:04:18 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e9f3:b903:83f2:d244]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e9f3:b903:83f2:d244%2]) with mapi id 15.20.4308.020; Thu, 8 Jul 2021
 00:04:18 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Souza, Jose"
 <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
Thread-Index: AQHXbHh7DpG9qJHNiEuzACuu1945eqsrknmAgAilq4CABAiBgA==
Date: Thu, 8 Jul 2021 00:04:17 +0000
Message-ID: <de6f5407857bcea5e2be03182843f12ef1fce265.camel@intel.com>
References: <20210628235054.694581-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <f87ced2d9d378eeaba2be633dd9c5dd770ac9e63.camel@intel.com>
 <871r8d9hr2.fsf@intel.com>
In-Reply-To: <871r8d9hr2.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-1.fc32) 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c95f198-8d39-432f-3509-08d941a3ee28
x-ms-traffictypediagnostic: MWHPR1101MB2237:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2237B19F3859F83E00E93343C7199@MWHPR1101MB2237.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zgozAdCEHUKIUl7JuTrco74jZ+4WqBMCskZeI1AtveNIziPVeeiK9QApZyX2XSOiFt1ge1YmhHeHJ0FESaVpk+2u/Jo291l9XVkB2pTXr9WZL/xkfAz72uXDB47tfasB+L2JHjLCDd+z9QP3MWrjME1fBymKSaPU+mQ4r060pkhmOId3lfae5C5bwjYCFPjCTiuICuIZmNbRIrtFAs81EAkzdt1q1D6YaHghtoDxIIxBUEd7CxTUKKNrQ1sd53XUDl0An5uuL6GKIclJlABoB+yTs67/Ykr/YxyGGWn6mv2CwKxZDuAI6RIZM9iUXEKZBg3GF6gvYSox1wn8I3WnOflbfqqaqk29ymD/ed8xGFC+R6/lTcDZiBfK23Fh+vDOX/KYmUtwHwEOvlSS7EG2bRztpL5X+lO0uDJZKpOP/HrkwV8bE6rdVsleT8uEON/zsyBK1liP38+VvLjOTv8bT7kevpNe142wJ/tf88bwxZRCuEOsoWX9B6srwtJ733EPby3+8p8nraf8J0MbGmyfhZVWU9/gGN97O8ZT0pAiTokIE0cO+2BX+l3j0yEoIicgyr8kTEfTSzzk988pqWesCkbSJq1ZdwSdWwH0ZVuUQgWkGK1PVzFdr0WUsVqxE4AXYSiQV6vVx17oOsIzKlQsxA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(396003)(376002)(346002)(39860400002)(2616005)(122000001)(38100700002)(76116006)(6506007)(8676002)(6486002)(186003)(6512007)(8936002)(6636002)(478600001)(36756003)(966005)(316002)(66446008)(66556008)(71200400001)(64756008)(66946007)(5660300002)(86362001)(66476007)(2906002)(110136005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N29qb1JSaUREVFRtZG9FZVNTaVFWMEltYmh6NmFuVnhRWFBlMkJpUlpCZG5q?=
 =?utf-8?B?aEIrS2RjSmU4QjVHOGsxR2d1VEZFSDNUMnEvWC9FTk1EVUc0VGNpbnl3Y3lZ?=
 =?utf-8?B?NVRlMEVxL0x5eFBsZnJIR25PVllDRmhNQjNYT3pMTENZUkZTRkpJcVFCR3lW?=
 =?utf-8?B?eWNDOFFZNzhtcUNiQ1BkWVpiUWw0S0l2YTIrWm1Lam5OcGUvWE1ZSmJyK1VE?=
 =?utf-8?B?NjRnbU9KcUJtZ1NRZjJ0N055ZytlMWY1M29VZFZRU1luQUQzRUhKODBMUEJi?=
 =?utf-8?B?WWFXekd2NGlBaExTYnYwMnZVUjArL09xQzMwNjc0L1gzQUs1b0RTbHk3WDJq?=
 =?utf-8?B?SmJvTWJSRDlaaml5Vi9GNWdjWGFCNCtXall5dVB2a1VsVkJlem9DMzdhMk5G?=
 =?utf-8?B?anNZbUc0MmxzaEhBZ0dmcHR2NmhzczJnT2tiT3dlRWFLUi9iSEVYT05ZNXJm?=
 =?utf-8?B?SVl5aWxwam0wMmtTRDhrY09OTXc5T2R3MysyOEY5cU1MTFBPSTR2a1pUMG4x?=
 =?utf-8?B?aCtTMGNTamVkRVExL3RMdUpwbWVVcU1saTNjQ29RS21Wb1Z5cVZYRmJYQ3hM?=
 =?utf-8?B?MDQ5dHBVSEVqVjRUelB2ZVVKby9qSUZ5ekE5MGw5bFV2UnI4VWR0cGdYQTg2?=
 =?utf-8?B?Z29lcTBTb1JZU0l6QmNPOTFJK25XTHdMMStBTWl6YytidEZpTDFaOEo3emdv?=
 =?utf-8?B?Z2Vkd0pTZEs4SllJTENhSUlFbzk5bkNuQmkrNE9VNmN0T2tkSENhdGEzd0Nx?=
 =?utf-8?B?R0ljUXZwV1Jna1RtZUUzTU5HUmpZN051TGZ3aDF0UWlUUDNwVUF6NXRnSTNW?=
 =?utf-8?B?T0NxMS9HZ25XSjZ1TE9OT0h0dXpJZXVCWHlDYVJZdTR0UWlQQ1UvOGg3ZGda?=
 =?utf-8?B?aHN0N3hsVkEzay94a2pOcXViRk55K3RRcGUzVlE1UDlkZG92VE5GY1BNc3M4?=
 =?utf-8?B?RTltZDNFa1V2YkFyOGtIdmdmMmpoZXNPMSs1NGhINE01MzUzcWw2eVBIWHpH?=
 =?utf-8?B?dnN0dWNyMDRhSDJ1THU0TEFrYmxTd09ZQVF0cjR2RzNjUXZFN01waE5uM01w?=
 =?utf-8?B?ejR5dDFLdXRpV0drV0M1WFFlVVpEeTZHYnhlMitFWXRGMTFBRHZYSEQ5Qkg0?=
 =?utf-8?B?d1RWOVdQR09FREFtNDVjbEZ0OWQyZm55SVNKaWVUL2w4OTR2dkp6Y3pCdEg1?=
 =?utf-8?B?SGk3bUtvK3V4cGg4ZkU4RGUzNHVodW1ZbFovMlNvRVZkV0dQWVNmSkpxNDJj?=
 =?utf-8?B?b2JpbzlwSWhkaTRidzNXTVNZZ1FPWkpkb0NJNmlicXh2dzkrazZwQXJ3QVFH?=
 =?utf-8?B?UW9CbUxsc3hYZVlzUEd2WmtNak0ybkt1cGpjOVdKcFdyWjNJZ2ZDTXg2Tjk4?=
 =?utf-8?B?S0h5a3lCYTg4eDJ2ZFB2MElzWEc3Q28zY1hyaVVJR2EyWDJ2QjFvSUZwZzg3?=
 =?utf-8?B?ejk5d0ZUbTVtQXBIVGdaWUpnTW9nMzJVSGJnanZMakZOUERuM3lHQ2NNM2NV?=
 =?utf-8?B?dlpLYjNkWmV3SjU4b0xIV05iQm44VzV3Y0hjMmp6VzIzZFJJNEdOb2lWZU93?=
 =?utf-8?B?MjJISUM3U09KcTViTjJRY3ZwcjNVa0s1QVBzMU1WQmM1ZlVKWDB2bnJpRkk4?=
 =?utf-8?B?RzhmZjkwdXh3SVpyaUp0ZGVheGNzZFZRMzJQQS9pbHBoUFBiYTNiQ2pMRmxn?=
 =?utf-8?B?b1kwOWdpY1Y5QmR2cTQ1MDJ0QXJTbVpIaUtRd0dyV0x4WWJtWHp4UStsTE1L?=
 =?utf-8?B?eUFUYzFjaG9ZV1hqVzZXYWx6V1dkWTF1TkFCWkJ4N3hWaVptSjZzd1JLbk1E?=
 =?utf-8?Q?Tk6t4xRJpUx0iwzPN6MfOGYBfA7xb9vooG214=3D?=
Content-ID: <3F98A766A0944E4BB0C763DC7684F271@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c95f198-8d39-432f-3509-08d941a3ee28
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2021 00:04:17.9926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cmCfF1ZYVg8NZdSMWYs9OLmWpe9A7hchxWUFSj9BIPTndI+6QuWW62IJGiRt4Vghl9OMzoDXNSTGNtUWDTajDl82x+NykU0k5GAaOUnKNcfPha2MAN90Z/ZjqqVJagaH05yU9JN6p4Ptp8VFg+JiRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2237
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
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

On Mon, 2021-07-05 at 13:28 +0300, Jani Nikula wrote:
> On Tue, 29 Jun 2021, "Souza, Jose" <jose.souza@intel.com> wrote:
> > On Mon, 2021-06-28 at 16:50 -0700, Madhumitha Tolakanahalli Pradeep
> > wrote:
> > > PCH display HPD IRQ is not detected with default filter value.
> > > So, PP_CONTROL is manually reprogrammed.
> > > 
> > > Signed-off-by: Madhumitha Tolakanahalli Pradeep <
> > > madhumitha.tolakanahalli.pradeep@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_display_power.c   |  8 ++++++++
> > >  drivers/gpu/drm/i915/display/intel_hotplug.c     | 16
> > > ++++++++++++++++
> > >  2 files changed, 24 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index 285380079aab..e44323cc76f5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -6385,8 +6385,16 @@ static void
> > > intel_power_domains_verify_state(struct drm_i915_private *i915)
> > >  
> > >  void intel_display_power_suspend_late(struct drm_i915_private
> > > *i915)
> > >  {
> > > +    struct drm_i915_private *dev_priv = i915;
> > > +    u32 val;
> > >  	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
> > >  	    IS_BROXTON(i915)) {
> > > +		val = intel_de_read(dev_priv, PP_CONTROL(0));
> > > +		/* Wa_14013120569:tgl */
> > > +		if (IS_TIGERLAKE(i915)) {
> > > +			val &= ~PANEL_POWER_ON;
> > > +			intel_de_write(dev_priv, PP_CONTROL(0), val);
> > > +	}
> > 
> > Code style is all wrong, please fix it and run "dim checkpatch" to
> > validate it before sending patches.
> > Also PP_CONTROL(0) don't point to the same register that the
> > workaround is talking about, between generations register address
> > change that might be
> > the case for this one.
> 
> In general, I've put a bunch of effort into moving most PPS stuff and
> PP_CONTROL reg access into intel_pps.c, not least because you must
> hold
> appropriate locks and power domain references to poke at this. You
> can't
> just mess with it nilly willy. I don't want these abstractions
> bypassed.
> 
> BR,
> Jani.

Thank you for pointing that out, I will fix this in the next version.

- Madhumitha
> 
> > This satisfy the "before going into sleep to allow CS entry" but it
> > do not restore the workaround after waking up from suspend.
> > Also you could improve the code, you are reading the register even
> > for platforms that don't need the wa, also check intel_de_rmw() it
> > is better suited
> > to this case.
> > 
> > >  		bxt_enable_dc9(i915);
> > >  		/* Tweaked Wa_14010685332:icp,jsp,mcc */
> > >  		if (INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> > > INTEL_PCH_TYPE(i915) <= PCH_MCC)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > index 47c85ac97c87..8e3f84100daf 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > @@ -26,6 +26,7 @@
> > >  #include "i915_drv.h"
> > >  #include "intel_display_types.h"
> > >  #include "intel_hotplug.h"
> > > +#include "intel_de.h"
> > >  
> > >  /**
> > >   * DOC: Hotplug
> > > @@ -266,7 +267,9 @@ intel_encoder_hotplug(struct intel_encoder
> > > *encoder,
> > >  		      struct intel_connector *connector)
> > >  {
> > >  	struct drm_device *dev = connector->base.dev;
> > > +	struct drm_i915_private *dev_priv = to_i915(dev);
> > >  	enum drm_connector_status old_status;
> > > +	u32 val;
> > >  	u64 old_epoch_counter;
> > >  	bool ret = false;
> > >  
> > > @@ -288,6 +291,19 @@ intel_encoder_hotplug(struct intel_encoder
> > > *encoder,
> > >  			      drm_get_connector_status_name(connector-
> > > >base.status),
> > >  			      old_epoch_counter,
> > >  			      connector->base.epoch_counter);
> > > +
> > > +		/* Wa_14013120569:tgl */
> > > +		if (IS_TIGERLAKE(dev_priv)) {
> > > +			val = intel_de_read(dev_priv, PP_CONTROL(0));
> > > +			if (connector->base.status ==
> > > connector_status_connected) {
> > > +				val |= PANEL_POWER_ON;
> > > +				intel_de_write(dev_priv, PP_CONTROL(0),
> > > val);
> > > +			}
> > > +			else if (connector->base.status ==
> > > connector_status_disconnected) {
> > > +				val &= ~PANEL_POWER_ON;
> > > +				intel_de_write(dev_priv, PP_CONTROL(0),
> > > val);
> > > +			}
> > > +		}
> > 
> > Not sure if this is the best place but anyways it is missing handle
> > the case were tigerlake boots with the external display connected.
> > No hotplug will happen and workaround will never be enabled.
> > 
> > >  		return INTEL_HOTPLUG_CHANGED;
> > >  	}
> > >  	return INTEL_HOTPLUG_UNCHANGED;
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
