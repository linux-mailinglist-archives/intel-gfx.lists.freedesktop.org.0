Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 944E888FE85
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 13:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C24B1123E8;
	Thu, 28 Mar 2024 12:01:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fuEi2avZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B5CD1123E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 12:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711627305; x=1743163305;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=maDNx4zfwB2IhbqmhPK+SwSxplNaD6wZgKynU3JiPSk=;
 b=fuEi2avZbU8pl0NHrjjMpn7O8qABfqnpk/3EFcBCgnRYfCmVfo4BiCQv
 2sKYG/2QopT0CViezQln3DzFaziuN7982oVnMuL6CbfDfJRD9Q5mgh7bW
 cRE9nK85bw/YZUd4hxwXs7gAYIQdhC0ZgXhtiA/2TtfmqJudDeqx/DSrq
 iNnwe17QFKsAs4TCAV6JiqqNPg6j6UG8bMDDIw4CmI8F/ur+YGRPOAzal
 5sqJDe0S2I9ANQIku0m7CIYQWqGmCJfwyyPp/rvfDQE3PrIYhn+MIsxqC
 4BEcVZ6V9tkwKyiu9lMihfGlcC9eJXdhAfZarnoT7QRgYb8bXpfgSItMl Q==;
X-CSE-ConnectionGUID: F8QH7CcYQ8KnAtZ4GNFHzQ==
X-CSE-MsgGUID: Q+42VoQlT3GTdSwjUOoZeg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="10556922"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="10556922"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:01:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21281992"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 05:01:45 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 05:01:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 05:01:44 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 05:01:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcKE1sfLuu1+/sD/0VwEgXRWrvsTcOlohPWq4O0TWf9uT2qB5jjTEiP5K8Si9hJnhu08Ji6MzHr33NAyUkwqqi3fGNHJLNALzzas/n05koJM9kK76acrtGx8bObODqgxPNftMoGuBujABL+wgAkkMEqyy9AYVHmxFZu0glwGyVySLT7MbePdKwleei44xxGEMRcJINxvjKYuklFrKXzDrUHsQ9Waiim0kYlD1KqzLdaorbDSUbl6xotFp7IQIjAldloaOivYn2rMJxyGvBTtwfGdA0hZlYIQFS/+OU1XXCeEoerGhZi65PH8TYVaP6PHMELwpP/Fusr6JsNE37JEVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=maDNx4zfwB2IhbqmhPK+SwSxplNaD6wZgKynU3JiPSk=;
 b=INyEuHsEfPtVIS5rgueh+0wZpikwgtIr4Io4hJE0Qe2LhzmBygkK5EF53xp3L4Gg3MTXprK8VoZ0iAJasaEWkHIBURel29J4YZcorfEOAuylb75nREcqAL3aPQv+V5qgoOvTl7O3il/Y6tGp0GhTM5LclGEK4BKHNHWpoC28wl80Cu/Gjb4xmFJTbZLMDyb1pAdCmY6Q2elG20jCiy+BR/DubkimkL6tV4iIDBKcJcrp5wvT4pNJNhJ0LlcTFXMcMuly9VKdfk9xpKk+HZeHPn9pOEJ6FlvJAkxcWq7h9wghlokaBIO/8cIY+jsii2TFKDlG/9qwjLkEtjJfCCuxEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 12:01:35 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 12:01:32 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 08/13] drm/i915: Extract
 intel_dbuf_mdclk_min_tracker_update()
Thread-Topic: [PATCH 08/13] drm/i915: Extract
 intel_dbuf_mdclk_min_tracker_update()
