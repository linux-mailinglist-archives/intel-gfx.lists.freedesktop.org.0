Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD38C8B8E4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 20:20:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCFFB10E69C;
	Wed, 26 Nov 2025 19:20:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I9uDTGLa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F0010E113;
 Wed, 26 Nov 2025 19:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764184848; x=1795720848;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IcrvOibpnehOTMuADsKYIPped8qTosvcIXRgQZFYdg8=;
 b=I9uDTGLafO5FO0n3df5z/je4LWw1ZKqHgycEuMzR64KwBWN2kwADTO7N
 qQXybzJMXbrXqPxrvbSkKjPrU59ObVTUK5cXfa5xqzSrtWxjBlxMvWPDG
 bH+GA7Iz/wIJLu/hVcABuTxeL0s4ZDei8hiMxOjjv8tUDZBWBDfVgymFv
 QYHvRuAzczHm72IQFo02eYXlPv2afFKi1uM9fTL9zaO6RyafeGCb0+piU
 95I9CS2IkqvcknuIM4Vy/Q1dVf+DSXxVt91OxnVs5zom32Q68pJRaVyov
 2rFKnPf148z7uvS0PMLna7ThX/lGoW2SEHkH7oevdyv/lUW3mz5lBB86+ Q==;
X-CSE-ConnectionGUID: limntbnUR0+ProLZw6wi2A==
X-CSE-MsgGUID: TxyXeevyRiKZdwB/OfCFDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="68824832"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="68824832"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 11:19:57 -0800
X-CSE-ConnectionGUID: 6HxKoiAAS8OaMQxKAdzIhg==
X-CSE-MsgGUID: 5Xu/1XdnT2eQM856JBPd1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="192843662"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 11:19:51 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 11:19:50 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 11:19:50 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 11:19:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eF0O+biiaoUBEuKZ+13MLOvDXBIsOF+fu2KPGD0TKah1/pAmjAdLohOM60jXXzLHDtg2ky8L5pDFdeODCRaj5giMXSUXQCrMVno4vfnF1LJTvsnFyCTONkaz/778TUStu0ucrTFA7Al4yHr6WYU9NIC4QLUtcFEWDyGbGLyyG6hDKG/2Gvg+EB5rgwJkiZ1EBwrQBckl8RBjh5lpn010vW5NFMSRZJvgvJQCUfkj4p7fjJpKCH7CFyEuDRVa395KCUi7Kh+jHpdUVd5u/khTKN1ltV6tMuOrL0TdC1iJCpkjb/iYwIh2J1hTebzXoFLQPwDEZDCkf2kv1QjlCpUb3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=STTkpdEOzB8tCCeYp5kr6c4nYBFy2H0GAGci6HsX03M=;
 b=D+MW68EZSq/mZjE92nBwn1mqcwoCvabMzUDCPxNYnNDldcHajHjX6A7rXd+HryfxxFE/nDGLeKvJmuLvW+QLCENJ+nqLQWmpbGprg44yp/GaBuxOIKG6RyDDQNGAAP2D4C77PJ3RaPVwMxPlvrDUeMxDQ3LaZYh2DU8/TjuYGkTGT0f4i33k3oiqvCaiTVJh/ZvkFJDGFDaChYOVT2uHIcv3buA0aXYJ7DWsHCUY8Lku0AKlX1li2pBfKHVMUFVdiLh9rfXljRR/LWSVLov9Kjt+s1u0/aQMO/O2CHTDHKqmwzJyQzURNk2h3Jkj+4QmK5XN/yQ5gTgGPjPgPu3q2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA3PR11MB9302.namprd11.prod.outlook.com (2603:10b6:208:579::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.12; Wed, 26 Nov 2025 19:19:47 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 19:19:47 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, =?iso-8859-1?Q?Ville_Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
CC: "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>, "Mario
 Kleiner" <mario.kleiner.de@gmail.com>, Mike Galbraith
 <umgwanakikbuti@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>, Clark Williams
 <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: RE: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
Thread-Topic: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
Thread-Index: AQHcTWY1yWfvSF63uUSMAhwOOG89ErUFd4mg
Date: Wed, 26 Nov 2025 19:19:47 +0000
Message-ID: <DM4PR11MB63609A43C9B11091A5FB41EFF4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-3-dev@lankhorst.se>
In-Reply-To: <20251104083634.670753-3-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA3PR11MB9302:EE_
x-ms-office365-filtering-correlation-id: cfa6b5f9-1965-476f-b0fe-08de2d20c34b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?dOEUNdLkI2artj7KUeF3VXEhNMArqd2KBUj7XkJlIzQG+WSao/8EGVEvfT?=
 =?iso-8859-1?Q?zj2TSfLmI3UOFx6rMyK01wddrxjvw4kQQ6TeyXHuK31ptPCh1lgiwZQxqB?=
 =?iso-8859-1?Q?LtLO6jzKRn58ZPNXYHVjVApK3A3T+5KinWY6X1Qtm3auc8S6V/zDqc5pTa?=
 =?iso-8859-1?Q?rxTziFIe1YS8CXWvSE31KU4w62/L6A3Vf8CPUDaFyGSaumzRqAiPHQxob0?=
 =?iso-8859-1?Q?s3r7XaxHWYM/4OcHUN4y9Ri2qHOHRSV1JAJqun1B6gmRoN3JnPbr5iHeKB?=
 =?iso-8859-1?Q?cvKAiLAvW1GxmdXaQ84xxgkhs6WbF0JAHWS9lXIcSKYKDqLRGTaYFi8Vh3?=
 =?iso-8859-1?Q?tPhSXSqAEc/xkYFhF/S2A88DNEse4Po0nWD7bmWxGHZFvoS7wVxrYMB5uu?=
 =?iso-8859-1?Q?PR8h9+N5OQyZithnMqTU1GCxMLaRNZ0a1y2j70beabhlUajwQfi6LyznEs?=
 =?iso-8859-1?Q?decXCQ3XjPya4MVkSgXwM0OtaEGPC8d4XsJqavtcoLrmtvfK2pe2t564zA?=
 =?iso-8859-1?Q?bC2DPH5kNZt/dl1fEjHAcBVveFZLSa0DKo1b03Mg5h+jvQKNB/EPWoDqtm?=
 =?iso-8859-1?Q?+VSz9uGu87172QtNnXG8p59anDETVxw/qopQV4Z1nZrweu3DkH4uil784G?=
 =?iso-8859-1?Q?vWcb6XJWpWAwsXy/0UWjBaBxQqBIF5NtdzZJC/gN7BXQfRoXyD8SKxc31K?=
 =?iso-8859-1?Q?VHecqaDUCsXrzPtKys63yb+x40LPgmYv/17lRv2nL8VkWhn79bpHu6gpgh?=
 =?iso-8859-1?Q?KLvycpkvvBRCKOOPblJQeEyI64seZPPSNgdiABOx7tKwxjbHRVv0uTc+Rv?=
 =?iso-8859-1?Q?j1hOUecvDu9pvkgmY3+NOu188FKfmL7EWh6XkneqXUxNbduUXXvVpVRnNR?=
 =?iso-8859-1?Q?mbp8bD/PUaIZ8egj1v1V4ITYrbfTCLWpiBchcVUsGToFfmJUs4Qc+pK6FU?=
 =?iso-8859-1?Q?6Y6sXVlAdq5Bu+OxWVAUMSgqZZhaPf+a01GcnWN3qQafL4UxFuTlToXAAq?=
 =?iso-8859-1?Q?GwK5uwqDQYc47CUjskQv2sOsHd7t4cvB45/0o4ygUkkPFYAIjBmGuDIiqg?=
 =?iso-8859-1?Q?BcQyheFN8VqfKqFLQwKoHfIGkYTE/KQydpPu0pKJ/H+C83Lf123HXeFU6v?=
 =?iso-8859-1?Q?U8ufRuaeBMDLkpc09m0QBRH62o9QCAkrIsEadjtQWmGlNV5R4IgYLOrvBI?=
 =?iso-8859-1?Q?yyzB9yDtfeORYndZKi8Nz0tnQZXGk4yIPFdlG08ZZ+FpbhwFsGhneJkic0?=
 =?iso-8859-1?Q?YkX6gj5hPJvJ0W2qA3JdVDIHvKs1c/5DdpuZJwBFOn6flxaeVvuLtFlJMD?=
 =?iso-8859-1?Q?dTXH77tf+ubAZfbg4jfDKEMtU1eAa9JgKeTcedWW0yCdzxi4QcEFNYzhIy?=
 =?iso-8859-1?Q?lhPnWYe8HZhDgwl0kUFRwVB4Uoj7BpgIyyDZoT96VqtcgKy6mdh/d1o8qo?=
 =?iso-8859-1?Q?/woqx94J2v9gWejK0xEUeAm87EIY0zJs522jscogH2lVJP7IrRJ2izk/0J?=
 =?iso-8859-1?Q?SeDPlLhftxhOn/c+t0x27H7443WtoWIhyqzA6oHKOK0GlEi3z44CK8GAgB?=
 =?iso-8859-1?Q?6H/Rg3e082yHRm9FUJdPUa/p7ZpV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?yuJNupX9iyLHxbknTLCebjJ4ig31UwQz4By6hmr+Gc3Kc/Witsl2bXm/h9?=
 =?iso-8859-1?Q?GSYZYY5KGq6f6MdNwFAxvr+K2Y7/vEvUjtIeir9XQjTErVVDpPyHmEPP1E?=
 =?iso-8859-1?Q?oPHF8ahv54HVq2/C/5YCdOcAiqEjt8kYEVBwHB6VkQ3J6NcEjHAzStzjBe?=
 =?iso-8859-1?Q?Mz5qLMPaLqUWXIDF72msL6JoCP+yBil+i7cvd/haiq+tL8a7LJP7jog+hf?=
 =?iso-8859-1?Q?gz2upl8fp4dm33iONFcuPW+GikLWZVx9s5YqgrlGFmUy56toMWpOSN2qj/?=
 =?iso-8859-1?Q?17qz40mxv1pxSPu+3kWZhVfCoNE4v0YDlonDqDH8fiAA1EdYB8e2+ls4p1?=
 =?iso-8859-1?Q?uUjGKwpqAEkZFJW/japO499yxJhWzHjRClCZU1+CC8ZL+NnrwqXBDWLA1B?=
 =?iso-8859-1?Q?DY+r9NOi+XjR/QnJBt2pjLRnmSwdgbTodqiEfikyb+qrKP9N8vxqtXyNLZ?=
 =?iso-8859-1?Q?l+HwcCs91R/03tuU5nG6YwptV8UxNYiZe3OKkJyxhNDHu1hIYDMnw2ACgx?=
 =?iso-8859-1?Q?D5pJwFLTPwsYjPAhalUnI4oz1YrbTCnMQtxKX+wh4dxaz4/dkVScCAaNYu?=
 =?iso-8859-1?Q?f5zau0uRhzWQYqKDFbi+NORHZhIjvwZjLPo0yKPmDCBqHzuXe0XvQC1jdn?=
 =?iso-8859-1?Q?Q2xZH0u/uidHV4/2ZhlQ6f9/mAWp2t6XS8BhoMeNeGnulMDt6xKTsJHjA0?=
 =?iso-8859-1?Q?Hs0YurmnL5FMN3kE9yNsEOU4MU0z3wLym4O92sApquXOUW+nUnWAAusJM+?=
 =?iso-8859-1?Q?YBBUIOmUnxUVclNE0WSXHzzY3ZwXcWGng3EqTCT606Gp2GDS7FInYKmzOg?=
 =?iso-8859-1?Q?C46CaqOAnASfjjCxYeaJAXKUsg+O+LsClomQuFzZwU5sOy2e9VaITStVmY?=
 =?iso-8859-1?Q?1/vKAR8AIWc8SyzOPQrHPvPIZpGoR+ysy3RTldpGQmzAvA+Dn/53qN50Nf?=
 =?iso-8859-1?Q?V47p3xtKiNi3Hv0NcDREy9mv7ZDkWy9pTpGzN8SmRr5qD+n7yXJyWw9EPA?=
 =?iso-8859-1?Q?EPlvUjm2nU1ehw7YvSkr9tuUrZRkZns9VjwupRXl3HEnHnwV62sv3l+uyp?=
 =?iso-8859-1?Q?QaFMRxJzdVOekDTM6Ak3uQQJqIvCOHAstyJpL+BMwaVr4h30pEAuhzj9LV?=
 =?iso-8859-1?Q?VfeBZqzkLCTNT04CL0uU31Lh/N+4GjvQWEE15nyCBvx84bkDCaWX8pGOBP?=
 =?iso-8859-1?Q?cXB157d11BTuUnTbtO59FCDu8UgmbpZJl5XWREvJjv7K08W0U+RIGOhEC1?=
 =?iso-8859-1?Q?/A74B5kblcxSBsfwDnPnssdND9MYuPud2pnVwKPH1u77azkYcTBvGYa0kj?=
 =?iso-8859-1?Q?+6I92LIvep9SDo5ka86SW7vPztc+RuCl7Q+sjqdLmyXktidS8fg6Nefau2?=
 =?iso-8859-1?Q?+lYPJgdzi1mfBJgqM5Dcufi69o6qbNh2HKpVuNeCKWZGhWmdnGTvFBW3QZ?=
 =?iso-8859-1?Q?1jMoaRJT2xsrB/YdlIpkKNCdKAZkBk/zQQH9XJoAP+hxfXsScbfy24mkXK?=
 =?iso-8859-1?Q?E7ZHrWObc02E7bofqZpoTfAQUDhymYpwQ3S1UHbcN0ByX71Ltzs+YwE0y8?=
 =?iso-8859-1?Q?QLRwItuM7gX/OgrZvznAHNrpy5ilbqCOItWbt8OJDZFaB6PcfJ6Dt9wt1Q?=
 =?iso-8859-1?Q?V7Hv6qU/k8uqYN9gwbX8GwaX9so+gDJ7XR?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfa6b5f9-1965-476f-b0fe-08de2d20c34b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2025 19:19:47.1516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7wCXNocWdxU4NSrckJzZqDs5bOl79XygsNzyAWFG4S6tX3aFYu5vobkU5DcijFui97GmJino0zTuQAYc2tVDYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9302
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
arten
> Lankhorst
> Sent: Tuesday, November 4, 2025 2:06 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: linux-rt-devel@lists.linux.dev; Maarten Lankhorst <dev@lankhorst.se>;=
 Mario
> Kleiner <mario.kleiner.de@gmail.com>; Mike Galbraith
> <umgwanakikbuti@gmail.com>; Thomas Gleixner <tglx@linutronix.de>; Sebasti=
an
> Andrzej Siewior <bigeasy@linutronix.de>; Clark Williams
> <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>
> Subject: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
> intel_pipe_fastset
>=20
> intel_set_pipe_src_size(), hsw_set_linetime_wm(),
> intel_cpu_transcoder_set_m1_n1() and intel_set_transcoder_timings_lrr()
> are called from an atomic context on PREEMPT_RT, and should be using the =
_fw
> functions.

This could be ok but we need to be sure that all are called with power doma=
ins up.
I think would be safe to keep this under RT check so that we don't end up b=
reaking any
generic non RT usecase.

@Ville Syrj=E4l=E4 Any thoughts on this ?

Regards,
Uma Shankar

> This likely prevents a deadlock on i915.
>=20
> Again noticed when trying to disable preemption in vblank evasion:
> <3> BUG: sleeping function called from invalid context at
> kernel/locking/spinlock_rt.c:48 <3> in_atomic(): 1, irqs_disabled(): 0, n=
on_block:
> 0, pid: 1505, name: kms_cursor_lega <3> preempt_count: 1, expected: 0 <3>
> RCU nest depth: 0, expected: 0 <4> 4 locks held by kms_cursor_lega/1505:
> <4>  #0: ffffc90003c6f988 (crtc_ww_class_acquire){+.+.}-{0:0}, at:
> drm_mode_atomic_ioctl+0x13b/0xe90 <4>  #1: ffffc90003c6f9b0
> (crtc_ww_class_mutex){+.+.}-{3:3}, at: drm_mode_atomic_ioctl+0x13b/0xe90 =
<4>
> #2: ffff888135b838b8 (&intel_dp->psr.lock){+.+.}-{3:3}, at:
> intel_psr_lock+0xc5/0xf0 [xe] <4>  #3: ffff88812607bbc0 (&wl->lock){+.+.}=
-{2:2},
> at: intel_dmc_wl_get+0x3c/0x140 [xe]
> <4> CPU: 6 UID: 0 PID: 1505 Comm: kms_cursor_lega Tainted: G     U
> 6.18.0-rc3-lgci-xe-xe-pw-156729v1+ #1 PREEMPT_{RT,(lazy)}
> <4> Tainted: [U]=3DUSER
> <4> Hardware name: Intel Corporation Panther Lake Client Platform/PTL-UH =
LP5
> T3 RVP1, BIOS PTLPFWI1.R00.3383.D02.2509240621 09/24/2025 <4> Call Trace:
> <4>  <TASK>
> <4>  dump_stack_lvl+0xc1/0xf0
> <4>  dump_stack+0x10/0x20
> <4>  __might_resched+0x174/0x260
> <4>  rt_spin_lock+0x63/0x200
> <4>  ? intel_dmc_wl_get+0x3c/0x140 [xe]
> <4>  intel_dmc_wl_get+0x3c/0x140 [xe]
> <4>  intel_set_pipe_src_size+0x89/0xe0 [xe] <4>  intel_update_crtc+0x3c1/=
0x950
> [xe] <4>  ? intel_pre_update_crtc+0x258/0x400 [xe] <4>
> skl_commit_modeset_enables+0x217/0x720 [xe] <4>
> intel_atomic_commit_tail+0xd4e/0x1af0 [xe] <4>  ? lock_release+0xce/0x2a0=
 <4>
> intel_atomic_commit+0x2e5/0x330 [xe] <4>  ? intel_atomic_commit+0x2e5/0x3=
30
> [xe] <4>  drm_atomic_commit+0xaf/0xf0 <4>  ?
> __pfx___drm_printfn_info+0x10/0x10
> <4>  drm_mode_atomic_ioctl+0xbd5/0xe90
> <4>  ? lock_acquire+0xc4/0x2e0
> <4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
> <4>  drm_ioctl_kernel+0xb6/0x120
> <4>  drm_ioctl+0x2d7/0x5a0
> <4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
> <4>  ? rt_spin_unlock+0xa0/0x140
> <4>  ? __pm_runtime_resume+0x53/0x90
> <4>  xe_drm_ioctl+0x56/0x90 [xe]
> <4>  __x64_sys_ioctl+0xa8/0x110
> <4>  ? lock_acquire+0xc4/0x2e0
> <4>  x64_sys_call+0x1144/0x26a0
> <4>  do_syscall_64+0x93/0xae0
> <4>  ? lock_release+0xce/0x2a0
> <4>  ? __task_pid_nr_ns+0xd9/0x270
> <4>  ? do_syscall_64+0x1b7/0xae0
> <4>  ? find_held_lock+0x31/0x90
> <4>  ? __task_pid_nr_ns+0xcf/0x270
> <4>  ? __lock_acquire+0x43e/0x2860
> <4>  ? __task_pid_nr_ns+0xd9/0x270
> <4>  ? lock_acquire+0xc4/0x2e0
> <4>  ? find_held_lock+0x31/0x90
> <4>  ? __task_pid_nr_ns+0xcf/0x270
> <4>  ? lock_release+0xce/0x2a0
> <4>  ? __task_pid_nr_ns+0xd9/0x270
> <4>  ? do_syscall_64+0x1b7/0xae0
> <4>  ? do_syscall_64+0x1b7/0xae0
> <4>  entry_SYSCALL_64_after_hwframe+0x76/0x7e
>=20
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 16 ++++-----
>  2 files changed, 26 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 42ec787986666..1bff1148fe9d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1573,9 +1573,9 @@ static void hsw_set_linetime_wm(const struct
> intel_crtc_state *crtc_state)
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>=20
> -	intel_de_write(display, WM_LINETIME(crtc->pipe),
> -		       HSW_LINETIME(crtc_state->linetime) |
> -		       HSW_IPS_LINETIME(crtc_state->ips_linetime));
> +	intel_de_write_fw(display, WM_LINETIME(crtc->pipe),
> +			  HSW_LINETIME(crtc_state->linetime) |
> +			  HSW_IPS_LINETIME(crtc_state->ips_linetime));
>  }
>=20
>  static void hsw_set_frame_start_delay(const struct intel_crtc_state *crt=
c_state)
> @@ -2543,14 +2543,14 @@ void intel_set_m_n(struct intel_display *display,
>  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)  {
> -	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
> -	intel_de_write(display, data_n_reg, m_n->data_n);
> -	intel_de_write(display, link_m_reg, m_n->link_m);
> +	intel_de_write_fw(display, data_m_reg, TU_SIZE(m_n->tu) | m_n-
> >data_m);
> +	intel_de_write_fw(display, data_n_reg, m_n->data_n);
> +	intel_de_write_fw(display, link_m_reg, m_n->link_m);
>  	/*
>  	 * On BDW+ writing LINK_N arms the double buffered update
>  	 * of all the M/N registers, so it must be written last.
>  	 */
> -	intel_de_write(display, link_n_reg, m_n->link_n);
> +	intel_de_write_fw(display, link_n_reg, m_n->link_n);
>  }
>=20
>  bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display, @@ -2=
737,9
> +2737,9 @@ static void intel_set_transcoder_timings_lrr(const struct
> intel_crtc_state *crtc
>  	}
>=20
>  	if (DISPLAY_VER(display) >=3D 13) {
> -		intel_de_write(display,
> -			       TRANS_SET_CONTEXT_LATENCY(display,
> cpu_transcoder),
> -			       crtc_state->set_context_latency);
> +		intel_de_write_fw(display,
> +				  TRANS_SET_CONTEXT_LATENCY(display,
> cpu_transcoder),
> +				  crtc_state->set_context_latency);
>=20
>  		/*
>  		 * VBLANK_START not used by hw, just clear it @@ -2755,9
> +2755,9 @@ static void intel_set_transcoder_timings_lrr(const struct
> intel_crtc_state *crtc
>  	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP
> mode.
>  	 * But let's write it anyway to keep the state checker happy.
>  	 */
> -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> -		       VBLANK_START(crtc_vblank_start - 1) |
> -		       VBLANK_END(crtc_vblank_end - 1));
> +	intel_de_write_fw(display, TRANS_VBLANK(display, cpu_transcoder),
> +			  VBLANK_START(crtc_vblank_start - 1) |
> +			  VBLANK_END(crtc_vblank_end - 1));
>  	/*
>  	 * For platforms that always use VRR Timing Generator, the
> VTOTAL.Vtotal
>  	 * bits are not required. Since the support for these bits is going to =
@@ -
> 2771,9 +2771,9 @@ static void intel_set_transcoder_timings_lrr(const stru=
ct
> intel_crtc_state *crtc
>  	 * The double buffer latch point for TRANS_VTOTAL
>  	 * is the transcoder's undelayed vblank.
>  	 */
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> -		       VACTIVE(crtc_vdisplay - 1) |
> -		       VTOTAL(crtc_vtotal - 1));
> +	intel_de_write_fw(display, TRANS_VTOTAL(display, cpu_transcoder),
> +			  VACTIVE(crtc_vdisplay - 1) |
> +			  VTOTAL(crtc_vtotal - 1));
>=20
>  	intel_vrr_set_fixed_rr_timings(crtc_state);
>  	intel_vrr_transcoder_enable(crtc_state);
> @@ -2790,8 +2790,8 @@ static void intel_set_pipe_src_size(const struct
> intel_crtc_state *crtc_state)
>  	/* pipesrc controls the size that is scaled from, which should
>  	 * always be the user's requested size.
>  	 */
> -	intel_de_write(display, PIPESRC(display, pipe),
> -		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height -
> 1));
> +	intel_de_write_fw(display, PIPESRC(display, pipe),
> +			  PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height
> - 1));
>  }
>=20
>  static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc=
_state) diff --
> git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 00cbc126fb366..2e19673697fa4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -300,12 +300,12 @@ void intel_vrr_set_fixed_rr_timings(const struct
> intel_crtc_state *crtc_state)
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>=20
> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> -		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> -		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> -		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
> +	intel_de_write_fw(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> +			  intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> +	intel_de_write_fw(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> +			  intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> +	intel_de_write_fw(display, TRANS_VRR_FLIPLINE(display,
> cpu_transcoder),
> +			  intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
>  }
>=20
>  static
> @@ -693,7 +693,7 @@ static void intel_vrr_tg_enable(const struct
> intel_crtc_state *crtc_state,
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	u32 vrr_ctl;
>=20
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> TRANS_PUSH_EN);
> +	intel_de_write_fw(display, TRANS_PUSH(display, cpu_transcoder),
> +TRANS_PUSH_EN);
>=20
>  	vrr_ctl =3D VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
>=20
> @@ -705,7 +705,7 @@ static void intel_vrr_tg_enable(const struct
> intel_crtc_state *crtc_state,
>  	if (cmrr_enable)
>  		vrr_ctl |=3D VRR_CTL_CMRR_ENABLE;
>=20
> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> vrr_ctl);
> +	intel_de_write_fw(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +vrr_ctl);
>  }
>=20
>  static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc=
_state)
> --
> 2.51.0

