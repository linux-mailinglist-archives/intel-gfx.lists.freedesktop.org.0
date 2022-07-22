Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0AD57DA3D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jul 2022 08:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A70ED112FA2;
	Fri, 22 Jul 2022 06:26:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AA2112A71C
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jul 2022 06:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658471159; x=1690007159;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=8uxIiEP5t1PjqEcuxPwVb7xf1Q8UhQKu6cv2iopyR/w=;
 b=T3aCWoot5BLNZUX8JSxuA8+dko06n/wc12fNjAK0S0w0nnV0d6UBh7Ko
 LyrKZY+m2j8R6CmRbF5yAbkuq8YIwQBOHd5uue9wI+VbEugX6XdtRNBN/
 Dj4OM7Z1Fe7yuyO4LmOCQAO+pMN9+DJLyE1phdSV7Avd/WIiOex8pQzqv
 RsPG8tg4oNAo6flqPdUQNxmRq7Kca0yQiwO0eDkDOyc6buGtqLMSt9anc
 NZmY8g46pgYAPzOESM4h+SWO4/HJ7nw0I3T+ehp2ZKoa1UTX2fMu2DhKx
 vDDhNvd1C8UN5yaYTAxg+PoTmpIzJwX6YzijQuFT991uHBvYxtkEZU4/4 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="274101981"
X-IronPort-AV: E=Sophos;i="5.93,184,1654585200"; d="scan'208";a="274101981"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 23:25:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,184,1654585200"; d="scan'208";a="626440903"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 21 Jul 2022 23:25:58 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 23:25:58 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 23:25:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 23:25:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 23:25:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/bpu46uPO/tVjM/YcDcyB5w+sG8UEf+0tknHKy4p+a3KnxVknNZwhpSK1tS7F9snE3hNDriPk+DSt86kcYLD+lzEGpSHPznkh55Rr6hLaG2qMS/yDzWyHkpKutEd7a/3p6Qbz583Ki9D31s5iyoEDqeXgvIkQL6mc2j8KOINpMRJwVerXFc/GXiIzURJSv7U4WK6sl1lYfGQJvqsDkzFkLARfEtQdwn2ND6OBnH96McIfqqfrpSTNHW+MFbYogCpvUWKe7mS58i/hFih46lstHkrtBcEyjGakokAM/vcfKC97RxrSluJiCIzlvRw9Tq/qxCbrGFFEJ12cARkHyS7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3PnsHoGT+WYjZJ8hQ/QIT8mT/1xKuQ4qcFscgGeI6Mc=;
 b=TPF7EpAjNDaMPUOh+vz5wJ8kgbmgXlcMBXG2GD1bA1o0V5JWNJSuXkGt1whgEOfV42rJf0/S+C+dW0JR/dA/GmKwhCEjGc/fJ2FzkMjmuaI4gy+JjFa5KVVTrvYkrLF+HKKidLILJYAiVbkSw86X71jZt6kQab0piuJs3Xr0xFE0wzlUA6bpXgkSEZi3ianwIOFS6cSBP+h0TaNqTTUip+eRJoOKaPClbFb9hkSkZ0ZyJbDIMIqwB/Ans75khCCHpXiLf2Rj6T5KXYF1KR7IUe0Cfz7SUCQSW0gMGLlNgiD7BmoIf5jd/lyH2oELdJfPjHNllxfW78zEZgQop8SI5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by CY4PR11MB1781.namprd11.prod.outlook.com (2603:10b6:903:124::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.19; Fri, 22 Jul
 2022 06:25:56 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::6d55:a3b5:8edf:8488]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::6d55:a3b5:8edf:8488%6]) with mapi id 15.20.5438.023; Fri, 22 Jul 2022
 06:25:56 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: clear plane color ctl setting when turn full
 plane off
Thread-Index: AQHYlprUuZ/Z55ETE0icBvU020/9Wa2J2SwAgAAcPDA=
Date: Fri, 22 Jul 2022 06:25:56 +0000
Message-ID: <BYAPR11MB2710EFF4D05F0451E0EAEF41A3909@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20220713092702.28946-1-shawn.c.lee@intel.com>
 <DM4PR11MB6360363D9B443AAAD7A365C9F4909@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360363D9B443AAAD7A365C9F4909@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe4c5182-7d0d-4390-9061-08da6bab092a
