Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7DC8471EE
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 15:31:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C635210EE79;
	Fri,  2 Feb 2024 14:31:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RP0uL3t1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE86610EE79
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 14:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706884282; x=1738420282;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=E9iRLBlw76zJ+YVm5UXEyNJUzfRvDhtYkwPoKxKTUBM=;
 b=RP0uL3t1XAndynVce5H2Hc1PpR9yj2HFmcg6qyf3cjKyMr/njE1GI0m6
 nV+JARWuUOOi+lYPYeFwVi/7T9qdm4ZFRQgmf966RCXcd5VQ1KQOWNocC
 XV5oEuVza316ccuAuekCLFdmHmEa9hAMM9PmWW4dgYF7jsyfkpUlVG0cL
 3vIv4wXQ5m9mVwNKO9taDu7dB/+8EEmnc2vSCMx0rDNSlNn+qredJXM8H
 VIeOXy2harRmdj7c1HRYcPMxQoZcwakCXDkvhh0irCfbuQnLj3IjipLng
 N0p/m5/NbBp1mgPDPhtu5QNkhPsJL6bASGLnecVp29KK/cXnt0RFHPrbG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="25619481"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="25619481"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 06:31:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="293648"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 06:31:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 06:31:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 06:31:20 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 06:31:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E1wtRynNmB4KMfEAdSuOARBqqsDcQqSic6BHOVxCPE+DdPdYja6Z9/XPCTwwfkIlLCHwcSaecirmRJZxpD8eBbwTJu8aN4ykEN14m3eXThWmdQaKELsG5p/LTQ78q/lnqZ+IpaHbb+Xgk9U3ixNVpSX+/LZPPn6H1mEejv3bVSiSMiHJ3eY7FxVanab0zBWT2xFKimR2TI4seazSGeEAcFaiLrEmkN1qAU6IVi7CTz7vPGeEIVMxvym9soROpkkt3F5nPZVXCrpr1lVUB8zDjO86PMODUIUPn4zZJYlkoh8Znvvu++cLZhSzhIEdH2PvzUb8XlSV+VeS7vAJOiedXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E9iRLBlw76zJ+YVm5UXEyNJUzfRvDhtYkwPoKxKTUBM=;
 b=dNn0QD+0sJ/S952jZlkKzI4zinP9cwn1UNJMjsroTjx2larrRvoEygk4m1AxhuRrIoDM+D3r7Wgw73AeSz0o2nOQ1BAYIxX/YnT2gHv/FHBmG/DuR4Z7eMGlpa5fQpGWsXpmCvLHF49/LF7hOFq0gjLVzwG1kM4lyTqt8QXrGgBLxc/yImK1Q9gjTUNQjbXo6OV1brRa7FvxtNsC7n24SzaSr8s0m5/svJ1Gtn8Fe6TQ0cnLBIKmsObuTP2TLI6zTGdrKGA6TksOd4P1gSMW44i1VEIJczV610I8tLwVNMT/WvOjULfrgxRUARcxflilNZSy//zLBJjqmmUkYwTe5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA2PR11MB5020.namprd11.prod.outlook.com (2603:10b6:806:11f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.29; Fri, 2 Feb
 2024 14:31:18 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 14:31:18 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 14/21] drm/i915/psr: Detect panel replay selective
 update support
Thread-Topic: [PATCH v3 14/21] drm/i915/psr: Detect panel replay selective
 update support
