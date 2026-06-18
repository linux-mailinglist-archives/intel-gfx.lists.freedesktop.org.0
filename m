Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Xit4AH+KM2rsDAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 08:04:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFFC69DC82
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 08:04:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VncnPGj7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37CB10EC3E;
	Thu, 18 Jun 2026 06:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E81C310E5BF;
 Thu, 18 Jun 2026 06:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781762683; x=1813298683;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=aNRDAJRivdGvI+cMyD4lghRG3Q/5yf/vFbHoMcCakRY=;
 b=VncnPGj7qc/OQQ2Ovy9Ab+8pkoZ7vxk2bfy6nPWe9KuSQjVLQ5uwMAgf
 gTqY30zB55cN46fZIfNbL70YpJEr/czBR7fBuvoakQTJRmyj5tf1zVqhX
 rTuxsACBI2TLJW3oixOYf3vFKXR7g1S1bEIUCJ+715BTqPuxCq/nExaEK
 3xlI3ej0R0THngu1Godfwe+kET2m/QJE/kHnMcuWulqAgO+H4/tq3ct55
 OFVCLKkqjJXHj9jC80jpfqJseUHY2Ffp34gu6rWPh+01Wc2eaVRi5qJwu
 7JBJbuDlcjhtZJgSVHe/poJa0wAUY0+HDjQp6XLGb74kOvjwa4CpiGiyE A==;
X-CSE-ConnectionGUID: hKhSg9l8TgG/HwExHDDOyQ==
X-CSE-MsgGUID: mifWTEltTXOzmkjit7//3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="86263431"
X-IronPort-AV: E=Sophos;i="6.24,210,1774335600"; d="scan'208";a="86263431"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 23:04:43 -0700
X-CSE-ConnectionGUID: YcwwYamRQ12c+PgG7JZ+QQ==
X-CSE-MsgGUID: gZ0uopLXR2GIQIgR/2tluw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,210,1774335600"; d="scan'208";a="248341840"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 23:04:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 23:04:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 23:04:41 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 23:04:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dlooId9fs6OYuUb0h0FD+ZZkUGekEbeJ78jv3E+TPK06ifTMHL5PFMsOiRKSbMA+vTe1sitRhcCdQAhxh7w0scBOVbfn9GVqCSj/8J6vs8zYHDrhVMNxc67T4K/P8Idnwdfnl6pjMTHn1xgiLLXZSU3eoNT62djyAX423HzxRpCGyRjxKVnQ001vhMIY11QQPs7tWaIoSnE/zss252SmlTzm1RTcmk7qwawHIB/KLRpUUqMHbuMU8sc73+tuOGFa0dF/7meMT23u+wvuoxhNo+r9bMMecqWuC5bysZwVc/bNDQJeNExqSlwn7ybkz4ZH3VMwNaiTr6KJ4MYlO1+lkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aNRDAJRivdGvI+cMyD4lghRG3Q/5yf/vFbHoMcCakRY=;
 b=ezIkKVlL12khhdZohrPjhlYDB8Mo70YzMuPaaaU6JIRgVCpUzHn6d4QndeR7DHi6DiWmHGU63D365X66wtDeVNqzT7t4l3zAVBkPqwLAEZ/0PBu1MCIj+2IeVdaxSsiftyW5Sz/66lf8w9pqLbETU8yMAQAj4PMLLj9nDJsHPOaiZC3SH5p6LwiY+iN1HageQe9mzaKKY69SH6sU+LS93O3bBaJNicN8kUuhIvytLqiAFs5hqhJzLbYnjI/piWCDBQVfIl2zutN6YilWB3Jo7dEAL/lWe/Hc3oGXBikqk6SelGtkQ1eianlHUFgoSRNrqltvF/IFFQPbM+SVaH/+4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB6223.namprd11.prod.outlook.com (2603:10b6:8:98::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.11; Thu, 18 Jun 2026 06:04:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0139.009; Thu, 18 Jun 2026
 06:04:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/7] drm/i915/psr: Stop using intel_dsc_enabled_on_link to
 detect crtc DSC status
Thread-Topic: [PATCH 2/7] drm/i915/psr: Stop using intel_dsc_enabled_on_link
 to detect crtc DSC status
