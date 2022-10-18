Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A46A60278A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 10:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5B410EEF0;
	Tue, 18 Oct 2022 08:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4AC610EEF0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 08:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666083052; x=1697619052;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DeFI4QkJLRLpAfhPbtMjKWMrHL1L73rm3BHK+Ny5+Ak=;
 b=EYArTKln7gWBouWqVyghyTkFIDpKgSG6WI0qukcx9V//rVnFrRkRhjt5
 HqQmiYiEfIVCOOUJgOp9EZ3dw0jWmqxxxROmltXp/m6CA2MtFtqSpcbzR
 3QhdXt4fWxRK9fLHMGpB3OysO73huq9OCorP0ecKSDsRpf/AkVtPIAgD/
 GZc5ugHI1b1wRS7u04v01kpWh8/990nivKJAcDxY6J8u+gkrntOqYZlNx
 H6Rzk9heFuQHd8eNrrJ2au2rybaL1D6hPoaLyIGlCqpFpdRiiwzUdilB3
 Ojw4IrDxKthLXo7ITZly1V1ER3oUGnnxQ3V97uFRPT7H5m6VlSM1bcIUL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="392347496"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="392347496"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 01:50:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="697401686"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="697401686"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 18 Oct 2022 01:50:46 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 18 Oct 2022 01:50:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 18 Oct 2022 01:50:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 18 Oct 2022 01:50:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ST/+ohOxbxabbOk970lqeW3jLXlYlFRn1KrzggfA+PZPnOQxRQzo2yF/qJrr4SHmmuyk/OaTh7w7lCk4E8HG1lsIT6Ff5dVZhM4eugs/d2mAgNQpNlToIXeVxkEzwy3v2grXeJ1UgxLtketqXIvm1of4x258aPSk4cLQAqpNtCJFIeA6wYOU9FOba/erCfdYVQoyHQR78Aul8nV95ZLyugD03ezt5qqOOIEU2syLJlz6vuKy+cjJQyf71DNwXIYhG/msUi+HIb816q8QwccZ8e7TBbWrAKDxryNiNYyh23PO98IpYlMgfnxbFSKib/utV80Xh08XVBg04RUHVbir8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DeFI4QkJLRLpAfhPbtMjKWMrHL1L73rm3BHK+Ny5+Ak=;
 b=BmLYNE0uPVg5gDVIg3ahWxRJDyReygBsoBkdH0SSkosZQCBlOxk7S8RlpXp2pmSqcb8NvpsQuHZ0mJwgsdn2AYAizUUSN56Gd9UfDRfpEWxvKZ3jiQV84uQqECbEXQ+3AJN4XqtplV2nHX5FW6nQzLxM8QozYUIGOyITf/y1udplsQracrfeM7VKf8nTm+I0VCpFm5Bv+R2daYFFu+F+z4kJFmz/Q9lPV7K2HcFSZLvvFJLdW+zMXCmWy1jF1xUfehWbVn6npDBbW6oIJGIFYYk9rxwgLjhs2s3dHZim4dVBJz+eA9AleyEBZu7og2/FLQ5TqsUoAFWjHoJcdBcgkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Tue, 18 Oct
 2022 08:50:42 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::4b94:7187:5dcf:24b3]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::4b94:7187:5dcf:24b3%9]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 08:50:42 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual EDP scenario
Thread-Index: AQHY3MEzVmBV3ceNk02i9LdtxVV+ya4SmbQAgAFJnxA=
Date: Tue, 18 Oct 2022 08:50:41 +0000
Message-ID: <PH7PR11MB59819BD1273229803B55693AF9289@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221010155427.15735-1-animesh.manna@intel.com>
 <20221010155427.15735-2-animesh.manna@intel.com> <87wn8yiom1.fsf@intel.com>
