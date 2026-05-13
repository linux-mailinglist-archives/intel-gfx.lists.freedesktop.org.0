Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMSNCqEyBGqNFQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 10:13:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F36452F666
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 10:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3536A10E371;
	Wed, 13 May 2026 08:13:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L8dDyeVy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895C889B12;
 Wed, 13 May 2026 08:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778659996; x=1810195996;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CZZlQCdLPsYw1EHQqNRmc81s4SzcC2cWdBBGMsHq/+Q=;
 b=L8dDyeVyiVAOXzfGyZCwsd0/s96IoVDtitLtxswn/GMYdRa2xkV66BhL
 +5xke2Dxnf9w0lCohEMn9pREX/cZQ+9PMNC7/OymOLJEI/YJwO7XrU+rP
 w2hN/pE5b8oW7j6eBaMHLFMy2RcKgFe7eHk+YnPUT9nbLAIK5vxqm5+PJ
 bDGAepOrySityaj17US2Ob7aLt9X/7O0NXM/s7ZeqORBQA+2zB3MpLLzD
 5tHgdradOZoT68evjP9otj8wVE77cystj5lut4kgSrRkf9R6WNSstLLg4
 4md5Iy/jGD8X7JI0+86gyzst40qHpgtcAlL5hSga0hVkKM4FYeCvVtPD9 Q==;
X-CSE-ConnectionGUID: 1OHHgUTZTpWsVPiazIo/6g==
X-CSE-MsgGUID: CqcY2HdfSkutgtKitPkatg==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="97006739"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="97006739"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 01:13:16 -0700
X-CSE-ConnectionGUID: k26JBfctRJO3BWjpXjXY4Q==
X-CSE-MsgGUID: yoZnH39NRXWA5wkqpYbi/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="233551151"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 01:13:16 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 01:13:15 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 01:13:15 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 01:13:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZRpSqp1udCAP+e61fyt0UbTCifEQYlOwngkcSZjVgXpg0C/UeKmAhEhmYACCH8rtmrrfUCskQeXoneU1RS4M8/Vn2Pcl0g6neXEtNOSqLLa6dNGW45NVmXIbsmYDFuIjPc/4FzQgsq/GHj9+DFPX07mUTrojttsRk+m94kOOMUpeewDqcwQXjI5kk50p5PdfQGSXSUkXJFixVo7OuksEufuOj0RqbmPcoGmNbw/TIf1yKlS6d7BjoR8R3K6eIpxsyweuuH/nfpM75sI/b1ZHh2RjpX8Vl25kUV9NETr7zCbdRZyJiMjsQkeLXnn9TEhVnna/12+86LB/kljUZRHGbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d0fv0A+gCGLwKzoXReu83et9iz+BtD91efSoioftoec=;
 b=WlZZgacX5/pNoNH74EV/IB8iVe9eRT5A3nOoAZdryN2T2Wvl6y4YjAdUP6vb6chr5D3ABXdrz5ejWZdjuHBD1TKfTZE+vr0p0t5ZbMydr1xzedKd2XKvbkFAo8ybRAIlozY5LPhjqtkU/GZ47/EFSU24N8BFtA8Ac7U09L3HL30E484qYWk+2K69UwlDLM7Wo3hRQgeJ1rA+MMQ4GjoOInHi/kE7WwAXxpaXA2oFSgAjr1bks3Bq3NTak37VJVsFjeCg/vyciGbL/k3Tiick5fkP2aoRAlmqQMry23xQkcSV2zqF8lVbdAJTJBQkipsahYHDczX91gs6lJ1jaGW5Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA3PR11MB9303.namprd11.prod.outlook.com
 (2603:10b6:208:574::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Wed, 13 May
 2026 08:13:11 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 08:13:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH] drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in
 full-AUX VESA path
Thread-Topic: [PATCH] drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in
 full-AUX VESA path