Thread-Index: AQHc91DYRa1dsJuUsUOZ+YA0FJYtabY2PfeAgA2kFoA=
Date: Thu, 18 Jun 2026 06:04:38 +0000
Message-ID: <43d984aa8665acb57cb791ee293bea39562ff218.camel@intel.com>
References: <20260608141124.144878-1-jouni.hogander@intel.com>
 <20260608141124.144878-3-jouni.hogander@intel.com>
 <aigZFb34-M_p-Tk-@ideak-desk.lan>
In-Reply-To: <aigZFb34-M_p-Tk-@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB6223:EE_
x-ms-office365-filtering-correlation-id: d7747af1-0012-4e66-cd5f-08deccff7af9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|23010399003|1800799024|5023799004|11063799006|56012099006|4143699003|22082099003|18002099003|3023799007|38070700021;
x-microsoft-antispam-message-info: n/RGLU1g1SauDNKLEiDAsfVV7xmwv6k1mL7y8M6KrJ+AW82am4Qz8/20gV4O+Ry0ziwAvvlIS1VIHsiSPLWGQ405H29ZcQo7KXF/7MWV2z8xv6EDKEh2UBl7wQcohM03pdFdIL5nI1Tc5+y3cZ3ObQ1sGl92JcVZ2Gfi+QEYPWpmC/SsybTpxs3hD0GEcN/aIe7974KLN8rELQRqH4JCQbX8lgxnvrD7xcXWMHS4UaRJeuNEz/c+wt54mpRVUwW/ZGvQl4HbRpTJ6ws3CpIJ42soFyut/Ha0y2bsHCsmTOubyL/JW/vLuvitTH4GFSy3DA68m7kHFgGJ6mg7fUpLgb0D83jiDLGge2NCkfnopDpTKbUgqEFbHuq/hGWOizybHPdTHoV1xLZ47EsP5QHyRNvK//dtHrHplp+bfLXR6qFVQ9W53OiNt15TbJpU/MvnUXEg5tSOLjdWa5pLe7i+JEyYuMV/ZsWSMitv5Jj2mr7Fm613r2PlICGToM+p55+PPih8YJTymadgpYfvvXXiyvlaCSbMppU+jdxbJaSPMVv4aOi82uNKanlF1BEKZR0tIf3KeGaSGnd2yL0hbiwpxbpIx9D1ZegltH3ZZqvkeX/Utaf6ThCm4Jcp1DBgvPoZXrye3oTKYcS71TvzzZhqyJ73SRcX5cfrbAawcD4fsa8SiaGWSVfcOcoCWjdtaD6HHx2hHCi1xBg6aSlrCO1gjqNBUaYE4PrwD3MBPDM694MC8KG3Kl0loFY0vIh3gHnY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(23010399003)(1800799024)(5023799004)(11063799006)(56012099006)(4143699003)(22082099003)(18002099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WWFKb0p6c2hkN29KNEJpbyt1UHFVb3VtVE8vT2svdFJsejBiOE4yOVg2U0dV?=
 =?utf-8?B?dzRRbVhBYkN0WmdwOUl4b0VRbDBOMFVtNlpLV3BBS1dsdEtrMmZRYllZaHlJ?=
 =?utf-8?B?Y3U2SEJYVjlabVNQN0JySWZuZzBxUnordEFBcDZ4MnVqRXF2RjlNamE1UlVu?=
 =?utf-8?B?MXZYQ2puUXprNWYvRTlGWVNwcHd0aWtraWhvYXFWZ0R1Tk5DNHlibWQvbmZW?=
 =?utf-8?B?d1duWnFHRDY0MVFUQW5HZkdnOExtUlo5ZlJnOWF6dzVqTElRUWlTRVpXb3Zo?=
 =?utf-8?B?ek42SFBhTkJJbUd3bVUyaHBmNFNoWm5DemN2WDBmei9WMG9OOU9sUTVvdHdB?=
 =?utf-8?B?UitNcjhxWXpLR0V2b0NFa09Pd29LYjlQSmJEeU1mM0ZGWjFtQm5VbjJZNXlJ?=
 =?utf-8?B?RzRJQ1l3MXVQK3dwdmxPcFkxcjJ1RlF4MmhjcE5QbllzQzUyUk80STNvZS9F?=
 =?utf-8?B?NjdzSGxEMFlVcnlzUWZkVFpVZ0FFb3E2R21iTVVkMnRSREwrY2QvWjdFY2RC?=
 =?utf-8?B?b2JURFF1QktySHpjVXlUQ0FrUnJPYnJSY2p4TW5oUVA2b0doYmJOUnYxSzJK?=
 =?utf-8?B?ZEJycE5mNEM2UVd5YUM4SmlleXZOeHBMRHJkdmZ1WTVFbFFWSDdTR25RWDhH?=
 =?utf-8?B?OVRSN1FIWFZpVTJoeE5JQ1Z2M0VaQ0xUMUQxZUlCdG0wMEoxSC9WV3lNcGc1?=
 =?utf-8?B?cGk3U2VCR3g3Q3FFS1hlMTFGSEdIdm5pYXJBUlJrQVUxd1M4S1FoaEhDcTIz?=
 =?utf-8?B?d3hSaEtNYjBxa2M5TUNQY0YrNklGS01XdVpjT2ZZUnNpT2ZsMFlzNXRiYzdE?=
 =?utf-8?B?bEhrOEg1WXNvOTZUZ2VNdWpHZlN0WGNnVE1oSGEvWlpHc2QwUVF4dVoyTzh1?=
 =?utf-8?B?ckFiUnNmZGZqdUFnUURyUVdKZ2NraHlTb05qRmRMWlI2d0lWa0dCelhNYU1r?=
 =?utf-8?B?bWhTTWRTaytJcXc3dlNadWdDbTRscVYxQTUxTWFUQ1ZDcXhITUxFYXB3U09y?=
 =?utf-8?B?dEtBKzF5d1gzQ2t2bDRHYkVuNU9ic2Z0Rzg3OFNLUTRHWm5FY3J6UGQ4ancz?=
 =?utf-8?B?bFhPeWFkcmFxaEwrL2NWTHZwNXdDRzlWTHBTa1BaR1YvNXozNWc0N29JSERH?=
 =?utf-8?B?QisvWnpWZVhYQS9OUUN0cVZCSWhkS01KclhXTUJFd2xDR0VxRjFncXozMkpX?=
 =?utf-8?B?bzRacEx5cnc2VTRld24xL05DOVJBR1IyN2ZueCtvb3hHWjlUWlZBL3dBeU1Y?=
 =?utf-8?B?NXl1WFBBV2JxaDZ5QTZ0YXBUcUo4NmUvaFRCNWxDRmV3NXpMYzhaNHc2eWZI?=
 =?utf-8?B?UlJDY3lTZDUvT3h1Qnh5SGRoek5rbmNSeTlwUUNWLzR1NklETDErQStlUmxL?=
 =?utf-8?B?MHN4TGwzcGNTUVRITlBMNTdhbGh5SXJHczdjTHBNUUxSanBFZGN6V1hPNTNO?=
 =?utf-8?B?T0JmMElmb1RNSDl5S1pHZHc4T3IvTlVqY1BiMnZIeExDdjgrcnNlT0VtMklX?=
 =?utf-8?B?elY4T1BTYTEyVEpDNnM0b1dzdUlZWnlrbWZ5Z09zWWhua2ZCTzNIdHdMVWpK?=
 =?utf-8?B?TjNaMHk5U0t1ZnNFeUdUR0dOVWplRTM3MnptdUxOS1V0RU5oNDFZVzdBTG0x?=
 =?utf-8?B?cUYrdHgvWjlKQU5LZkdVSzB6akkxOXZQbktORFNVV2I4ZTlzS0tOZStLdG9k?=
 =?utf-8?B?U1Q5ZVdjQTlyTG1GMHIvOGF5dGdvaFd3UGh4d2F0Vm1PZVJNZFk0OGhLNlgx?=
 =?utf-8?B?UkdxeHRJdExJR0xKMm5wS3pFbXFVaWV1WEFaYmZkVlY4VjZNSEo3ZXJyWlRx?=
 =?utf-8?B?TjFkZDhESlZiNnZ6bnNiam16NWltWEI0dHpGcWZiemVic1c4Y1dpc3IyaExS?=
 =?utf-8?B?STdKK0NCQnczUmllZ1FDS1VlN0pZeGFtS1Ewek1sMGhGZ1IxVWh6Q29idEw4?=
 =?utf-8?B?V29EN01FMTRjMWZEaEhPSGtpUWRaWDlvbzhMUVNpaDhQdTdwQzRqWmFMczBD?=
 =?utf-8?B?ZmwzbTJGQmI2UUpMVzZNWFB2Rjg3a3FqdXVqcUlodFhCV0UwR0RjZ1pVbG8r?=
 =?utf-8?B?Z3ZqUS9ITXFpNGlRT2JzTlVTcFBxcmNBODF5OUM1b2VNdFI3dVUyTTkySjRn?=
 =?utf-8?B?WmhLMnN3YlBTWjhPbnVQdEZZVFh6cFVEYThFOXl4cXU1Mlh6RjdZNzdyYWJC?=
 =?utf-8?B?cEJpYjhhK0pld05xNnNnck9FVWJJTEZBNEl4cHoyMlYxZFJSd3R2aUxPdTdR?=
 =?utf-8?B?c205UDZjTElXcXg5blMwTzhtMlRTakZPM3FHNzAzV3JJYStCNjhCQ1c5MlJp?=
 =?utf-8?B?d0czSkd6dFFOWHlGL3hxZGNUaTBFMGp4YUxjZXFVWWZhWFZqbWZTKytrTUto?=
 =?utf-8?Q?UhHoncHgSHa8T9DxRzCOeCbVc/s1NlJNWclBD9F3nNIrE?=