In-Reply-To: <87wn8yiom1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CO6PR11MB5651:EE_
x-ms-office365-filtering-correlation-id: 176f9f01-0525-49b9-a865-08dab0e5d697
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UFQsbLSaHYMnJu5Z3nZ5qrqoJ65eG56HYJvZP3DubZudWW4/p2L4I9aD1IRy24Z9YuNuPK0Uvf/jxUPo0AXqfYhJjnIfS/qdUJn4Fn7KJsvPYDJ5cySOB+CICJSM76vkagqJSZJM4bNUUHRm+mdIliGmuUVOqRlEO/0oK6q18AN/V6jf3mO07XQpwQNKhweKkUx9p/nwBydAPwsk6ZuprTkTlERlRKrEBTub7KYvZ89rc8m6vjkGKRcqkFYJdRK/gOGXyIq5WQpFvq59gjHpkRXc51CF154068EPU3G/Vgb3y6AS9m8RLl2nuhOxx+Z2Nn0xnMFEMetNAM/LnGp9Rw0f/B1fwDsyCySm78bL8PVMp8ckEq+TF84B7qfUEvaeSHLHXewKeSStaBaUn0PyJ2qDQ49SYG5faXkkX4Fl1iPG0GR+XYHBX9ql19F5SfXW6nN8oMUTnTeXhIkhC3dH1N6LvNLh+9DrK2WvrLt0JfwgNKKgGyjOlHx1Jc6NL21uFLeOzariR68uICCEKbpwHxmd3kqskiIhdxZl8uW78eqh1hm4mLsfK8aheh61wp4hh9OHORt4FBlgz5S2MCMXETm+OaFwcFrwPjVyg2WeuiOZBoHwABXEvfhKsoRCl0XrFhZ568/pEU1trtr+gpKii4LE1McxlqgSGwBGOT+f81kPVJHuc0if+4EIHIXYVe2bN8+Dj++J2fyXG2qK3S6Hpw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(136003)(346002)(39860400002)(451199015)(83380400001)(38070700005)(82960400001)(86362001)(33656002)(55016003)(122000001)(38100700002)(66946007)(76116006)(66556008)(316002)(54906003)(110136005)(5660300002)(71200400001)(8936002)(186003)(66476007)(966005)(2906002)(478600001)(6506007)(7696005)(64756008)(26005)(52536014)(9686003)(41300700001)(66446008)(8676002)(4326008)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWdPNUtvNFp3YkkrK25PaDZObUdJdFpMNWNWV3J2TlpLUFdKdm5NQlpzZ29V?=
 =?utf-8?B?N0pMN1dHeTBLUjh2ajdPNjUzZ0dmbDRJbkNibnpMbzFlbDBwdnMzZnlZa1VQ?=
 =?utf-8?B?anlBUE1mbVdNdm9GcWVCa3RQZEltYmwxY1NJVFNUYUtkdHpwaFNHRXZ0RldX?=
 =?utf-8?B?UTVnSHJweE5rd0hYL05EQzc0SUFWaG9WRnNlMHJCbVZYM1VURERRZjlJRXBG?=
 =?utf-8?B?RlZUWHFnNEgybWcvUXl1Y2orWi9zSGY4bGw0VGFra0txK1VMU1RtNTUySlYw?=
 =?utf-8?B?djZZendPWUhxM0VBTWhIdUVQK1A0ZTRvMHNpTGFnK0dFUG1aSnA0MHIvRVRP?=
 =?utf-8?B?dENwdXhPdFNTZWpmMXN6a3c1WlhMTVV2c1pWWmwzaHRUaER1MDB2cVJjZlph?=
 =?utf-8?B?ZFlOUTRPU1R2N3hkN2hVYWxLNkpDT2ZUOXBhdGhkbHFvbUMrYm1yRHIra1F4?=
 =?utf-8?B?QitvbE5wSkd0YTVDbHNNSUdoa2FxYkdIMkx0bEZCNXY4ZTQ2VUYxSndLWGt6?=
 =?utf-8?B?SnE2cW1ZMnA4K2t6dTVFQmVJL2dEa2JKaURyMEZia3lHcEhUL0lXbFlhNUdN?=
 =?utf-8?B?OUhId1N6cmdvKzVqbUVCV1BTODdkak1JbmcxWFJodkc0NkRRMEtwZGkwc25U?=
 =?utf-8?B?Z0hVZE5LZ3Y3ajgxNHRCaVFJMlBBUlBWbWI1dUQ0RW9ZdmcrWkJkZGdKa1Fn?=
 =?utf-8?B?eWFISGJFYnZpOXdISnhBektuT0VmdWJvWDR3YU9PL2xURUhjS2prRitXZG05?=
 =?utf-8?B?N2lxcFUzSFFLTUFVTG41eEU2QzdBSHk4QWs1RUtwQXR1RXByTW9IMVNLdENo?=
 =?utf-8?B?eHIyNzRqUFlzN0NXeXo1M0htK1NqbkJ5Q01YdTZhTFFrdHpibG5DY3EwcUc3?=
 =?utf-8?B?OWw1L1RoaW4yZXpBZjVFeTJQSFdFcUs5QnRVNXFhdk5DaWFKOWtqNDNlbW9s?=
 =?utf-8?B?djJIL3ZmTWh0a0hvVW9KS1NYbUxDUHdQRHVML0ZsVExHbCsxdm5nVmtFbE1R?=
 =?utf-8?B?MUtvYWRPR2VXQkZWTlh1Y3pSOU5QQUlMcHR5N0t2VUV1QWVaMkZqQ1lqa1h4?=
 =?utf-8?B?Z3ZXMnRzeFV2djFYbTVPSCtWODZoM0IyQ0ZUMmtwKytCZ0tiUmNmaUFuRnlh?=
 =?utf-8?B?RGtXY1M4amZSc21kQTZWUTBPYWY1N0FnV3JIRG5TTEZoaVRJR0ZHSHBIZDZ0?=
 =?utf-8?B?bGp1N1VicUh3Qy8yV1BrTTBFLzkvTnZkS2FhbFZzbkZVdmRPc2JHVzdBUFF4?=
 =?utf-8?B?bkNPWGs0RUZGbHNMVGYwQ09uMThEL3krTVpIUzljQXJzYVZQWWhabjA3RXdY?=
 =?utf-8?B?ZGdjNTk5czk3aGF2Y2Vad3FnREN1TDNLNTRiKzFqSERRTnE0MG9STFo5SWNk?=
 =?utf-8?B?bnlrMS8rc0ZTcTlTUzcvMGNHSFMxbHFMQWg5T2xhaVZzWTJpdi9PVWxiU0g2?=
 =?utf-8?B?NzhVV2FRYU9pSFVEWm1SbjR5dEUrL1krOFNvZXFCNVhxUENmOFo0b0xlV0NR?=
 =?utf-8?B?TndITVJJSHNWRU0weXNzdEtkQjFNQ2hoOUx0K1ViUGdwSWhPOUlveGFHWlRm?=
 =?utf-8?B?ZFlWVDNQcGZvYjloUTlsaFJucGttSHQwMDloeUxIM1NRY3dKMks4SWd3R0gw?=
 =?utf-8?B?SHJiV2NCNXlaRVhHdXlYQ0NYejRVcktFQnNqSkFFcjcxaW5hemplZFdJVHdO?=
 =?utf-8?B?TlB0cE9PU2R2UXBKaHpoNlhXb1NGcUJvQVIwd05RUDB4WDJIdUtUTFdOOU5K?=
 =?utf-8?B?dk12OU1sSSt2Rmx2VnFESTBiKzdyYWc4K3VTQXVqUHdVVFJJS0RuQlNMMzFT?=
 =?utf-8?B?d2pFcXlMRk5nVzdqRkpEVit3clhtNlJLYWpoTmxURDZSd2w4dzdwcC9DR0Jy?=
 =?utf-8?B?b3gvQzFPRnlpU0tBR1M1ZDFXMS9Fbzd4OS9kcndCNWVoTzRiaXB2VEt3NCtF?=
 =?utf-8?B?UzA4UGhqL2VRbjRFZWZnL3Zyc2tZU3poeUcyS2lmM1NPZTQvd3o5OUNROWFz?=
 =?utf-8?B?dDJOMVF4QVBnMktsY2VnU0RBZWZBQU1WMU1KK01Eb0cveE1QYnFsc3QzMVRB?=
 =?utf-8?B?ODZrYndYbEJybmJCWm5SZHpKVFg3d3V3NUlHWEFUWHl2dmFmc1dqb0pmcCti?=
 =?utf-8?Q?gFH3ikeUJdvz+fzwGcGbeIn1Y?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 176f9f01-0525-49b9-a865-08dab0e5d697
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2022 08:50:42.0296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: po2meVt/5ApOQqU5wfUu8pWR/FH7JkYOAThucS3ugQcCmN1+MOReeGfW/Bg+6Dbdp/7VoA8RNGRzWloeWrXA/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5651
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual
 EDP scenario
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