Thread-Index: AQHc4q+0VWHHXQ82Z062sSmumuPO3LYLmu6A
Date: Wed, 13 May 2026 08:13:11 +0000
Message-ID: <DM3PPF208195D8D5EE3FB3F9DBBBADCFCC9E3062@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260513080819.849479-1-suraj.kandpal@intel.com>
In-Reply-To: <20260513080819.849479-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA3PR11MB9303:EE_
x-ms-office365-filtering-correlation-id: 5ef8abc2-91c6-4107-6a30-08deb0c7796c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|38070700021|11063799003|56012099003;
x-microsoft-antispam-message-info: PLJ54Ap5V/o2tALkVGNZkdsPDQKD0hVHOy0W/749nyU+Emcro1CrrYrF1QxQgGR70PqN4ScBw0rF3WI7e01aKvEYRugpL2IdQK6tPwhUaZ8/f/TR7Q9VfGH19ZaUdVnixdy7DQLxQ8CJjTUuNQmI56uzTYGkcIlI/K3NAa/bLaFU/XXf7DBSYfoT0rVcjYSN+WwLBHgJrHUrWx6Locow3zAiXUlp8xjAUmjms+CjlFPi7Cq2ec3HQ2Up8SYSNZ624f4GyeGCqqJ+cmPbnmrMEmN9JLHeGEGxOCn1WJZrxxfLZseiu+LougqcP8Q1z4HTTbGA7NhkqpsvttRch2FUOFCZAexotdxpy5qFY8HBbAXl0yj8wjBoKVEdOVBkPAn6rNN4fQjbKhRcrDMXrzJqHXxNSqUbi07K37WtmtjPqgCIJxZBdYp1ivexktqSXZw1gAMHtMJ2wYy7SA+GrAx1xzUQphlG2SuwvjbilX0bdF1zFWRj3XU8nqw8AS1hYP3BayyoFOpdnCvD33ZXTPQrpVRAniKaOONmeyjOzaB6PKeZHlx3sQTebcWuS1L9ldhH4Rg7sEYlZgs2KF5ZNMNFJtZyo+An69BqKxXv035Mmqn8of1uVOlQ/2zKEDZcKIlT56VVZ2PWCU3rnTrhBwhIZU2rFFgRQFTfQ1cap3MMuMi2mg7/bKeXylOdqaFHGseR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(38070700021)(11063799003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YIAHfLddOibCnJoc9eTzFC9L1wX6uBboaOBI9vyY2JxEK0ec2n0LupslRmhk?=
 =?us-ascii?Q?myTMfeIgRf5R4s5VOKcdrOreXNedM1hMGjd6XLcuDTdXTXSfUg1kvjecCZFF?=
 =?us-ascii?Q?6vCUxeihj9GXmNJsuoRW/+4UnBNPBRJy2GYYEq2rDmHq+Su9JiIbKMwt13Do?=
 =?us-ascii?Q?8OL7vqoojdu7q0Wi5TLLyC01Grcduede685w+rqeJ2qwdGioMCAKgNPbLblL?=
 =?us-ascii?Q?IfTf/Zw8PeeVDZ+eFjYTFgDZ44yApW9qfUywZn4ATCiYxCyW1YfF0J6AelQH?=
 =?us-ascii?Q?1e6WDt70eNypDOuXRdwiC/aun/lqHK5JtXT/HxepS+nD+81Q3kb6Q0bshHSI?=
 =?us-ascii?Q?y+/oy7xyjS6l+uFc933dNFOUjyIq/u8aRXfnBFFpZ/dlkc84vRHveO1lyuyu?=
 =?us-ascii?Q?ttbHWS4ZGbmurwUZIov01cAyTvjqtUIxeommOqVnUs80FDBdxinNLalY5yny?=
 =?us-ascii?Q?7kwNkIYYrQQbEYDW4BDcs4QidRimWv8PcYPrFVKKBSR2QdF6rC6CHAOA1lmM?=
 =?us-ascii?Q?aKJiwLe3dQ7765WcUJFcQiwoaRsVq8M/TpeB0FXIP5PBlQtLYuymCJvmFPF0?=
 =?us-ascii?Q?T0GWHb8PUrSg/ApMK1o1PEJF+mQiSULDcFT9xTpzz2bqgOvm4xxtei+SEsmg?=
 =?us-ascii?Q?8Bvjei+UQV8xk6XiLZHjZsugv9Tl3SRyUs3ni0cE/wUD98M0grXNA8xv/yXF?=
 =?us-ascii?Q?4kQ/qdlsM89FbsYuVaRW1qPm9meGX2dN8dSX/u9xx5bQx+ROg3uf5m2yCMyr?=
 =?us-ascii?Q?3EtbZoq4elyYFM/B57caOrsz9UukVS18QHRfzTRPbY0EJWTV5bXuu+4vVGvb?=
 =?us-ascii?Q?F6ia6zpVBAdou1qcVs5TR1uNlRwIe1KdgRirLOlTQSojgSdCFWhCDt9ts1/8?=
 =?us-ascii?Q?FaAbvkB2ZEafTMcMJnpb44cwuPEk4bJwquUtrPPUPmknPf9vCVMW8dy40fBy?=
 =?us-ascii?Q?woX+QEcsmdqp4SWt/RARm3dVzISoh3txI1IueFxqwWtH5OA4uVDVRDaIUnc6?=
 =?us-ascii?Q?ISJUrO0DuGRz/3FJYEOpUc+H9Y9EjyHhcXdeT/iA0Ti1/KJ0lRPUHRgkTOML?=
 =?us-ascii?Q?IanGEJkFqV8NG7anQCDed7JlaLQg7M84ON/QEaDRHmWsWBTrCifLA7LYS8Ds?=
 =?us-ascii?Q?ACoYDLxLsAlBpBfmIPcnkGNYiRMze1d8Vdy+RPIMt0QCqK0QkxQ6hRGSrpns?=
 =?us-ascii?Q?+a8DtsSLkY0QhbAaHTZCjClcgsLJ38L1i1WKK9F2TuKUdWvylK8GI94jdzdp?=
 =?us-ascii?Q?WB86WnalOv4Agy2oK5Cqzsw0qJ1nfF5Q+fI9oodz009DWcfCyemLBhmAjMjf?=
 =?us-ascii?Q?qo5HCjOuv2K9U3G16DcgjoZFnVDqV8mCweJW85RS9xpDs2A9msTkUMuLh5uS?=
 =?us-ascii?Q?+3UwlJKpfmYgNPDQj+nkVhae5WUs5P9LQMZW1C8odEgcNKbhlc7YWCFgiNSs?=
 =?us-ascii?Q?mcKpW0q5VGZF9HsNn3Ok7DXP2MIiAch7VaFdLIFIQPhXQ80Hzlita4SN4Uld?=
 =?us-ascii?Q?0bJrywzw8OIXaESLc0+hgeqLTnhJNwzlcPzj4l6CSRpLcluMjYUWMec8Ec4A?=
 =?us-ascii?Q?s1kNv4FW93bj5ODVdIur3k6853PQbOkvRfZl3PLxhr8t4wbR9w/jQLlUKhDr?=
 =?us-ascii?Q?RL8k9lMQpcbYUryOyIHbdHTDF7QXjAOwdjmVQETiIdlaWmKwjmD9UCPGcS67?=
 =?us-ascii?Q?A0a+EzEgM/tSQUbl8gnXThYFYLokLVM8SttzTrRetsK9tWIIl+8KPRGcx1Wj?=
 =?us-ascii?Q?4xCX7yOxEg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jMWbq5kSLWIRI+aiBY9fluJufMVxXmoIRougIIlKG6Y1YGRwfpLMCj0Qq+XrP76lmiwdsXzs3uKQ5vCwwM9RIw6/nuZ4J2rR+B5MfKkVrBiYlvSoed+N5qgvEMK2EheyXJMYKwdzTFRwgpERjdPeiU9z1VZWEb9wXZZSci2/la9q50jbEsTr/KfnaYIUHlSvaRB5hlXSrEmdJUjTkWYZ/+InvtvHydqRinU6D+yN/wfJ7WOaeWj1SNn8YGIbKutxVRsG3sqSW2EWOFv0f5OT6SYoyYa0A0jRXrNex7sKSAQ3K1sPnsGo4SE/OvzBMTUofETCVumotcmgS9Nj9GTdWA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ef8abc2-91c6-4107-6a30-08deb0c7796c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 08:13:11.5139 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0bdPKoZjHTAiH9678662+MubRRjmncunJSD2M0bfS42g28Fhagj3ki9S7gjATRJBj5nMPwcjz//MMQBC1UQidQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9303
X-OriginatorOrg: intel.com
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
X-Rspamd-Queue-Id: 5F36452F666
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Forgot to mention the closes tag will update in next revision along with an=
y comments if any

> Subject: [PATCH] drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in ful=
l-
> AUX VESA path
>=20
> In full-AUX VESA mode (aux_enable && aux_set) the driver never touches th=
e
> native PCH PWM. If BIOS left PWM CTL register enabled, the PCH PWM keeps
> system alive during s2idle and blocks S0ix.
> Always run pwm_funcs->setup() so pwm_enabled reflects real HW state, and
> on first enable in full-AUX mode call pwm_funcs->disable() once to clear =
the
> stale bit. Runtime behaviour is otherwise unchanged.
>=20

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16043

Regards,
Suraj Kandpal

> Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 32 +++++++++++++------
>  1 file changed, 23 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index a8d56ebf06a2..c828c568fb8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -496,6 +496,17 @@ intel_dp_aux_vesa_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  	struct intel_panel *panel =3D &connector->panel;
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
>=20
> +	/*
> +	 * In full AUX VESA mode the native PWM is never driven by us. If
> BIOS
> +	 * left it enabled, the PCH PWM keeps the system alive and blocks
> +	 * S0ix. Sanitize it once via pwm_funcs->disable.
> +	 */
> +	if (panel->backlight.edp.vesa.info.aux_enable &&
> +	    panel->backlight.edp.vesa.info.aux_set &&
> +	    panel->backlight.pwm_enabled)
> +		panel->backlight.pwm_funcs->disable(conn_state,
> +
> intel_backlight_invert_pwm_level(connector, 0));
> +
>  	if (!(panel->backlight.edp.vesa.info.aux_enable ||
>  	      panel->backlight.edp.vesa.info.luminance_set)) {
>  		u32 pwm_level;
> @@ -558,15 +569,18 @@ static int
> intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>  				    panel-
> >backlight.edp.vesa.info.luminance_set),
>  		    backlight_unit_str(panel));
>=20
> -	if (!panel->backlight.edp.vesa.info.aux_set ||
> -	    !panel->backlight.edp.vesa.info.aux_enable) {
> -		ret =3D panel->backlight.pwm_funcs->setup(connector, pipe);
> -		if (ret < 0) {
> -			drm_err(display->drm,
> -				"[CONNECTOR:%d:%s] Failed to setup PWM
> backlight controls for eDP backlight: %d\n",
> -				connector->base.base.id, connector-
> >base.name, ret);
> -			return ret;
> -		}
> +	/*
> +	 * Always probe the native PWM HW state so panel-
> >backlight.pwm_enabled
> +	 * reflects what BIOS left behind. Required for the full-AUX VESA path
> +	 * to detect and sanitize a BIOS-enabled PCH PWM that would
> otherwise
> +	 * block S0ix.
> +	 */
> +	ret =3D panel->backlight.pwm_funcs->setup(connector, pipe);
> +	if (ret < 0) {
> +		drm_err(display->drm,
> +			"[CONNECTOR:%d:%s] Failed to setup PWM backlight
> controls for eDP backlight: %d\n",
> +			connector->base.base.id, connector->base.name,
> ret);
> +		return ret;
>  	}
>=20
>  	if (panel->backlight.edp.vesa.info.luminance_set) {
> --
> 2.34.1

