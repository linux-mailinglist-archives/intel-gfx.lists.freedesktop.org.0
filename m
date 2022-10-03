Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AAC5F35B2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 20:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8149C10E2C5;
	Mon,  3 Oct 2022 18:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FE8510E2C5
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664822194; x=1696358194;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=LPlqDzUI2MDu0G0Ei3m8PIDv+Vawrki9CweU76ecmXc=;
 b=OHCi+uwCdllugvU2TjWKxca7srHft5C0R3EzHEMgT2qEMFeQBsBjjITB
 P63VwXMffHZLPB8eNdpMglMneneF8csDCmwXFC+i881qfT+sNi1IlhZfG
 7OCsCxYz4IwYtdJ1nTUrgn+tHCSm3Xm7/jdi9V5uTFzWzgj8hO6WtszA6
 JQ8rKASH30D3KM87orZ66UceQb+1S+CCQ56qUhKoMvstOpBUY7pHVzx6/
 9Cr5f2VeqTwZLto8xw++6tQslWlKOb+jFPJy1pQHFPuW/IhdQze3Av42Z
 0ng3hKmzkEpqvmds5LFhaJcoJpJds0FZJJqoPC9CkK0Ys5B0PFbNjG5wX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="302706427"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="302706427"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 11:36:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="654481556"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="654481556"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 03 Oct 2022 11:36:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 11:36:22 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 11:36:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 11:36:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 11:36:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IfIIWaG6vi3qz5kUMSk9D0Y+oJXg/SSi/fNpV9dmnsL9Brew2ewiMbd3GmoGEyAcY0TJ1P/ZZTIJ4hmIcFzuTaOkftOI42jGOmbe9e+CBDz6Qq8PVXj7GLX2/o6mQ/HWR3aNxNTfGIeWt5Wddy6fKzc96A6UwzjpKEUlgH9s8I1mJdCgdAHvybKJos17TW/AbPT/mOL1cFT0dZBbzWH8To/QGUdufCqUTxEUPf6bDNotZjlA1e5UqWviqnuVhnVDhiWiEwzOzi5TM0kUnatx8qTcdUMqa7mi4yhHPOdnk3wSRL4Lsm4mRvOjOth3o4yp8kvzm4EBKBj8u5jt9j8uBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LPlqDzUI2MDu0G0Ei3m8PIDv+Vawrki9CweU76ecmXc=;
 b=PRK1bqCSyiEJNMPt7pJW1awqPaMLYO35d3J3ihGbcYtmgriW89XwUDQ3/HZbUgw3c71XDLgcejI3CdCfAPoDnUE94BWb7ovrIgNeMA8MKNz6ZQJ+g8WyGlvhN8S2FsSJbuQNZvfr9GQQd3nWCTM9poh5sG9xzMOxB/jxQjy9tnFYvxlpN+2l0oA7Lujzwy2bchSfL2A/Or9xcKwrTt6Pmny/RggAna2lZLDhyHvk0asdBJ1RLUo/0T7d3C4KirU945r7rIAsAH9MuHA4DrIixvnzdtUDV1MBnAxvBLFzx3Yx1LkDNtz2S9gVaSJYVxFlaP0leWjbAlzuj6mKni4GgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CH3PR11MB7346.namprd11.prod.outlook.com (2603:10b6:610:152::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Mon, 3 Oct
 2022 18:36:20 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5676.030; Mon, 3 Oct 2022
 18:36:20 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
Thread-Index: AQHY1RH/4OD0ck4xrk2Lg1Gg0uhg0639BHmA
Date: Mon, 3 Oct 2022 18:36:20 +0000
Message-ID: <6db74d66964d1db51649fe92003a9fe0dab52fae.camel@intel.com>
References: <20220930211836.148041-1-alan.previn.teres.alexis@intel.com>
 <20220930211836.148041-2-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220930211836.148041-2-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CH3PR11MB7346:EE_
x-ms-office365-filtering-correlation-id: bc43ee8f-3bf8-46f3-c92b-08daa56e2a9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: luQDKRUbKfqn7wyRquel3s47o6RC5g579Z5M+3ONjMA4nk4UPYsJKEgC3XhDYS7VhWX4ACd7qS+ywiYZ2MLXPai2nPAHTZSla+bDocSP8GIyF7toHfDG8sML+BbP5yVsGCZwvCXvetXmpTMrtHU+6/K5H/RD3hpyHTKMwQxiUm4E/IY5pUrXz2kpinqSUD258VQwEHkirp0ymmwOFEAQzFL5a4/nAWcX4Yu64R89k0UDrVxmbFW7e4I/3pwhLHzh5e4DaN6OKu/YNbk7u9abpXHDGN13GgqVjvALYcarIKgLg2yCfp6z0jvFjJG4O1c1FurEskvIpEBxfO+luutSxYrmn43vg500LD83SMsvyuoIKcip5FLGvmP548s6PhGB37vasT7Xs0JQmWzItiaV5W9VMg9saQhx+F1Rzhonz7+JiIkHTAaMfFhCqiBvXTjmJVMrNUgGLTOxMQqkhqiwjNAYTjkYUzGY294HEW6igjYPT8J78k8h9IK7HvnQ4zyPr6XJkJqzfcsh63QQgCZLUP8Binsp/yeWT+2Qno0BO9+dFkEArpMf503HiR5rNKMVOEOeO2PLMlVHQEkHEXwbHNmKC5a+B3ntrKeQTzaqtPHE+ubr5943J8AMLpQKg9dfu6eOMZv98PcsV0IN3iSFgljsrFN9d/D2hDrmJmlnrqKo11ap3IlftTcRRR+912yg1KylCtJ/C/GUekbDZxZrxANeeM/6/LGtdXRQ1WBaU3yZK+fx4Zqq82eBIIPTOIIDnjbGexqnTc/v4yiADtuT8g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(366004)(346002)(396003)(451199015)(66476007)(26005)(6512007)(2616005)(186003)(6506007)(38100700002)(36756003)(82960400001)(5660300002)(38070700005)(66946007)(6486002)(66446008)(83380400001)(71200400001)(2906002)(316002)(110136005)(8936002)(91956017)(66556008)(76116006)(122000001)(8676002)(64756008)(478600001)(41300700001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVUrVTJ3WEJHZ2NTUVRTYkU1ZCtmUG9qdzc0dnJmOGVpZ0I5T2NKY1FjQ3Bk?=
 =?utf-8?B?Vk4vcmpaaXptQUlqdWsxcEpIV2dkT2NrNENiN1U2aFpIaThMdmhuZHdsTW5a?=
 =?utf-8?B?b3JzbjhVcFRLNkJ0WmZUY0hQWU1QV3grTFRxR1ErN2ZmeGFzYnNtVlNvWnRj?=
 =?utf-8?B?YUVVSDZXdk5CeCtOL0lyRVUwVnVpaGM1Lyt3c2o4N1owVjVPY1JvZFEweGpE?=
 =?utf-8?B?VXBrWDNvY3dML0JjRTQvZGRGWXdFZjYyMmRMY05LdlFsSTJWbGsza0Zjd2xX?=
 =?utf-8?B?RzI4TEhrTjVYMVZMS3pzVHE0eGczY3RaREVaK0c3WlpQTSt2b2RVc0dyeEpC?=
 =?utf-8?B?YkoxdURhT2czQmhlcnlEeGZuaE1CTjQrUHFGOXc0aUFqdFJJTk1IYmk4VEQ0?=
 =?utf-8?B?RnZCTmpmVlNXRzRWTktsbG9CWlpRMmJ5ZWNScFQxdFg1Q2FwdzdGM2RBUFdl?=
 =?utf-8?B?TEoyY1UyRGFiNWRCM1lsWWtxM01EcERwUi9xemJkRjJCQkRLR1dWWFdxczRw?=
 =?utf-8?B?MTQ5VkwzNjRHMndtYjBiaU1oS1orTzQwTU1FWEdCdXhRTTBoYVl5U3VKc2JW?=
 =?utf-8?B?bXRBSWE4c2d1c2hLc0dOQlczbGM0NFBKVDR2cVE2Nk81cWZMdkkyQ1NSTkY4?=
 =?utf-8?B?WGJGUFhHemw3QnJCY1NMZjZsdmUxUlUxQ3FOZlNiQm95L1BRcHVqYS9zUEhB?=
 =?utf-8?B?YUIrQ0NiY3NSWHdzVGxsT3B5dXFHMGNsSm0xeWFZZ0dzcDgwQ1ZSOVA0Z3dO?=
 =?utf-8?B?Rmh5UzY2U282bGxYcSttZHREY3Z3TkVPOHRyVDlDNEI1Y3B4Mzh1dGtVQ0lS?=
 =?utf-8?B?b3RqdHVyalNPcHV5TitSa3FvckFxRkx1RmFCMTdvTWVVL2trcUo2N3BGQXJo?=
 =?utf-8?B?M3VmeHpOLzdZZHlROFlnSkU1R3ZBK1cvK014NWZNTGhPeHhSZ2FOREozbThS?=
 =?utf-8?B?TmNxanM5ellrdzM3UWUwTXZHZjNPMjQ4SGtPRFh6L3g1S0xDOWNTaklJWFlh?=
 =?utf-8?B?b0R4bDF4RnEzNzNaeTM2eTdVS29IdERLekdkNElDR1VBd0ZVR2hyNUNEaVZE?=
 =?utf-8?B?MHNqMWR1MHoyMEZtdDZxSHRJNDJGZTFpYkx4R2Y2K1IvRnpvcDZJTGVqRWI1?=
 =?utf-8?B?OWFHNjdyWmIvMnpSTHo2alJMSERZTGs1UysvVW5uRlZOOXpGVTZMOTVPL1Y3?=
 =?utf-8?B?ZERTcnZGK2ZrSXh0OXplVTdwMzFqWDFnL3pIQmRBTWhLMU91MlRNa0s2SXZK?=
 =?utf-8?B?bW4wcU1DTUhXUldhc0dBRGxtWVFXd0hKKzRCY1pOUTBjZHVZa1F5Mkh2UjZQ?=
 =?utf-8?B?aWU3ejhJdGVZOHFnSzFaLys2TU1aVVp1OXNHb3BwcWhMK3liVHN2MkpjOW1q?=
 =?utf-8?B?djFjSjF0NEQwaSs0bEprU0ZGTFhNUVhKdFdkK21MU2lidEx6elZPakFydTNK?=
 =?utf-8?B?Q3FnTklqbWpTb1lsN3dMRzZTVmJKS0pDYzdFSUZqQmpva0F0Ylh2d0ZSd2Zn?=
 =?utf-8?B?ejJzb3BkdzN4YmFpUk1aVjB5c0toVXMrcDRQRXZ3dFFJUXpPTjJxTlNNWnow?=
 =?utf-8?B?RklHRzVpTDl5WEZ5N2VzNUVYSDgwY2RKK2ZqYmZQQURxR0Rxd3FJUnk0WVlG?=
 =?utf-8?B?WGVrSWtER1hEanptUWk0UTVuMG9rWnVSWlVIY3VxTzNqWjJxeERkR1dFUzhM?=
 =?utf-8?B?OEJqeExwWERMUEg3bzk1VkdpY1VBdUFWZUpSNW0zV1gxanl6R21tV1dnK00v?=
 =?utf-8?B?RWZjZEVkak5oQ1hyTmU2Ny9zNVRoU0ZwTk1jdXNzVlpQMmltc01NV1ZaME1n?=
 =?utf-8?B?eng5dFZidFJmV3ZGSjVIWnprcFQrVTkydUVpWEFydCtML0hVeWNXK3hBNDNH?=
 =?utf-8?B?OGQ0SERZeC9uc1dTSXVJMHVySVFvT0VKdHRoV3NCYkNPSkdNcXBaTkhkcWNB?=
 =?utf-8?B?TCs4a3VYSVNIOGZ4YVlTQXVWRnptMHd5NGZkcVdIcGNDeENOQkxWaDRsVm1n?=
 =?utf-8?B?L2NScFdrQXppcXNTLy9OMmVEVlFSV1M5TjcveE5iTEN0dWRaMTYxWmVVYVRD?=
 =?utf-8?B?K3VFdmlXM00wM2haZ2hiTERReGUzSWtGU0gybFRyekdVQU9pQko4VHBFNW1i?=
 =?utf-8?B?Vm9aOUc2K3RpczRxMm40L255bko0ZlM5amRTMHlneEphVUhET2tVaHZwODJE?=
 =?utf-8?Q?PEsNM6ddD9AS+i6x5rVCTzs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF36842AD013084D971829FC7CFA51ED@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc43ee8f-3bf8-46f3-c92b-08daa56e2a9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2022 18:36:20.5912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 32tNSFwVAF26J/I3dZt7VbH/2yUtKz22SF03RY23iu8hQ0mwWQTwEN16RuRck9d+DzIxahPPX1HOEtJmk3g8Qhl9wCB0JgYtz0QrhOQHC8UJsI9i02QRoaADDJgz1Dy8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7346
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

SGkgSm9obiAtIGhvdyB3b3VsZCB5b3UgbGlrZSB0byBwcm9jZWVkPyBJIGhhdmUgcmUtcmV2J2Qg
YXMgcGVyIHlvdXIgb3JpZ2luYWwgcmV2aWV3IGNvbW1lbnQgb24gcmV2MS4NCg0KU2hhbGwgd2Ug
YWRvcHQgdGhpcyByZXYyJ3MgImRybV93YXJuIiBmb3IgdGhlIHdvcnN0LWNhc2UgKGtub3dpbmcg
d2VsbCB0aGF0IGdwdV9jb3JlX2R1bXAgaXMgc3RpbGwgYW4gZXh0ZXJuYWwgc3Vic3lzdGVtDQp0
aGF0IGNhbiBjdWxsIG91ciBkYXRhLCBidXQgYXQgbGVhc3Qgd2l0aGluIHRoaXMgc3Vic3lzdGVt
IHdlIGFyZSBhZGRpbmcgdGhpcyB3YXJuaW5nIGZvciB3b3JzdCBjYXNlIGFuZCBtZXJlbHkgYSBk
ZWJ1Zw0Kd2hlbiB3ZSB3YW50IHRoZSAzeCBjYXB0dXJlKS4gQXMgd2Uga25vdyBHdUMgb3BlcmF0
aW9uIGlzIHVuYXdhcmUgb2YgdGhlIGdwdS1jb3JlLWR1bXAgcmVzdHJpY3Rpb24gc28gaXRzIG5v
dCBoYXJkIHRvDQppbWFnaW5lIHRoZSBHdUMgY2FwdHVyaW5nIHRoZSBhbW91bnQgb2YgZGF0YSBm
b3IgdGhlIHdvcnN0IGNhc2Ugc2NlbmFyaW8gaWYgaGF2ZSBiaWcgcHJvYmxlbXMgaW4gdGhlIHdv
cmtsb2FkcyBvciBody4NCg0KQWRkaXRpb25hbGx5LCB3b3VsZCB5b3UgcHJlZmVyIHRvIGNvbXBs
ZXRlbHkgZHJvcCB0aGUgc3BhcmUgc2l6ZT8gU29tZSBjb250ZXh0OiB3aXRoIHRoZSBjYWxjdWxh
dGlvbiBmaXggd2UgYXJlDQphbGxvY2F0aW5nIDRNQiBidXQgd2Ugb25seSBuZWVkIDc4ayBhcyBt
aW4tZXN0Lg0KDQouLi5hbGFuDQoNCk9uIEZyaSwgMjAyMi0wOS0zMCBhdCAxNDoxOCAtMDcwMCwg
QWxhbiBQcmV2aW4gd3JvdGU6DQo+ICsJLyoNCj4gKwkgKiBEb24ndCBkcm1fd2FybiBvciBkcm1f
ZXJyb3IgaGVyZSBvbiAicG9zc2libGUiIGluc3VmZmljaWVudCBzaXplIGJlY2F1c2Ugd2Ugb25s
eSBydW4gb3V0DQo+ICsJICogb2Ygc3BhY2UgaWYgYWxsIGVuZ2luZXMgd2VyZSB0byBzdWZmZXIg
cmVzZXRzIGFsbCBhdCBvbmNlIEFORCB0aGUgZHJpdmVyIGlzIG5vdCBhYmxlIHRvDQo+ICsJICog
ZXh0cmFjdCB0aGF0IGRhdGEgZmFzdCBlbm91Z2ggaW4gdGhlIGludGVycnVwdCBoYW5kbGVyIHdv
cmtlciAobW92aW5nIHRoZW0gdG8gdGhlDQo+ICsJICogbGFyZ2VyIHBvb2wgb2YgcHJlLWFsbG9j
YXRlZCBjYXB0dXJlIG5vZGVzLiBJZiBHdUMgZG9lcyBydW4gb3V0IG9mIHNwYWNlLCB3ZSB3aWxs
DQo+ICsJICogcHJpbnQgYW4gZXJyb3Igd2hlbiBwcm9jZXNzaW5nIHRoZSBHMkggZXZlbnQgY2Fw
dHVyZS1ub3RpZmljYXRpb24gKHNlYXJjaCBmb3INCj4gKwkgKiAiSU5URUxfR1VDX1NUQVRFX0NB
UFRVUkVfRVZFTlRfU1RBVFVTX05PU1BBQ0UiKS4NCj4gKwkgKi8NCj4gIAlpZiAobWluX3NpemUg
PCAwKQ0KPiAgCQlkcm1fd2FybigmaTkxNS0+ZHJtLCAiRmFpbGVkIHRvIGNhbGN1bGF0ZSBHdUMg
ZXJyb3Igc3RhdGUgY2FwdHVyZSBidWZmZXIgbWluaW11bSBzaXplOiAlZCFcbiIsDQo+ICAJCQkg
bWluX3NpemUpOw0KPiAgCWVsc2UgaWYgKG1pbl9zaXplID4gYnVmZmVyX3NpemUpDQo+IC0JCWRy
bV93YXJuKCZpOTE1LT5kcm0sICJHdUMgZXJyb3Igc3RhdGUgY2FwdHVyZSBidWZmZXIgaXMgdG9v
IHNtYWxsOiAlZCA8ICVkXG4iLA0KPiArCQlkcm1fd2FybigmaTkxNS0+ZHJtLCAiR3VDIGVycm9y
IHN0YXRlIGNhcHR1cmUgYnVmZmVyIG1heWJlIHNtYWxsOiAlZCA8ICVkXG4iLA0KPiAgCQkJIGJ1
ZmZlcl9zaXplLCBtaW5fc2l6ZSk7DQo+ICAJZWxzZSBpZiAoc3BhcmVfc2l6ZSA+IGJ1ZmZlcl9z
aXplKQ0KPiAtCQlkcm1fbm90aWNlKCZpOTE1LT5kcm0sICJHdUMgZXJyb3Igc3RhdGUgY2FwdHVy
ZSBidWZmZXIgbWF5YmUgdG9vIHNtYWxsOiAlZCA8ICVkIChtaW4gPSAlZClcbiIsDQo+IC0JCQkg
ICBidWZmZXJfc2l6ZSwgc3BhcmVfc2l6ZSwgbWluX3NpemUpOw0KPiArCQlkcm1fZGJnKCZpOTE1
LT5kcm0sICJHdUMgZXJyb3Igc3RhdGUgY2FwdHVyZSBidWZmZXIgbGFja3Mgc3BhcmUgc2l6ZTog
JWQgPCAlZCAobWluID0gJWQpXG4iLA0KPiArCQkJYnVmZmVyX3NpemUsIHNwYXJlX3NpemUsIG1p
bl9zaXplKTsNCj4gIH0NCj4gIA0KPiAgLyoNCj4gLS0gDQo+IDIuMzQuMQ0KPiANCg0K