Thread-Index: AQHagG64Yq9nZClRaE+UG9KgiRvsL7FNDkcA
Date: Thu, 28 Mar 2024 12:01:31 +0000
Message-ID: <DM4PR11MB6360DD3A1AC8D1D4A87B1AD4F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7354:EE_
x-ms-office365-filtering-correlation-id: 3ff0b1b4-1765-4a27-7c04-08dc4f1ecefd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OeE5yo6I8mQ6Nxn16/RHUU5Jf81ey7dH1ISF490R38JJUnhWcaNCFRLfes928hSR3oSJBfJ5dV/dVoYHtmXlaK6OuOZPtkp++jWs5jtz6Lvr0WSjcZUEtS6zsGP7mIpXgzXFH7kwPwj+MzJqghIDZt1x+hXoNVfYParKwgnr4jnWVi0/6ZNRAgQ7egwm7oV1sxtVzkQD1W8gv5FG3CGbG4tB/YfEmdwN5AMph1o05nchMrDWKhVRFPS99vvBQ4MolK3NxXd12T6o0JqwlYDV5lNyACRjcER5dCbrGsIcR1TxbcodWvUSgOpVKHBQHKnLKS/jGxIDce3BsRB2UGk/SIftjRBCzZaCxwsbqDSFcu4GCvBJ7K8cfRJ4jokDYhYXPcAsbosT1w/vJ6Ffcy9gXj6VsJ249z0iUfWEYq/ppSSDnFVNWaVnxpeeZ33tVbUqvYDFAsFPrkmB8h6D4vZ2kBZbqndzDmOhVZlQuTAyn4ONqDBbNwkjx13GnBLONfgsBAtJEh582sJgjvasCSOOpG4/GWcTTwPuAfjP5+IllnvLtBwSE1HVq+QY4xvJwN3NuYR5fzahhMITrbv9TvBzslBoOjVkVQhffeqkmurULIO2w9uL4JI4bs0UFDioWnSApct84lHocMFMxIRiI9BitTs4UgJggXypBrkQUGTEi8Iw3E0lr41S6Y0wFbKcUC8i4TNNm2e3TdqVDFTyTJzwCS8lWVUgPqjkmBonv3Bb6zk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWo3SU44eDh0Qk15M3pSTWhNTWU2U2lxbk1lWm82YzJOZHlyZHBScWJhSGhs?=
 =?utf-8?B?RlFGUlVIUlBxV3dGYzIwaXlqWTgxOEVMUWFDN1NrckpRQmkyM2F6OUhCbUZK?=
 =?utf-8?B?TkhmdXBPN2RxcW1YSENrV2tWVEtLNVl3QU1xMFNjV2E0ZUZUdHIzRnc1NmMy?=
 =?utf-8?B?K0thZWNLZXZvYWM2YUd3aExjQXFyQkJ1bUtXMHk3TGJaOVJkc05qMzhGeDlV?=
 =?utf-8?B?cVJTQVJqTi9ZdVUzL0QyMm42bk94Z2JZTFdzMVZ5K3kyRWptWDBNR2JySlJ1?=
 =?utf-8?B?dnBuOE15ZHFsUUprZGE1amlUbHlyTkJETHgxdkJncEpuM1lVd3lMMDczZXZH?=
 =?utf-8?B?YmhIbXRicXJoUUtSWmk0RzlMSWNqR0lnbmtabDNPSWVkRFprYUFobFgrYit3?=
 =?utf-8?B?RVZpbzJuWGx4ajhNK0h4MlpJS3FuY0F1V1pxcFp1cjdaVnNnR2xycExLbTZH?=
 =?utf-8?B?em94T01ab3pTSGhvdWV3U1ZqVk5NZ1hWeHN2aUtUYWE1YzlZQ0JDZExKSmtW?=
 =?utf-8?B?YUlHSWNNRDlxRExaRkxVcTVXb2VPVlpwTzlMYkIza2gyemVGSktSbVVac0p0?=
 =?utf-8?B?aE10N3RMT2IrMGVXUENlOVR6YzFCeDdOY0JFVWp3eDNINS9ta2hqb3NNd1Jm?=
 =?utf-8?B?RTVFeWx2NW9lbTE2amtjVXZrbUgrcjY5WC9xYmhHVzBOdUZTTUhWKzNpRm9Q?=
 =?utf-8?B?UVZSSUpLZlhuV1JOL0ltcTcyMGh0N0lpQXZndEs0TUJRT3EwT1FBeWNjQ1U4?=
 =?utf-8?B?NENSbjlwR2h4OHZxU29GNFpMMDhSeEdidjI4QjN3dDZ4R2NFOWxoZm9JTnJB?=
 =?utf-8?B?RXZsbUVoUkhDR2NkTWFSdmtUNkFiOTdVcGxmYjd4d29rOXVnNzB4K3pnRGV5?=
 =?utf-8?B?cEJJanZETTE4MWtiMFY2WjByZWovNHQzUnI1RmcyWkdxR0NRN1dUZnlNMGN6?=
 =?utf-8?B?ZEV3ODFlbFMwWUFoTS9KbjhRSWNTNGFoVjRkNlY0c25tVjk0UVNhdGVHOHgy?=
 =?utf-8?B?YkMrcHY2aU5rKzAwRlhIWnpEMzhlSDl5SitQSW5vZFNQc0pVRHljREROM3hP?=
 =?utf-8?B?QWtMT2RGWFpjOHRsWGJCRThMNXkwN3lDNlBkYWY5c2I5ci9OVFBqT0RhRmtK?=
 =?utf-8?B?MXVuT29XQi9wTnJyeTEzOGdrNVRmQXlraW94MldPOGEra09VZWxtSkhHeGNI?=
 =?utf-8?B?blozUzlrU0JFZk5DOTNmaE5ud01iWlY1MUppVWVNVVFhanZ1QllSWGRTVXoy?=
 =?utf-8?B?UDRuY3ZTTENLZVBmUWRuR0pvZnFPeEh4RnRoUGNUZnphcHFJVEs0UTdHR3JF?=
 =?utf-8?B?OXRTUTV6dExGVHR5cTM2UHc4VWFRNjkybTQwMUc0TEVqbXVYMENKZ1g0V24x?=
 =?utf-8?B?ZkFNVExWL29NS0NZM1VpbmF1bHRkcjNDamdiMHErRXo1YnNpblFZZU1zQzZm?=
 =?utf-8?B?bndKUmlPTHZySWFKWFFSSEZsOUtMUmhUdDRvR3huT1BIZEJ5Z2d6UWdPanBm?=
 =?utf-8?B?SGVjcktQYlFhejEzeWpJMmYzTGNyU2VqTlFLTzBUY3QyVEVjTGRoOC9xamZB?=
 =?utf-8?B?RDlMazR4ZzJZVHArWG4yWVRxUGhSRThiSGZ2V0w0U281U0ZEYmFPTkRPemxh?=
 =?utf-8?B?VTdwSkMrTng5UnpJdFN6bWJ5WDA5NkFjMEU5cCtwcFd6T0ZHN2tKTnZ1TXhI?=
 =?utf-8?B?UHFLdnFORmgyTklXeGdodDR2Wk1kT2lhUEtnMENTOVh5RCtLbUVKUWY0SkNo?=
 =?utf-8?B?QmQwc1M2Rm8yZldlR3dSNDY5NDYreVUra1VjVmhYUU5nU3RaZlRsV1Y0T3hI?=
 =?utf-8?B?aTJOZ08zak9yNjV0bjlEelZrbGpzUHA3RFZmbjBoTFJmQ3lhWGlTNlkrWWFG?=
 =?utf-8?B?cnVqcy9nNTFUSnkvekFCYWZ6dFlHTVB0YXArS2tvaU1BNkdwMHZJbU1mVEVw?=
 =?utf-8?B?WlNUQk9ZRVZ6S1pIeDgycGJYUFV6K0tzV1hiZkkwN2tCMXV5anJ6OFVTMnl0?=
 =?utf-8?B?RzdobmkvNC9QTTA2UnZzZVUreGh5bGV2eTBBcjVhMGxYVnV5YXFwZ2RKNkt2?=
 =?utf-8?B?WDZVUHk1UjJYZlNaVEx6SzY4My9hWXMyT1RCWkRKT3FwbUFwU1ZlajhsWlJC?=
 =?utf-8?Q?XpZTMQ6FWWqjy5SW3NrpGDX9G?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ff0b1b4-1765-4a27-7c04-08dc4f1ecefd
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 12:01:31.9541 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rQ04i7qQLyhQ+Ajd0hgG2927ILR+Hd7KQ1dOqELYfACHL+ST6ubjWYqTsu520TtV7qZI76zyxmW2C9PMKKmU3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMjcsIDIwMjQgMTE6MTYgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA4
LzEzXSBkcm0vaTkxNTogRXh0cmFjdA0KPiBpbnRlbF9kYnVmX21kY2xrX21pbl90cmFja2VyX3Vw
ZGF0ZSgpDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiANCj4gRXh0YWN0IHRoZSBzdHVmZiB0aGF0IHdyaXRlcyB0aGUgZGJ1Zi9t
YnVzIHJhdGlvbiBzdHVmZiBpbnRvIGl0cyBvd24gZnVuY3Rpb24uIFdpbGwNCg0KTml0OiBUeXBv
IGluIGV4dHJhY3QgYW5kIHJhdGlvDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTog
VW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBoZWxwIHdpdGggY29ycmVj
dGx5IHNlcXVlbmNpbmcgdGhlIG9wZXJhdGlvbnMgZG9uZSBkdXJpbmcgbWJ1cyBwcm9ncmFtbWlu
Zy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9z
a2xfd2F0ZXJtYXJrLmMgfCA0MyArKysrKysrKysrKystLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDI1IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gaW5kZXggZjdlMDMwNzhi
ZDQzLi43NzY3YzVlYWRhMzYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC0zNjUzLDYgKzM2NTMsMzAgQEAgdm9pZCBpbnRlbF9k
YnVmX21kY2xrX2NkY2xrX3JhdGlvX3VwZGF0ZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwgdTggcmF0aW8NCj4gIAkJCSAgICAgREJVRl9NSU5fVFJBQ0tFUl9TVEFURV9TRVJWSUNF
KHJhdGlvIC0gMSkpOyAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIGludGVsX2RidWZfbWRjbGtfbWlu
X3RyYWNrZXJfdXBkYXRlKHN0cnVjdA0KPiAraW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkgew0K
PiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5k
ZXYpOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9kYnVmX3N0YXRlICpvbGRfZGJ1Zl9zdGF0ZSA9
DQo+ICsJCWludGVsX2F0b21pY19nZXRfb2xkX2RidWZfc3RhdGUoc3RhdGUpOw0KPiArCWNvbnN0
IHN0cnVjdCBpbnRlbF9kYnVmX3N0YXRlICpuZXdfZGJ1Zl9zdGF0ZSA9DQo+ICsJCWludGVsX2F0
b21pY19nZXRfbmV3X2RidWZfc3RhdGUoc3RhdGUpOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVS
KGk5MTUpID49IDIwICYmDQo+ICsJICAgIG9sZF9kYnVmX3N0YXRlLT5tZGNsa19jZGNsa19yYXRp
byAhPSBuZXdfZGJ1Zl9zdGF0ZS0NCj4gPm1kY2xrX2NkY2xrX3JhdGlvKSB7DQo+ICsJCS8qDQo+
ICsJCSAqIEZvciBYZTJMUEQgYW5kIGJleW9uZCwgd2hlbiB0aGVyZSBpcyBhIGNoYW5nZSBpbiB0
aGUgcmF0aW8NCj4gKwkJICogYmV0d2VlbiBNRENMSyBhbmQgQ0RDTEssIHVwZGF0ZXMgdG8gcmVs
YXRlZCByZWdpc3RlcnMgbmVlZA0KPiB0bw0KPiArCQkgKiBoYXBwZW4gYXQgYSBzcGVjaWZpYyBw
b2ludCBpbiB0aGUgQ0RDTEsgY2hhbmdlIHNlcXVlbmNlLiBJbg0KPiArCQkgKiB0aGF0IGNhc2Us
IHdlIGRlZmVyIHRvIHRoZSBjYWxsIHRvDQo+ICsJCSAqIGludGVsX2RidWZfbWRjbGtfY2RjbGtf
cmF0aW9fdXBkYXRlKCkgdG8gdGhlIENEQ0xLIGxvZ2ljLg0KPiArCQkgKi8NCj4gKwkJcmV0dXJu
Ow0KPiArCX0NCj4gKw0KPiArCWludGVsX2RidWZfbWRjbGtfY2RjbGtfcmF0aW9fdXBkYXRlKGk5
MTUsIG5ld19kYnVmX3N0YXRlLQ0KPiA+bWRjbGtfY2RjbGtfcmF0aW8sDQo+ICsJCQkJCSAgICBu
ZXdfZGJ1Zl9zdGF0ZS0+am9pbmVkX21idXMpOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBp
bnRlbF9kYnVmX21idXNfam9pbl91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHN0YXRl
LT5iYXNlLmRldik7IEBAIC0zNjgzLDEwDQo+ICszNzA3LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxf
ZGJ1Zl9tYnVzX2pvaW5fdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gKnN0YXRl
KSAgc3RhdGljIHZvaWQgdXBkYXRlX21idXNfcHJlX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRv
X2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsNCj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfZGJ1Zl9zdGF0
ZSAqb2xkX2RidWZfc3RhdGUgPQ0KPiAtCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9kYnVmX3N0YXRl
KHN0YXRlKTsNCj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfZGJ1Zl9zdGF0ZSAqbmV3X2RidWZfc3Rh
dGUgPQ0KPiAtCQlpbnRlbF9hdG9taWNfZ2V0X25ld19kYnVmX3N0YXRlKHN0YXRlKTsNCj4gDQo+
ICAJaWYgKCFIQVNfTUJVU19KT0lOSU5HKGk5MTUpKQ0KPiAgCQlyZXR1cm47DQo+IEBAIC0zNjk3
LDIwICszNzE3LDcgQEAgc3RhdGljIHZvaWQgdXBkYXRlX21idXNfcHJlX2VuYWJsZShzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAkgKi8NCj4gIAlpbnRlbF9kYnVmX21i
dXNfam9pbl91cGRhdGUoc3RhdGUpOw0KPiANCj4gLQlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0g
MjAgJiYNCj4gLQkgICAgb2xkX2RidWZfc3RhdGUtPm1kY2xrX2NkY2xrX3JhdGlvICE9IG5ld19k
YnVmX3N0YXRlLQ0KPiA+bWRjbGtfY2RjbGtfcmF0aW8pIHsNCj4gLQkJLyoNCj4gLQkJICogRm9y
IFhlMkxQRCBhbmQgYmV5b25kLCB3aGVuIHRoZXJlIGlzIGEgY2hhbmdlIGluIHRoZSByYXRpbw0K
PiAtCQkgKiBiZXR3ZWVuIE1EQ0xLIGFuZCBDRENMSywgdXBkYXRlcyB0byByZWxhdGVkIHJlZ2lz
dGVycyBuZWVkDQo+IHRvDQo+IC0JCSAqIGhhcHBlbiBhdCBhIHNwZWNpZmljIHBvaW50IGluIHRo
ZSBDRENMSyBjaGFuZ2Ugc2VxdWVuY2UuIEluDQo+IC0JCSAqIHRoYXQgY2FzZSwgd2UgZGVmZXIg
dG8gdGhlIGNhbGwgdG8NCj4gLQkJICogaW50ZWxfZGJ1Zl9tZGNsa19jZGNsa19yYXRpb191cGRh
dGUoKSB0byB0aGUgQ0RDTEsgbG9naWMuDQo+IC0JCSAqLw0KPiAtCQlyZXR1cm47DQo+IC0JfQ0K
PiAtDQo+IC0JaW50ZWxfZGJ1Zl9tZGNsa19jZGNsa19yYXRpb191cGRhdGUoaTkxNSwgbmV3X2Ri
dWZfc3RhdGUtDQo+ID5tZGNsa19jZGNsa19yYXRpbywNCj4gLQkJCQkJICAgIG5ld19kYnVmX3N0
YXRlLT5qb2luZWRfbWJ1cyk7DQo+ICsJaW50ZWxfZGJ1Zl9tZGNsa19taW5fdHJhY2tlcl91cGRh
dGUoc3RhdGUpOw0KPiAgfQ0KPiANCj4gIHZvaWQgaW50ZWxfZGJ1Zl9wcmVfcGxhbmVfdXBkYXRl
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAtLQ0KPiAyLjQzLjINCg0K