Thread-Index: AQHaSr/aThItR9WqNEisvi9xAMgD3bD3MzoA
Date: Fri, 2 Feb 2024 14:31:18 +0000
Message-ID: <PH7PR11MB59818C80BFF5D4F72A99F567F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-15-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-15-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA2PR11MB5020:EE_
x-ms-office365-filtering-correlation-id: c8c6fdab-a871-457a-4263-08dc23fb9e9f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SJ1Lv/q0dY58c5q3BqL1B4g1uIxz1QmehJPUCPlnQUgW3keZub53l4g0CPBFmZc1I8dkcMiPTNNSUEcyfHBjDPkRUBvK5aMMb+h3KHvSYqzheneYywfsr+XCVnWeRURRO0PFQ7rA2awsX5Vg45X1qVhT/VBFCk4+RFv5VesQqqZz+RLUaK8fmSvhg2IaACr+LnsNXPZbXwh7thtvy727kWce8kOCiu42Hqv00SBFXsnKtXLFtCd3zxneQLBTjh+04/r4UsD+zoWjCKF0lQvY7lPw+69/rXKAuWRvAdSQQafXbH6haQq8MCTYsWz7spnrHuPJ2EPipfHHzYAFSJVbqL6Epwv5hFRk9xtmlxw4rZTHnDwCm2uY8ZfXEHxfB0qyq5SHEPyAXE12tRdcQB+eDXx7oxE5Tffqnaco0nw8ID8+SZvs6yBH/lfwTEFbesQJiaTZLVXqo0D9oiRzUmXfvUmljwx9Q3KcrDCekbuxnWQRAIKLLzqdSKaj1ZxeE2y+zAYO0xz8T+t0UMjp3XWEYWZ8kL0iGI+7wECWfEixAFEOdXFvm5d9v4iQQO/fHqGPQ6ETkWAN4ZzepBLWhqrPqyt8uJkgP757pZE715siM6XPovdRkx+YtHuBPtLRa3D9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(39860400002)(366004)(396003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(26005)(66574015)(38100700002)(122000001)(9686003)(71200400001)(8676002)(52536014)(5660300002)(66556008)(66946007)(64756008)(8936002)(15650500001)(110136005)(7696005)(53546011)(6506007)(66476007)(2906002)(478600001)(316002)(76116006)(66446008)(38070700009)(33656002)(82960400001)(41300700001)(86362001)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QTNZeG02dTlzM05NdXNnN21ueklvV3pmeHVuVjF2dnJQRmovNjE5VGxLbk8w?=
 =?utf-8?B?VHRDYS9DYnpwcUhiQmNWNFU5MmdzT0lBTWxDM2M2Zm41dWQ3dTlyZEpkajFp?=
 =?utf-8?B?YW82QVdUZVlINzU2a3Q5QnpESG5BYWpNZDNVQTViU3UzaTliNmtNSlRRemE2?=
 =?utf-8?B?QVptUjB1OVA3aGgvYStDTklCSnAxcHEwRlJrY09KcVVqV05iaG5HMGhqYVVR?=
 =?utf-8?B?UnRtdytaYlRMVHdQdGk1aXByME11bXpydzV2K216SlZwQzVUSkl5QnNsTmpm?=
 =?utf-8?B?ZlNsOERsRER4VmJ6eVZjV2h3Q2J3Y05yTlF6VlV0OEY5dmkwWncvUEhXQlpm?=
 =?utf-8?B?dUNDSmsybHVQQ3BubkNoOTUvb1JkNmcyWDM0OTdSL2ZLUjdhL3E4MXZmL1VF?=
 =?utf-8?B?T1VMQVZKR1dLNGlSem9GQ0tLTUJYUHJKd1FHMUp4RXJHbmVIWldva3cyQnFx?=
 =?utf-8?B?ZkhkM1RkN3dHemU0dzNSYTlzTHVlYUNEczRVaGQ3OUlCVm1lS1draHk4d2ky?=
 =?utf-8?B?TERpaVJWMUxUQlNoaC96bVdhdTAvZHJpejV3TytXNE9MSGhYVmxkaXFKM3Rv?=
 =?utf-8?B?cUhzYWdYWGE5TXN0NWR1MVpjMDc1QzdSNEZxRDBTdEgwbk0wUWlkZmp6aVND?=
 =?utf-8?B?ZmcrTkhNbkxURFkvZUlxeUNPRUoyeE5sa1Qramo2blowVGNxeERDN2tReGNT?=
 =?utf-8?B?OXpCVXBBbHFmZ2N2bDkza296ZFh3MXBSQll5Ynh6cTRrTytwTHpjQXkxd0Yz?=
 =?utf-8?B?YTlWMXdJeDk0TDVNdTRlNDNyamVKelF5d00xSXVZdnpuT3VZYUFxZGZEblBl?=
 =?utf-8?B?d1VCdlEyMTNLSUwyaWM4dGlPVUlsaUJYYVZZWDJId3pGZmt0R1ZxN2V0R25S?=
 =?utf-8?B?WGU0L0pseXdWbFROb1Z6K0NnaEVrNENId24vM2R0VXZ3RHVKYktTbFJkRGFK?=
 =?utf-8?B?ck8zdDhoQTljejhHN2s5dy96ZUNmbmhDbkg4WnNEaksrS0JmSjBFeERjMFFI?=
 =?utf-8?B?dHNzZGhnSVVNdEZRWU9TR3FXdHREL25URkRXMjlHa3BsR0d3VDJUNWkvTERr?=
 =?utf-8?B?Vnhpd3F6UmxjMjBTU0ZIYnppeVYxZHU2US9vS2ErU1UreTY2cmhKcnJmTk9Q?=
 =?utf-8?B?T2RnOWZuQmFUanZLUk9tRGVIUjEvOGp0ZWNFOEZKM1N6SmtOL3JyMmZvd20w?=
 =?utf-8?B?WFpYNjJ5TzRDdGdEbVl3dTd6N2NDQnBTbzZtU3RYS3NVKzF1V3ZkRjVHT1hi?=
 =?utf-8?B?dmtaZ2lLdGo5RkpaOXpsZnp1RHlYMm1SSlRKcTgzSE9mcE1pa2M0SUNCYk1O?=
 =?utf-8?B?aWhUMlA2dS9GRjUyVUNEeXFhbnErVVJBK3Nxck93WFg5bmdkVTNqMjc4WlFK?=
 =?utf-8?B?YzZmUEkyVGZ2MjhKZ3BYZEFaYnRsUDV0V2c0Q3NuWng4T0QyTEZaOS84MkNF?=
 =?utf-8?B?REZxY2x1b0ExbUNqT25Ddk1NaXJXalRZeTFxTklXKzdITGxhejhjSFZPcjM1?=
 =?utf-8?B?eWw0emY3aldKV0JmSTV2SitDR1FDR0JCRzZhOUxUdHFtSjhwTWovQlVGM1dQ?=
 =?utf-8?B?Wmt2dUI4Q0NkQU1VVzM5VVNmeklCa1U2dURTbWlWRmhVUUN5TWtPMTV2WEZj?=
 =?utf-8?B?aGZvYjgvLzE0U1FzQWtONitYZHc1d3Z5RnltelB5V1hqSU0vN3hNQ2RtU2xj?=
 =?utf-8?B?ZUtHLzl1Y055a3JMdkdYWVQ0SDdxNkQ0UUNuVU1BbXdGUFV0c20wS0lRa0x6?=
 =?utf-8?B?blp2NmNUTkhZT3BaZWpmQnQ4WTdSZHhUZUYyN2FBaXNSNVE1dWpTa3VBZEdY?=
 =?utf-8?B?NFRYNUpBQjBlWVJ4ZUNnRFZUQ0hZYVlsbUEwTGxSMVZDaHBQWGtqSWNmSnYv?=
 =?utf-8?B?Nm9kbjAzbEVRWURLRm4vTG56N3JCU1hUOUhJak9NUExhcVRkY1RaeTlBREIw?=
 =?utf-8?B?U1JqaEhBTXpHTENmbXlvLzdESkt4SjI4RXgzbjhjbzBzNWkzMmRVNVIwSVJN?=
 =?utf-8?B?WTdhRXcxTVM4TUM2aC9GWTlkWk5hYWpma05SVUFXYnJNblFGdmIxSjl5SkJh?=
 =?utf-8?B?OWZoNGVoeDVGTjBVYml4QnRkZ3Z2NmhtSGNIRDRzelhZVTJ2dGgveng1YStI?=
 =?utf-8?Q?8U2s+oRQZZZuwWb2I7cBoGr89?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8c6fdab-a871-457a-4263-08dc23fb9e9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 14:31:18.4194 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MqM10ScweE8M7dN3sBlN+8oy/u22ANftt63gs2f/xnKDfTstS/cSIl1FxKHE0VoJAC3wBCD4L3DmL3xbgvatIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5020
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDE0
LzIxXSBkcm0vaTkxNS9wc3I6IERldGVjdCBwYW5lbCByZXBsYXkgc2VsZWN0aXZlIHVwZGF0ZQ0K
PiBzdXBwb3J0DQo+IA0KPiBBZGQgbmV3IGJvb2xlYW4gdG8gc3RvcmUgcGFuZWwgcmVwbGF5IHNl
bGVjdGl2ZSB1cGRhdGUgc3VwcG9ydCBvZiBzaW5rIGludG8NCj4gaW50ZWxfcHNyIHN0cnVjdC4g
IERldGVjdCBwYW5lbCByZXBsYXkgc2VsZWN0aXZlIHVwZGF0ZSBzdXBwb3J0IGFuZCBzdG9yZSBp
dA0KPiBpbnRvIHRoaXMgbmV3IGJvb2xlYW4uDQo+IA0KPiB2MjogTWVyZ2UgYWRkaW5nIG5ldyBi
b29sZWFuIGludG8gdGhpcyBwYXRjaA0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgIDEgKw0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgICAgICAgfCAxMCArKysrKysrKy0t
DQo+ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oDQo+IGluZGV4IDZjZWYzZGFiY2Y0NS4uMWM4NzBmZjhiMjdlIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aA0KPiBAQCAtMTcyMCw2ICsxNzIwLDcgQEAgc3RydWN0IGludGVsX3BzciB7DQo+ICAJdTE2IHN1
X3lfZ3JhbnVsYXJpdHk7DQo+ICAJYm9vbCBzb3VyY2VfcGFuZWxfcmVwbGF5X3N1cHBvcnQ7DQo+
ICAJYm9vbCBzaW5rX3BhbmVsX3JlcGxheV9zdXBwb3J0Ow0KPiArCWJvb2wgc2lua19wYW5lbF9y
ZXBsYXlfc3Vfc3VwcG9ydDsNCj4gIAlib29sIHBhbmVsX3JlcGxheV9lbmFibGVkOw0KPiAgCXUz
MiBkYzNjb19leGl0bGluZTsNCj4gIAl1MzIgZGMzY29fZXhpdF9kZWxheTsNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDM0YmMwYTRjMWJhMi4u
OGJmNmQwNzU0YzE4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gQEAgLTUyMCw5ICs1MjAsMTUgQEAgc3RhdGljIHZvaWQgX3BhbmVsX3JlcGxheV9p
bml0X2RwY2Qoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAkJcmV0dXJuOw0KPiAg
CX0NCj4gDQo+IC0JZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gLQkJICAgICJQYW5lbCByZXBs
YXkgaXMgc3VwcG9ydGVkIGJ5IHBhbmVsXG4iKTsNCj4gIAlpbnRlbF9kcC0+cHNyLnNpbmtfcGFu
ZWxfcmVwbGF5X3N1cHBvcnQgPSB0cnVlOw0KPiArDQo+ICsJaWYgKHByX2RwY2QgJiBEUF9QQU5F
TF9SRVBMQVlfU1VfU1VQUE9SVCkNCj4gKwkJaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxh
eV9zdV9zdXBwb3J0ID0gdHJ1ZTsNCj4gKw0KPiArCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+
ICsJCSAgICAiUGFuZWwgcmVwbGF5ICVzaXMgc3VwcG9ydGVkIGJ5IHBhbmVsXG4iLA0KPiArCQkg
ICAgaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0ID8NCj4gKwkJICAg
ICJzZWxlY3RpdmVfdXBkYXRlICIgOiAiIik7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQgX3Bz
cl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gLS0NCj4gMi4zNC4xDQoN
Cg==