x-ms-exchange-antispam-messagedata-1: S+CCsFz67eQimw==
Content-Type: text/plain; charset="utf-8"
Content-ID: <975AFB5E7B5E5A49BD5249BB076AF30F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cL/THVAhpzBbnHWO3zupR2nts4j07bHh3DWF4SisNEPK1L3eu3NDi+phdrP+iW8cAgUd5uTd28V0ogKtOMVimtLk/hIpfsc6lT5knABC+oMa4QLaer01AEz1c+V0b1QoMws5AMqGHYQRBqbWgf8IBVSBpHryo2OM7LI9NJwnpPrMvFK0EMWUQm9fk5zUtl7Xf51C2N5mKO/2EsUPoq+gxc95vJoUbo+jDP+tKVcQ1CkuJidaxdZwVuPYCXXxujOZSdmByTZsQ3L/DnOLR1edc/jxh3FNsr0QWz5UuLlhzZxqwhw78LcO4S+jMLByeTKbzqY5pjNTjbM6dRE7pyEwXQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7747af1-0012-4e66-cd5f-08deccff7af9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 06:04:38.4702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ASjUEe0yQw9JzXqQRY7nnVG5259kdz23xU7RC4wIRKIvlCgl6x6KZ7ULcdcKeJ8Sz50PpVIEIw6dUwpqPI/9SCgBejP4c2EqXDomo9erze0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6223
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4FFFC69DC82