VGhhbmtzIEphbmkgZm9yIHJldmlldy4NCkZsb2F0ZWQgYSBuZXcgdmVyc2lvbiBhZnRlciBhZGRy
ZXNzaW5nIHRoZSByZXZpZXcgY29tbWVudHMgaW4gdGhpcyBzZXJpZXMuDQpodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEwOTgyMC8NCg0KUmVnYXJkcywNCkFuaW1lc2gN
Cg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGph
bmkubmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBPY3RvYmVyIDE3LCAyMDIyIDY6
MzkgUE0NCj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGlu
dGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBNYW5uYSwgQW5pbWVzaCA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QNCj4gPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPjsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9wcHM6IEVuYWJsZSAybmQgcHBz
IGZvciBkdWFsIEVEUCBzY2VuYXJpbw0KPiANCj4gT24gTW9uLCAxMCBPY3QgMjAyMiwgQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEZyb20gZGlzcGxh
eSBnZW4xMiBvbndhcmRzIHRvIHN1cHBvcnQgZHVhbCBFRFAgdHdvIGluc3RhbmNlcyBvZiBwcHMg
YWRkZWQuDQo+ID4gQ3VycmVudGx5IGJhY2tsaWdodCBjb250cm9sbGVyIGFuZCBwcHMgaW5zdGFu
Y2UgY2FuIGJlIG1hcHBlZCB0b2dldGhlcg0KPiA+IGZvciBhIHNwZWNpZmljIHBhbmVsLiBDdXJy
ZW50bHkgZHVhbCBQUFMgc3VwcG9ydCBpcyBicm9rZW4uIFRoaXMgcGF0Y2gNCj4gPiBmaXhlcyBp
dCBhbmQgZW5hYmxlcyBmb3IgZGlzcGxheSAxMisuDQo+ID4NCj4gPiB2MTogSW5paXRhbCByZXZp
c2lvbi4NCj4gPiB2MjogQ2FsbGVkIGludGVsX2Jpb3NfcGFuZWxfaW5pdCB3L28gUE5QSUQgYmVm
b3JlIGludGVsX3Bwc19pbml0Lg0KPiA+IFtKYW5pXQ0KPiA+IHYzOiBTZXQgcHBzX2lkIHRvIC0x
IGZvciBwbnBpZCB0eXBlIG9mIHBhbmVsIHdoaWNoIHdpbGwgYmUgdXNlZCBieQ0KPiA+IGJ4dF9w
b3dlcl9zZXF1ZW5jZXJfaWR4KCkgdG8gc2V0IDJuZCBwcHMgaW5zdGFuY2UgYXMgZGVmYXVsdCBm
b3IgMm5kDQo+ID4gRURQIHBhbmVsLiBbSmFuaV0NCj4gPiB2NDogRWFybHkgcmV0dXJuIGZvciBQ
QU5FTF9UWVBFX0ZBTExCQUNLLiBbSmFuaV0NCj4gPg0KPiA+IENjOiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiA+IENjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50
ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFA
aW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYyAgICAgICAgICB8IDEzICsrKysrKysrKysrLS0NCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmggICAgICAgICAgfCAgMiArLQ0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8ICAxICsNCj4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgICAgICAgfCAx
MCArKysrKysrLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBz
LmMgICAgICAgICAgIHwgMTIgKysrKysrKysrKystDQo+ID4gIDUgZmlsZXMgY2hhbmdlZCwgMzEg
aW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiBpbmRleCBjMjk4N2YyYzJiMmUuLmRk
M2NkMmNhODE1ZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jDQo+ID4gQEAgLTMxODMsMTUgKzMxODMsMjIgQEAgdm9pZCBpbnRlbF9iaW9zX2lu
aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUpDQo+ID4gIAlrZnJlZShvcHJvbV92
YnQpOw0KPiA+ICB9DQo+ID4NCj4gPiAtdm9pZCBpbnRlbF9iaW9zX2luaXRfcGFuZWwoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ID4gK2Jvb2wgaW50ZWxfYmlvc19pbml0X3BhbmVs
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+ICAJCQkgICBzdHJ1Y3QgaW50ZWxf
cGFuZWwgKnBhbmVsLA0KPiA+ICAJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVy
X2RhdGEgKmRldmRhdGEsDQo+ID4gIAkJCSAgIGNvbnN0IHN0cnVjdCBlZGlkICplZGlkKQ0KPiA+
ICB7DQo+ID4gIAlpbml0X3ZidF9wYW5lbF9kZWZhdWx0cyhwYW5lbCk7DQo+ID4gLQ0KPiANCj4g
UGxlYXNlIGRvbid0IGRvIHN1cGVyZmx1b3VzIHdoaXRlc3BhY2UgY2hhbmdlcy4NCj4gDQo+ID4g
IAlwYW5lbC0+dmJ0LnBhbmVsX3R5cGUgPSBnZXRfcGFuZWxfdHlwZShpOTE1LCBkZXZkYXRhLCBl
ZGlkKTsNCj4gPg0KPiA+ICsJaWYgKHBhbmVsLT52YnQucGFuZWxfdHlwZSA9PSBQQU5FTF9UWVBF
X1BOUElEIHx8DQo+ID4gKwkgICAgcGFuZWwtPnZidC5wYW5lbF90eXBlID09IFBBTkVMX1RZUEVf
RkFMTEJBQ0spIHsNCj4gPiArCQlwYW5lbC0+dmJ0LmVkcC5wcHNfaWQgPSAtMTsNCj4gPiArDQo+
ID4gKwkJaWYgKCFlZGlkICYmIGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19lZHAoZGV2ZGF0
YSkpDQo+ID4gKwkJCXJldHVybiB0cnVlOw0KPiA+ICsJfQ0KPiA+ICsNCj4gDQo+IAlpZiAocGFu
ZWwtPnZidC5wYW5lbF90eXBlID09IFBBTkVMX1RZUEVfRkFMTEJBQ0sgJiYgIWVkaWQpIHsNCj4g
CQlwYW5lbC0+dmJ0LmJhY2tsaWdodC5jb250cm9sbGVyID0gLTE7DQo+IAkJcmV0dXJuIHRydWU7
DQo+IAl9DQo+IA0KPiA+ICAJcGFyc2VfcGFuZWxfb3B0aW9ucyhpOTE1LCBwYW5lbCk7DQo+ID4g
IAlwYXJzZV9nZW5lcmljX2R0ZChpOTE1LCBwYW5lbCk7DQo+ID4gIAlwYXJzZV9sZnBfZGF0YShp
OTE1LCBwYW5lbCk7DQo+ID4gQEAgLTMyMDMsNiArMzIxMCw4IEBAIHZvaWQgaW50ZWxfYmlvc19p
bml0X3BhbmVsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICppOTE1LA0KPiA+ICAJcGFyc2Vf
cHNyKGk5MTUsIHBhbmVsKTsNCj4gPiAgCXBhcnNlX21pcGlfY29uZmlnKGk5MTUsIHBhbmVsKTsN
Cj4gPiAgCXBhcnNlX21pcGlfc2VxdWVuY2UoaTkxNSwgcGFuZWwpOw0KPiA+ICsNCj4gPiArCXJl
dHVybiBmYWxzZTsNCj4gPiAgfQ0KPiA+DQo+ID4gIC8qKg0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gPiBpbmRleCBlMzc1NDA1YTc4MjguLmY4
ZWYwMjc0ZjNlZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5oDQo+ID4gQEAgLTIzMiw3ICsyMzIsNyBAQCBzdHJ1Y3QgbWlwaV9wcHNfZGF0YSB7
ICB9IF9fcGFja2VkOw0KPiA+DQo+ID4gIHZvaWQgaW50ZWxfYmlvc19pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdik7IC12b2lkDQo+ID4gaW50ZWxfYmlvc19pbml0X3BhbmVs
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiArYm9vbCBpbnRlbF9iaW9z
X2luaXRfcGFuZWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICAJCQkg
ICBzdHJ1Y3QgaW50ZWxfcGFuZWwgKnBhbmVsLA0KPiA+ICAJCQkgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEsDQo+ID4gIAkJCSAgIGNvbnN0IHN0cnVjdCBl
ZGlkICplZGlkKTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gaW5kZXggNDRhYjI5NmMxZjA0Li4zN2U4MzA5
MjA3YmYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IEBAIC0zMDcsNiArMzA3LDcgQEAgc3RydWN0IGlu
dGVsX3ZidF9wYW5lbF9kYXRhIHsNCj4gPiAgCQlpbnQgcHJlZW1waGFzaXM7DQo+ID4gIAkJaW50
IHZzd2luZzsNCj4gPiAgCQlpbnQgYnBwOw0KPiA+ICsJCWludCBwcHNfaWQ7DQo+IA0KPiBVbm5l
Y2Vzc2FyeS4NCj4gDQo+ID4gIAkJc3RydWN0IGVkcF9wb3dlcl9zZXEgcHBzOw0KPiA+ICAJCXU4
IGRycnNfbXNhX3RpbWluZ19kZWxheTsNCj4gPiAgCQlib29sIGxvd192c3dpbmc7DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggNzBiMDY4
MDZlYzBkLi41MGQ5MjIzNTYyZTIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+ID4gQEAgLTUyMzUsNiArNTIzNSw3IEBAIHN0YXRpYyBib29sIGlu
dGVsX2VkcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiA+
ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSAmZHBfdG9fZGlnX3BvcnQoaW50ZWxf
ZHApLT5iYXNlOw0KPiA+ICAJYm9vbCBoYXNfZHBjZDsNCj4gPiAgCXN0cnVjdCBlZGlkICplZGlk
Ow0KPiA+ICsJYm9vbCByZXRyeTsNCj4gPg0KPiA+ICAJaWYgKCFpbnRlbF9kcF9pc19lZHAoaW50
ZWxfZHApKQ0KPiA+ICAJCXJldHVybiB0cnVlOw0KPiA+IEBAIC01MjU0LDYgKzUyNTUsOSBAQCBz
dGF0aWMgYm9vbCBpbnRlbF9lZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RwDQo+ICpp
bnRlbF9kcCwNCj4gPiAgCQlyZXR1cm4gZmFsc2U7DQo+ID4gIAl9DQo+ID4NCj4gPiArCXJldHJ5
ID0gaW50ZWxfYmlvc19pbml0X3BhbmVsKGRldl9wcml2LCAmaW50ZWxfY29ubmVjdG9yLT5wYW5l
bCwNCj4gPiArCQkJCSAgICAgIGVuY29kZXItPmRldmRhdGEsIE5VTEwpOw0KPiA+ICsNCj4gPiAg
CWludGVsX3Bwc19pbml0KGludGVsX2RwKTsNCj4gPg0KPiA+ICAJLyogQ2FjaGUgRFBDRCBhbmQg
RURJRCBmb3IgZWRwLiAqLw0KPiA+IEBAIC01Mjg4LDkgKzUyOTIsOSBAQCBzdGF0aWMgYm9vbCBp
bnRlbF9lZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4g
PiAgCQllZGlkID0gRVJSX1BUUigtRU5PRU5UKTsNCj4gPiAgCX0NCj4gPiAgCWludGVsX2Nvbm5l
Y3Rvci0+ZWRpZCA9IGVkaWQ7DQo+ID4gLQ0KPiA+IC0JaW50ZWxfYmlvc19pbml0X3BhbmVsKGRl
dl9wcml2LCAmaW50ZWxfY29ubmVjdG9yLT5wYW5lbCwNCj4gPiAtCQkJICAgICAgZW5jb2Rlci0+
ZGV2ZGF0YSwgSVNfRVJSKGVkaWQpID8gTlVMTCA6IGVkaWQpOw0KPiA+ICsJaWYgKHJldHJ5KQ0K
PiA+ICsJCWludGVsX2Jpb3NfaW5pdF9wYW5lbChkZXZfcHJpdiwgJmludGVsX2Nvbm5lY3Rvci0+
cGFuZWwsDQo+ID4gKwkJCQkgICAgICBlbmNvZGVyLT5kZXZkYXRhLCBJU19FUlIoZWRpZCkgPyBO
VUxMIDoNCj4gZWRpZCk7DQo+ID4NCj4gPiAgCWludGVsX3BhbmVsX2FkZF9lZGlkX2ZpeGVkX21v
ZGVzKGludGVsX2Nvbm5lY3RvciwgdHJ1ZSk7DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiA+IGluZGV4IGI5NzJmYTZlYzAwZC4uZGE5OGIx
ODA2MzlhIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHBzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bw
cy5jDQo+ID4gQEAgLTIxOCw2ICsyMTgsMTYgQEAgYnh0X3Bvd2VyX3NlcXVlbmNlcl9pZHgoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiAgCS8qIFdlIHNob3VsZCBuZXZlciBsYW5kIGhl
cmUgd2l0aCByZWd1bGFyIERQIHBvcnRzICovDQo+ID4gIAlkcm1fV0FSTl9PTigmZGV2X3ByaXYt
PmRybSwgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpOw0KPiA+DQo+ID4gKwlpZiAoY29ubmVj
dG9yLT5wYW5lbC52YnQuZWRwLnBwc19pZCA9PSAtMSkgew0KPiANCj4gCWlmIChiYWNrbGlnaHRf
Y29udHJvbGxlciA9PSAtMSkNCj4gICAgICAgICAJYmFja2xpZ2h0X2NvbnRyb2xsZXIgPSBjb25u
ZWN0b3ItPmVuY29kZXItPnBvcnQgPT0gUE9SVF9BID8gMCA6IDE7DQo+IA0KPiA+ICsJCS8qDQo+
ID4gKwkJICogVXNlIDJuZCBQUFMgaW5zdGFuY2UgYXMgZGVmYXVsdCBmb3IgMm5kIEVEUCBwYW5l
bC4NCj4gPiArCQkgKi8NCj4gPiArCQlpZiAoY29ubmVjdG9yLT5lbmNvZGVyLT5wb3J0ID09IFBP
UlRfQSkNCj4gPiArCQkJcmV0dXJuIDA7DQo+ID4gKwkJZWxzZQ0KPiA+ICsJCQlyZXR1cm4gMTsN
Cj4gPiArCX0NCj4gPiArDQo+ID4gIAlpZiAoIWludGVsX2RwLT5wcHMucHBzX3Jlc2V0KQ0KPiA+
ICAJCXJldHVybiBiYWNrbGlnaHRfY29udHJvbGxlcjsNCj4gPg0KPiA+IEBAIC0xNDMwLDcgKzE0
NDAsNyBAQCB2b2lkIGludGVsX3Bwc19pbml0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ID4gIAlpbnRlbF9kcC0+cHBzLmluaXRpYWxpemluZyA9IHRydWU7DQo+ID4gIAlJTklUX0RFTEFZ
RURfV09SSygmaW50ZWxfZHAtPnBwcy5wYW5lbF92ZGRfd29yaywNCj4gPiBlZHBfcGFuZWxfdmRk
X3dvcmspOw0KPiA+DQo+ID4gLQlpZiAoSVNfR0VNSU5JTEFLRShpOTE1KSB8fCBJU19CUk9YVE9O
KGk5MTUpKQ0KPiA+ICsJaWYgKElTX0dFTUlOSUxBS0UoaTkxNSkgfHwgSVNfQlJPWFRPTihpOTE1
KSB8fCBESVNQTEFZX1ZFUihpOTE1KSA+PQ0KPiA+ICsxMikNCj4gPiAgCQlpbnRlbF9kcC0+Z2V0
X3Bwc19pZHggPSBieHRfcG93ZXJfc2VxdWVuY2VyX2lkeDsNCj4gPiAgCWVsc2UgaWYgKElTX1ZB
TExFWVZJRVcoaTkxNSkgfHwgSVNfQ0hFUlJZVklFVyhpOTE1KSkNCj4gPiAgCQlpbnRlbF9kcC0+
Z2V0X3Bwc19pZHggPSB2bHZfcG93ZXJfc2VxdWVuY2VyX3BpcGU7DQo+IA0KPiAtLQ0KPiBKYW5p
IE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyDQo=