x-ms-traffictypediagnostic: CY4PR11MB1781:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hlxm5mx1CGQHX9VZAM9ourdji8EQmXm0bHmckxpw7mCf1WLiCDN+UHiOvnkFC9km4KpzzTjYvZb8f84LglziyPLpFyI1XrngwUtim6hL4UiNu6TX9A0/cEhDPFqba0ccLMr4uj8qpifp8hKCtZUAcKaN2jrGIz5yTKffsNQ8M2hqSf2donL037oIZprqrWhWG+82NWQlzYI9KYmCrPk0D60EI1AzcrtHJ8OAWoi/m2EHTnF6g0UlVO+DL8kSY9+5DgwiJSY353uqz1RZbWPk9syfd0YnyJp720hCl7MKJHZT8gcShlGQASiuCMrC4AXabQrd/GLI7t/KPQek/8m/V6RlOvv8CujwU0hKYRyMXiPsxYQ0F6jPtG+/C+Oaeu87W6OxCGhZQesooUkb/T20J3gVbXN8HfftHsLMvzWPv3VI4UdI48eyhoTOGY8lok01o0nPKRqYZ5+x2+PGecRrHxvWtoldSRRof5hPm+ks7ceR3l7inGzIwZwu+l7pruSGrFhcaSuz4Ul/vfmq7077UzTmsTsgBGQkjD/03k8Qn7HnwwWjKQLl8K8vmDewovIu0nawyf51ha+gGMNJFTzZZGxLBPiuK/cR+tWk0lGRcHyfSoXFVSzrpEBxYwa52R7sX+zwX26RURAH6FDO4gb6m0jK2DhLqKbl6LNXXiCt/WxgCneCatE5fvyJX1cUoz4lVYadLeaGP1v8cLM0C/9uaJSOF9GuWZ5CvpE0Lvt6bYZCsy9NL/HP+cX2eupCMVRLOE21B+t3gs9f4vwWLf2T0ar/5jRyDKxTyT9RGK7QUDkyf0q0fsNX+PJX6icDimTU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(366004)(346002)(39860400002)(396003)(83380400001)(38100700002)(66574015)(86362001)(110136005)(66946007)(66556008)(316002)(76116006)(66476007)(186003)(71200400001)(4326008)(66446008)(54906003)(64756008)(8676002)(8936002)(5660300002)(8796002)(478600001)(52536014)(55236004)(53546011)(6506007)(7696005)(26005)(9686003)(82960400001)(55016003)(38070700005)(33656002)(41300700001)(2906002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?B+TSnlzcjTtdmvLg0lAYE4p5xV6dAubxIbjS++dPE8E14vvQtCb6UknniL?=
 =?iso-8859-1?Q?7NDLby/v765raOnY9VpYLdaeUslSH9kDIyKsweDwveYRPEFVUh+JrE5I1a?=
 =?iso-8859-1?Q?9zPzICapi7pJujy9fldelzXdntp9qrsCmOeVWmM4E2u10NZEsLAJgqEslO?=
 =?iso-8859-1?Q?3PDV60xT8IO1xrXFwRMwZdHilBdEi84RBnziVdwFu4EE6ZN777xyE4QhfZ?=
 =?iso-8859-1?Q?JB2laKVpJFM03ShbU/zQ+FYDjz/055gLLlN7KPXvi4yJlOYvzI6T+VdXgr?=
 =?iso-8859-1?Q?NaEUm0GJuF4n8lWb9sEqzCkZBWADCyqEHSP6iSo2WEz+mBd68UffUc44KS?=
 =?iso-8859-1?Q?SS5fGZ3KwM7x4RbsesMiFjydedqoJOT3/+qge65SF1Ee9ImioWFDuKwzAc?=
 =?iso-8859-1?Q?ElVazMM2Ey93p55rqPnmLtxOV/2cHgz3BKgg4p+F+j1fTHMdn38EnlT1Wo?=
 =?iso-8859-1?Q?mQqMCub3YKcZk3XBlv8mOUiF9dWP7MV1P7L1fPqSA4blMldZLlJe42/b1e?=
 =?iso-8859-1?Q?CqdLrlC48PiFiS7jrITyMmQ+igvcBFS8TYnhC9UvaMjSrNb/pYrGDnZtHH?=
 =?iso-8859-1?Q?wKrWS0xgwX3bRS+dSQOn7o4lUSi5X4vUwcZJEOlkJKnhJ5P/dgIrbL45bR?=
 =?iso-8859-1?Q?rMMrMqdo6SIW8QLht40MFmzQNArPccTIBKaFLy7PYk9iG++Uapce38Vh4n?=
 =?iso-8859-1?Q?eh/HHPNnOhySKlGd83UaFXfGphXqc0saD1xdMVtfjHx97joaYgBdzhHUmm?=
 =?iso-8859-1?Q?vsYz8AJOavSqPecgC8UoDLVKQD0ZzUms0k2KFGJuLiBN6tfiJX8E18c8YT?=
 =?iso-8859-1?Q?WXdBHvu121gJVSjFEOxFCtUQrC0doHOc1SWkV/ILmxwDgrFPXoEiY6ru9p?=
 =?iso-8859-1?Q?EhTSuoW2ynwWCHcZlApYQ1hqh5Hu60wdzoOy/10gRy6cgqRzg9g6+VzkOP?=
 =?iso-8859-1?Q?1ap1XzeJWnWIDDSsR+eVNTcX72DjHsz2Qha4KxNw9FBVNA9OT2aGlQjJ8Z?=
 =?iso-8859-1?Q?1POl2J/txdjimOd8rKQkTJG5az2HSWDKKk062jSTwm458LMV6lK+N0UHxC?=
 =?iso-8859-1?Q?XDGTStSFRMmSiAhjHAsJ2cCeDODTtHQk+zoWO234+ygWEorGs71S7Nb5Qb?=
 =?iso-8859-1?Q?CHZw566W/aCMxMAJa9Fad24oL9vbUIUp1JnN6foy81IJyidPNExgcOTMST?=
 =?iso-8859-1?Q?2U/6EqTNmgnzhqOF+nty8fGFCiO9KxiCBUBRIvKaGbQoAiUg9tleWy4mLp?=
 =?iso-8859-1?Q?YzXWemi8mE7RFYiCwyC/BRDi4T0mt4WYcUeUuCIBuaqBtgSj7KafIvsXyf?=
 =?iso-8859-1?Q?trwQv8nMD3K6LucGs0/m9FVF7b5gQfx1N8K5aPefG7IDeaHetuGITqRVGH?=
 =?iso-8859-1?Q?R5vR7A4wb1pL2cO5LClqS2+KP3g6j522Vq04+4k8y1xP228cVFGetkN907?=
 =?iso-8859-1?Q?0kOg6MtK44fFfOsbg43BhOOryI532/MZcRKMpBjgMSB8WOEEok0xnPG42o?=
 =?iso-8859-1?Q?os6dsVW7xzUOJbUJjzYKgeesPd4KQqt5HtuWXxOlQ4qH/PmhlNvFZ+7Gk5?=
 =?iso-8859-1?Q?OeaHlxkiR4v7xldYMnGDninRD/aWJCeaU37cL8GhYVN6Rf6j/MUBp/boRz?=
 =?iso-8859-1?Q?XU0b2Iga8huBE2SgBq06ljGR0v+67CAGde?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe4c5182-7d0d-4390-9061-08da6bab092a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2022 06:25:56.3241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pj38lfJ1I0J3DQe+hYjzq0YyuW+M3abG8QNGwP+nOFIZ7GKfzr/AUmvEJrq0bCP5/6iJgfYm2CWYxU3BFGZZuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1781
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: clear plane color ctl setting
 when turn full plane off
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
Reply-To: "20220713092702.28946-1-shawn.c.lee@intel.com"
 <20220713092702.28946-1-shawn.c.lee@intel.com>
Cc: "Tseng, William" <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, July 22, 2022, 4:26 a.m, Uma Shankar <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Lee, Shawn C <shawn.c.lee@intel.com>
>> Sent: Wednesday, July 13, 2022 2:57 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Jani Nikula=20
>> <jani.nikula@linux.intel.com>; Ville Syrj=E4l=E4=20
>> <ville.syrjala@linux.intel.com>; Shankar, Uma <uma.shankar@intel.com>;=20
>> Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Tseng, William=20
>> <william.tseng@intel.com>
>> Subject: [PATCH] drm/i915: clear plane color ctl setting when turn=20
>> full plane off
>
>We can append "display" to drm/i915

Thanks for comment! I will modify the title and update patch later.

>
>> Customer report abnormal display output while switch eDP off sometimes.
>> In current display disable flow, plane will be off at first. Then turn=20
>> eDP off and disable HW pipe line. We found the abnormal pixel comes=20
>> after turn plane off. Clear plane color ctl register when driver disable=
 plane can solve this symptom.
>
>Change Looks Good to me.
>Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index caa03324a733..90977cfb7ebb 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -620,6 +620,8 @@ skl_plane_disable_arm(struct intel_plane *plane,
>>=20
>>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
>> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>> +		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), 0);
>>  }
>>=20
>>  static void
>> @@ -638,6 +640,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
>>  	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
>>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
>> +	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), 0);
>>  }
>>=20
>>  static bool
>> --
>> 2.17.1