T24gVHVlLCAyMDI2LTA2LTA5IGF0IDE2OjQ2ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IE1vbiwgSnVuIDA4LCAyMDI2IGF0IDA1OjExOjE5UE0gKzAzMDAsIEpvdW5pIEjDtmdhbmRlciB3
cm90ZToNCj4gPiBJbnRlbF9kc2NfZW5hYmxlZF9vbl9saW5rIGlzIG5vdCByZWFsbHkgYWJvdXQg
RFNDIGJlaW5nIGVuYWJsZWQgb24NCj4gPiBjcnRjLiBJdA0KPiA+IGlzIHRlbGxpbmcgaWYgRkVD
IGlzIGVuYWJsZWQgb24gbGluay4gSW5zdGVhZCBvZg0KPiA+IGludGVsX2RzY19lbmFibGVkX29u
X2xpbmsNCj4gPiBjaGVjayBzdGF0dXMgZGlyZWN0bHkgZnJvbSBjcnRjLT5kc2MuY29tcHJlc3Np
b25fZW5hYmxlLg0KPiA+IA0KPiA+IEFsc28gcmVuYW1lIGludGVsX2RzY19lbmFibGVkX29uX2xp
bmsgYXMgaW50ZWxfZmVjX2VuYWJsZWRfb25fbGluay4NCj4gDQo+IFRoZSByZWFzb24gdG8gdHJh
Y2sgdGhlIERTQyBlbmFibGVkIHN0YXRlIG9uIHRoZSBNU1QgbGluayBhcyBhIHdob2xlDQo+IHdh
cw0KPiB0byBkZXRlcm1pbmUgaWYgdGhhdCBlbmFibGVkIHN0YXRlIGlzIGNvbXBhdGlibGUgd2l0
aCBlbmFibGluZyBQYW5lbA0KPiBSZXBsYXkgYW55d2hlcmUgb24gdGhlIHNhbWUgbGluaywgYWNj
b3JkaW5nIHRvIHRoZSByZXN0cmljdGlvbnMNCj4gaW5kaWNhdGVkIGJ5IHRoZSBicmFuY2ggZGV2
aWNlIHZpYQ0KPiANCj4gRFBfUEFORUxfUkVQTEFZX0NBUF9DQVBBQklMSVRZIDB4YjENCj4gDQo+
IEZvciBpbnN0YW5jZSwgaWYgdGhlcmUgaXMgb25seSBvbmUgYnJhbmNoIGRldmljZSBpbiBhIGh1
Yi9kb2NrLCBEU0MNCj4gd2lsbA0KPiBiZSBlbmFibGVkIGZvciB0aGUgYnJhbmNoIGRldmljZSBh
cyBhIHdob2xlICh2aWEgRFNDX0VOQUJMRSAweDE2MCkgaWYNCj4gYW55IHN0cmVhbSBpcyBjb21w
cmVzc2VkLCB3aGlsZSB0aGVyZSBjb3VsZCBiZSBvdGhlciB1bmNvbXByZXNzZWQNCj4gc3RyZWFt
cyBnb2luZyB0aHJvdWdoIHRoZSBzYW1lIGJyYW5jaCBkZXZpY2UuIEJhc2VkIG9uIHRoZSBkZWZp
bml0aW9uDQo+IG9mDQo+IHRoZSBEUF9QQU5FTF9SRVBMQVlfQ0FQX0NBUEFCSUxJVFkgcmVnaXN0
ZXIsIGVuYWJsaW5nIHRoZSBQYW5lbA0KPiBSZXBsYXkNCj4gb24gYW55IHN0cmVhbXMgdmlhIHRo
ZSBicmFuY2ggZGV2aWNlIC0gaW5jbHVkaW5nIHRoZSB1bmNvbXByZXNzZWQNCj4gc3RyZWFtcyAt
IHNob3VsZCBiZSBkb25lIGNvbnNpZGVyaW5nIHRoZSBicmFuY2ggZGV2aWNlJ3MgZW5hYmxlZCBE
U0MNCj4gbW9kZS4gSU9XLCBlbmFibGluZyBQYW5lbCBSZXBsYXkgb24gYW4gdW5jb21wcmVzc2Vk
IHN0cmVhbSB0aHJvdWdoDQo+IHRoZQ0KPiBicmFuY2ggZGV2aWNlIHNob3VsZCBjb25zaWRlciBh
bnkgc3RyZWFtIGluIGNvbXByZXNzZWQgbW9kZSB0aHJvdWdoDQo+IHRoZQ0KPiBzYW1lIGJyYW5j
aCBkZXZpY2UuDQoNClRoaXMgY2FzZSBpcyBub3QgdGhhdCB3ZWxsIGRvY3VtZW50ZWQgaW4gdGhl
IERQIHNwZWNpZmljYXRpb24uDQoNCk9wdGlvbnMgaGVyZSBhcmUgKGFzIEkgc2VlIHRoZW0pOg0K
DQoxLiANCktlZXAgZHNjX2VuYWJsZWRfb25fbGluaygpIGFuZCBsaW5rX2RzY19waXBlcyByZW5h
bWVkIGluIHBhdGNoIDMvNyBhcw0KdGhleS4NCg0KQWRkIGxpbmtfZmVjX3BpcGVzIGFuZCBtb3Zl
IGFsbCBGRUMgZW5hYmxpbmcgdG8gdXNlIHRoYXQgaW5zdGVhZCBvZg0KbGlua19mZWNfcGlwZXMu
DQoNCkNoZWNrIGR1cmluZyBwYW5lbCByZXBsYXkgY29tcHV0ZSBjb25maWcgaWYgYnJhbmNoIGRl
dmljZSBpcyBkb2luZw0KZGVjb2RpbmcgYW5kIGNhcGFibGUgdG8gZGVjb2RlIERTQy9QYW5lbCBS
ZXBsYXkgc3RyZWFtIGFuZCBjaG9vc2UgaWYNClBhbmVsIFJlcGxheSBjYW4gYmUgZW5hYmxlZCBv
ciBub3QuDQoNCjIuDQpLZWVwIGNoYW5nZXMgaW4gbXkgcGF0Y2hlcyBhbmQgYWRkIG9uZSBtb3Jl
IHBhdGNoIHRvIGRpc2FibGUgUGFuZWwNClJlcGxheSBjb21wbGV0ZWx5IGZvciB0aGlzIGNhc2Ug
YXMgaXQgYW55d2F5cyBzZWVtcyB0byBiZSBub3QgdGhhdCB3ZWxsDQpkb2N1bWVudGVkIGluIERQ
IHNwZWMuIE1pZ2h0IGJlIGFsc28gdGhhdCBkZXZpY2VzIGhhdmluZyB0aGlzIGNhc2UgKw0KUGFu
ZWwgUmVwbGF5IGNhcGFiaWxpdHkgZG9lc24ndCBldmVuIGV4aXN0Lg0KDQo+IA0KPiBUaGUgYWJv
dmUgaXMgaW4gY29udHJhc3QgdG8gdGhlIGNhc2Ugd2hlcmUgRFNDL1BhbmVsIFJlcGxheSBvZiBl
YWNoDQo+IG9mDQo+IHRoZSBERlAgY29ubmVjdG9ycyBvZiB0aGUgaHViIGNhbiBiZSBjb250cm9s
bGVkIHZpYSBhIHBlci1ERlANCj4gcGVlci10by1wZWVyIGJyYW5jaCBkZXZpY2UuDQoNClRoYW5r
IHlvdSBJbXJlIGZvciBwb2ludGluZyB0aGlzIG91dC4gSSBtaXNzZWQgdGhpcyBvbmUgYnJhbmNo
IGRldmljZQ0KY2FzZSBjb21wbGV0ZWx5Lg0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuY8KgIHwgNiArKystLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmRzYy5jIHwgMiArLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92ZHNjLmggfCAyICstDQo+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IGFkMmY2Yzc5ZjU4MDguLmY1ODIwMGQzOGFjMmMgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBA
QCAtMTc0MCw3ICsxNzQwLDcgQEAgc3RhdGljIGJvb2wNCj4gPiBpbnRlbF9zZWxfdXBkYXRlX2Nv
bmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiDCoAkJ
aWYgKCFjb25uZWN0b3ItPmRwLnBhbmVsX3JlcGxheV9jYXBzLnN1X3N1cHBvcnQpDQo+ID4gwqAJ
CQlnb3RvIHVuc3VwcG9ydGVkOw0KPiA+IMKgDQo+ID4gLQkJaWYgKGludGVsX2RzY19lbmFibGVk
X29uX2xpbmsoY3J0Y19zdGF0ZSkgJiYNCj4gPiArCQlpZiAoY3J0Y19zdGF0ZS0+ZHNjLmNvbXBy
ZXNzaW9uX2VuYWJsZSAmJg0KPiA+IMKgCQnCoMKgwqAgY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBs
YXlfY2Fwcy5kc2Nfc3VwcG9ydCAhPQ0KPiA+IMKgCQnCoMKgwqAgSU5URUxfRFBfUEFORUxfUkVQ
TEFZX0RTQ19TRUxFQ1RJVkVfVVBEQVRFKSB7DQo+ID4gwqAJCQlkcm1fZGJnX2ttcyhkaXNwbGF5
LT5kcm0sDQo+ID4gQEAgLTE4NDAsNyArMTg0MCw3IEBAIHN0YXRpYyBib29sDQo+ID4gX3BhbmVs
X3JlcGxheV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwNCj4gPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiA+IMKgCX0NCj4gPiDCoA0KPiA+IC0JaWYgKGlu
dGVsX2RzY19lbmFibGVkX29uX2xpbmsoY3J0Y19zdGF0ZSkgJiYNCj4gPiArCWlmIChjcnRjX3N0
YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlICYmDQo+ID4gwqAJwqDCoMKgIGNvbm5lY3Rvci0+
ZHAucGFuZWxfcmVwbGF5X2NhcHMuZHNjX3N1cHBvcnQgPT0NCj4gPiDCoAnCoMKgwqAgSU5URUxf
RFBfUEFORUxfUkVQTEFZX0RTQ19OT1RfU1VQUE9SVEVEKSB7DQo+ID4gwqAJCWRybV9kYmdfa21z
KGRpc3BsYXktPmRybSwNCj4gPiBAQCAtMzIzNSw3ICszMjM1LDcgQEAgdmVyaWZ5X3BhbmVsX3Jl
cGxheV9kc2Nfc3RhdGUoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkNCj4gPiDCoAkJcmV0dXJuOw0KPiA+IMKgDQo+ID4gwqAJZHJtX1dBUk5fT04oZGlzcGxh
eS0+ZHJtLA0KPiA+IC0JCcKgwqDCoCBpbnRlbF9kc2NfZW5hYmxlZF9vbl9saW5rKGNydGNfc3Rh
dGUpICYmDQo+ID4gKwkJwqDCoMKgIGNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUg
JiYNCj4gPiDCoAkJwqDCoMKgIGNydGNfc3RhdGUtPnBhbmVsX3JlcGxheV9kc2Nfc3VwcG9ydCA9
PQ0KPiA+IMKgCQnCoMKgwqAgSU5URUxfRFBfUEFORUxfUkVQTEFZX0RTQ19OT1RfU1VQUE9SVEVE
KTsNCj4gPiDCoH0NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92ZHNjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dmRzYy5jDQo+ID4gaW5kZXggOGYwNmMzYTRkNTZkZi4uMzVjOTNmY2JiNjQyNyAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+ID4gQEAgLTQz
MSw3ICs0MzEsNyBAQCB2b2lkIGludGVsX2RzY19lbmFibGVfb25fY3J0YyhzdHJ1Y3QNCj4gPiBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+IMKgCWNydGNfc3RhdGUtPmRzYy5jb21w
cmVzc2lvbl9lbmFibGUgPSB0cnVlOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gLWJvb2wgaW50ZWxf
ZHNjX2VuYWJsZWRfb25fbGluayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpj
cnRjX3N0YXRlKQ0KPiA+ICtib29sIGludGVsX2ZlY19lbmFibGVkX29uX2xpbmsoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSkNCj4gPiDCoHsNCj4gPiDCoAlz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gdG9faW50ZWxfZGlzcGxheShjcnRj
X3N0YXRlKTsNCj4gPiDCoA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92ZHNjLmgNCj4gPiBpbmRleCAzMzcyZjg2OTQwNTRkLi42MGQ4NjM5OTgwOGMwIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmgNCj4gPiBA
QCAtMjgsNyArMjgsNyBAQCB2b2lkIGludGVsX2RzY19lbmFibGUoY29uc3Qgc3RydWN0DQo+ID4g
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ID4gwqB2b2lkIGludGVsX2RzY19kaXNh
YmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gPiDCoGlu
dCBpbnRlbF9kc2NfY29tcHV0ZV9wYXJhbXMoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAq
cGlwZV9jb25maWcpOw0KPiA+IMKgdm9pZCBpbnRlbF9kc2NfZW5hYmxlX29uX2NydGMoc3RydWN0
IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gLWJvb2wgaW50ZWxfZHNj
X2VuYWJsZWRfb25fbGluayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRj
X3N0YXRlKTsNCj4gPiArYm9vbCBpbnRlbF9mZWNfZW5hYmxlZF9vbl9saW5rKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpOw0KPiA+IMKgdm9pZCBpbnRlbF9k
c2NfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ID4g
wqBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluDQo+ID4gwqBpbnRlbF9kc2NfcG93ZXJf
ZG9tYWluKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBlbnVtIHRyYW5zY29kZXINCj4gPiBjcHVf
dHJhbnNjb2Rlcik7DQo+ID4gLS0gDQo+ID4gMi40My4wDQo+ID4gDQoNCg==
