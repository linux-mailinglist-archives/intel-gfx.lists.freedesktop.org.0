Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2027321E7
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 23:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8A710E555;
	Thu, 15 Jun 2023 21:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C389C10E553
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 21:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686865810; x=1718401810;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BPzRp7OwTZ2cadJ1Z28quEteI0u9OMO+81A9Lh1BqC0=;
 b=gzNDIvhb4N9Jcw1qpBhPDHKVy7fhIMv9Bc4AcvWMo5T3Vl9znS/Slekm
 jns84dmKjxhdX5uZ2y41oW5qFImVH60X7U1nj/eLsmVg0dlE7H7QzBXwU
 7uC55Y0erkxUBlIZLwnCOnAJivREutVhc5glkr1yhCuSZ2ZLhRs93ToB2
 qh0DdF61yPe1YJhxRaJKqfTxjbJSYo1iBy11c9lpIBay6pV/2u6nUkzEn
 +zr2UjrtkiEkeKA0aVqnlr/6pgpv902jsHf4MBI4V35YvZo7BlZfDs2Gr
 BLjcgSnL3o0OhEDV2qiblmkn/7tim6uHjOF8DHacqC3l080IeIpKwHoKe g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="348756636"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="348756636"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 14:50:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="689967860"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="689967860"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 15 Jun 2023 14:50:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:50:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:50:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 14:50:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 14:50:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h6w5bnJdnjcgXX7kVVBEWE6UkTwHHXexBEBZfL0x9y55kS2OXIIIWLJV6/apElDEvXNHue4oV2E2bUduwCr5ZLdR7dIU+QKEWnQTwLq0+fbR5Qf+LmLTLGjjKW5TFqJLJ+0ZF8Y21HARDSK3I7kI6CewqOH51hbsgGK0IENPQbJ/tKxXPHaF1DosP8ZYaXvtCirKGM5DqgZB7Tp8S5fB/gNFmbmIOP2aNhJ6faWng5eHNgn/XH51UQkgLIwCuRYNaAzhlhd2za5oUOm0RMkNDlxVHM05FvVOV5H+Yk2IuT+vPdtCWeiB9PEsi/aGh9Eki4lLk4d9U8jtmA9Znqz4Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BPzRp7OwTZ2cadJ1Z28quEteI0u9OMO+81A9Lh1BqC0=;
 b=Jagmast7VSyQAF+GdmSuJriAaXRN96EVs4dLmzqLInnB4DMP9qJIB+2C4maKbGjDfxOFuKb8G7Oy3vJd2WwRK7PNzBh2j98lw32dP7FtwIqhL92u1nZEC3n8BXQ7HHe4JjEI1y2DFEX+2LYn2k+GlFvGKfy5H4hRCkt0uzI0d1JgF9FbIu5iSJQbuY/46MWWjYSCAAg2rHQ1NI2e3Y/zU+02atg49VnRCoD1FJe5HvHwVszumhqcboCnE4j+AycZfZCkVAchFNIsQJoxa4zeyGfz+qK2/81PKot22bbqfnqgvNzBP5ZXbp3fDkGydiGEK+/LJyR2TYuM2VTB2I0iCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by PH0PR11MB5610.namprd11.prod.outlook.com (2603:10b6:510:e9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Thu, 15 Jun
 2023 21:50:06 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%5]) with mapi id 15.20.6455.039; Thu, 15 Jun 2023
 21:50:06 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 07/11] drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and
 graphics step
Thread-Index: AQHZn0ZiZdQSBiYy7Uiz59AdgS87uq+MZ9MQ
Date: Thu, 15 Jun 2023 21:50:06 +0000
Message-ID: <SJ2PR11MB77151D556233BB45E36E821FF85BA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
 <20230615050015.3105902-8-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615050015.3105902-8-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: dnyaneshwar.bhadane@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|PH0PR11MB5610:EE_
x-ms-office365-filtering-correlation-id: 50e3d063-e6e2-4b16-fd2d-08db6dea7b6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +KA6GQmz2ebN5rvCRTuTF95EQBPpEfv+8tMIt+s9xZwqqzG2tx0Nb2L9faw8nOIrW124xx0iQ71W7M9qxu9rTtY8ebF7zq0/XZwCYtpGsaZOmz3H4LuplRwIUdTwJTgs6mZv8WxicM4rUTb00lmAeVR/BJeNpEvyk7mQhsAwxokv3mbKs9qAqSiFKVeeYs6a3n/dXvZo1wj4CGllNaeV7UGQUi6/87CSFXXDV4k0M8JtPZ46L2gIhVYfbXPYPitu/ONmY1Xaz4XMgL4axT11xr1xUjYwI1zB/NTESHVvSM2LvqT+67pMRoGpZf0QeXXk6bdTadCGrXU8Zkg9ivrK/aZ5nHeLYqnKx0ORs2KWQzJcaRTSmIzQZ+OJYixVLKmRFIpzIFXFJUJMfPoWT7y2NIIlwcrhbhZ6UnAVK+yVgdQKxtjPndv1mq14eWHFg1HRVpBmNQoU+WNeLJin+O1W79StdD7Py3JRT5Zjdngxd7H8QQUVNs29xfGToNgkE7qo7kFPn9o4SksKNo0BircVsMnXR/G6hQrVyknQhrRPRaBg0kMekK41eP0OUN4TESXCmk8VH/HTrDkBTDdv5QbzbR+SOAGFJ8sw3ZEM0gOWYUjK0EQpQyVpbS29WWCaLHtt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(366004)(376002)(396003)(451199021)(53546011)(52536014)(5660300002)(82960400001)(38100700002)(186003)(122000001)(83380400001)(6506007)(2906002)(26005)(107886003)(9686003)(38070700005)(478600001)(55016003)(66446008)(66946007)(66476007)(316002)(33656002)(71200400001)(8936002)(64756008)(66556008)(8676002)(7696005)(86362001)(41300700001)(76116006)(4326008)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SWM0THF4Q2MwRS9uT2gyRUk2anVzeEZ2dTdUd1FxbzhtbitKNlo5YWlKb0l5?=
 =?utf-8?B?Sm1YSDc1Z2EvQWg3SERNL3h4S3IzckxKWGVwSkhmUE01V2JPaUVlM2ZsdUF3?=
 =?utf-8?B?M0Z1S0lIUDZNTkpQdElyY2NOdWxGSUZlRW4rUGhCSUttOFpOUVQ0cXgxbFdY?=
 =?utf-8?B?L1BqeDl3cVJoSEZSRW50MzFtRUt3QzZBTjcxZDZrUGxtTHVhcXVnNDhJODh4?=
 =?utf-8?B?aldvTm14NEczQWJod3NPRm9XbVI3WkJoYmpINXJCT1BHdlNLM0V1bGYxR1Bp?=
 =?utf-8?B?UDBhR0lxbXg0OHAzNkQ0T2Y2WHZNNUlkSExXdmpwc2VXeDRpVUx0SVN1aFVJ?=
 =?utf-8?B?aXJvd0xwVW1taDNVTXdZS2I1dzFWZWM5MURrVEQvNENHQ3I3MjdBckVpUDMy?=
 =?utf-8?B?MzhUNExPREVqN0J1NXdHckw4SjVhQWFtTmVpMmMxS3lEcmR0M3JVSDJ0MlVT?=
 =?utf-8?B?MklneWtURjhYUy9JQXNYQzRRb2pBU1RLeVJjOUpSYmN2SzIrTWppZXd2WE5u?=
 =?utf-8?B?VHJ5WGlhQmdlY3orbDhyT21lTzYyVGVnUWxQYitTWW55NWVVZHZLK2ZNa2lT?=
 =?utf-8?B?bXVWbG13YjBHeU12MEdFa2JJODFZNldDUVRhdHdwSktRTmFJQnRIR3JQMGs5?=
 =?utf-8?B?S1lidWFncFAzbytNL1dVTU94QmJ2S2pSV2RTN3JDUlFjeUE0ZFZ4ZXJFV1pP?=
 =?utf-8?B?UlUxanlrb1RuWjJ0dUVIeld0U0xNVHZSM0ZLaGRRT1BsUFA2dG5tSlpDWGNW?=
 =?utf-8?B?cW1JSGRqTEQycVhENFZ4R2JGOVZVSHU2VWJINzVZL0oyLy9nSnMrZExOSjdU?=
 =?utf-8?B?NTZGZFgvUzBiZHBqNXJ4Zk5wQTBkaTJsTVpwMXppYlZRYXl4OFoxZlMvRUF5?=
 =?utf-8?B?RXdsb1NYazJXR0FkQmhrZ1dXUk84QzdCK20zaG92MjJ5TkIreWNyb3RPa2dZ?=
 =?utf-8?B?ZG9XVEVSQTJ5VDBONzB6Snp2blpmQjFpb1dqQUlReHozTVg5dzdKRVFBeWR3?=
 =?utf-8?B?bnFvRUNQMzdJeSt2VkU5K0JZYnhxTStVYUpPNjl5RTBNaUl5ckhXZWZpSXFz?=
 =?utf-8?B?eUxkamY5M2ZMY2Z3RUtNMDZabXRpTVFHWlZIWW45eDVJajgyTHZFS0pmZ2dV?=
 =?utf-8?B?dFFwYk9Zb245Slo1dGFBUWttSTJqN0szdEtYQVh5T1Zpdlh6bldGUUtPTkor?=
 =?utf-8?B?TnByYkdiOGg3b3k0bXZ3TnVyTFRxRVVnSEJsM283dTYzWHo4L3NFVkpoNWQ3?=
 =?utf-8?B?cjRCNzNkSXdzM28vT1pjbm03YWUxUlBCUVpDcUdLRHhHT3Z3TGFlWjdXWGFO?=
 =?utf-8?B?Vi9QT0dQRkhNSzJIVUM4MThkTUJHSk1HOVNnWWRKam1IZ3NLcUhUd2Uvbmgw?=
 =?utf-8?B?ZkUzUmdDb05uZnhXbTlJcVZUbHU4dnQwRkpGczZadlhWTHpTRzdjUThmR1hQ?=
 =?utf-8?B?UTJVakdBY0J3Z00rZG8xajAxdlUxUHM1Mk9abkx0cGNHenN6Zmx5NFFEYVlP?=
 =?utf-8?B?S0duTUVobWo1WlhKR2dxWUJNWmZDamF2Wk9rUnNQVzdZeE85R3paTUdsY2pV?=
 =?utf-8?B?VWxCMmdRNVZtLzZuWXJPcHJhcHk2dkJ0WEx4MlVHbFFiQkJGL05EYUQ4RThI?=
 =?utf-8?B?dVJHYWVsZTBCTWwxZkEyL0tBYjFKcHZOL3pHT0orZjNMa2o3Wk93a095UTNM?=
 =?utf-8?B?WG1CWC9ESlZWSGZtYWJUMTJlK2lxZEpiV1ZCMnY1OW5tWmt6ajIybXVMZHBz?=
 =?utf-8?B?L1lacFZVU3BsR2RYVWQ3cGZXbDZPL3hjOEVFc2tKTERsZGJZay9tM0tYU3Fj?=
 =?utf-8?B?VFRuZTdRaGcwR2hFcGNXVE9JYUNNbTNpRHhPenlKSUVDNlp6Sm56TUZWZmNH?=
 =?utf-8?B?NTZFZFFqbUZiV0Y1MmJUaUpDRURHc21UYlpyTFhhQmFvMlpQbk5IbHNQNUV2?=
 =?utf-8?B?TlNrWnN5aysyR2VnUU9qL2UvRStVWklRRVlJL3ZKVEY4UWFuRUZmc2MxQTZx?=
 =?utf-8?B?WkhJL29FK3dwMzhpak91T1BNVmQvTWZCcFY1NzB6VzQxZXIzbzNIMkErZ0Vo?=
 =?utf-8?B?Ui9OSzdOZnByODNzbWlVLzNNR0lPWmxLQzVaU0RDY2hKeUZPQUVmNjhoUmpQ?=
 =?utf-8?Q?u1QKacgXaKZUzitML3gOArlt7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50e3d063-e6e2-4b16-fd2d-08db6dea7b6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 21:50:06.3451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tImZdeT1CkefL6fXkAY/38Lfe1TR1aFgDV9g5tam4lD1a40SuyxlddwX73pVwY6tK06x6tdt1xxfsk0vTQpDuA0W4KZbZ0eriZZ1kM//j3c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5610
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
 display and graphics step
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQmhhZGFuZSwgRG55YW5l
c2h3YXIgPGRueWFuZXNod2FyLmJoYWRhbmVAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXks
IEp1bmUgMTQsIDIwMjMgMTA6MDAgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gQ2M6IEF0d29vZCwgTWF0dGhldyBTIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNv
bT47IFNyaXZhdHNhLCBBbnVzaGENCj4gPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+OyBCaGFk
YW5lLCBEbnlhbmVzaHdhcg0KPiA8ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFtQQVRDSCAwNy8xMV0gZHJtL2k5MTUvYWRscDogcy9BRExQL0FMREVSTEFLRV9QIGZv
ciBkaXNwbGF5IGFuZA0KPiBncmFwaGljcyBzdGVwDQo+IA0KPiBGcm9tOiBBbnVzaGEgU3JpdmF0
c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQo+IA0KPiBEcml2ZXIgcmVmZXJzIHRvIHRo
ZSBwbGF0ZnJvbSBBbGRlcmxha2UgUCBhcyBBRExQIGluIHBsYWNlcyBhbmQgQUxERVJMQUtFX1Ag
aW4NCgkJCV5eXiBub3lpY2VkIEkgaGF2ZSBtYWRlIGEgdHlwbwnwn5idIEBCaGFkYW5lLCBEbnlh
bmVzaHdhciBZb3UgY2FuIGZpeCB0aGUgdHlwbyBhbmQgYWRkIHlvdSBTLU8tQiB0b28gd2l0aCBt
aW5lIGluIHRoZSBuZXh0IHNwaW4uDQoNCkFudXNoYQ0KPiBzb21lLiBNYWtpbmcgdGhlIGNvbnNp
c3RlbnQgY2hhbmdlIHRvIGF2b2lkIGNvbmZ1c2lvbiBvZiB0aGUgcmlnaHQgbmFtaW5nDQo+IGNv
bnZlbnRpb24gZm9yIHRoZSBwbGF0Zm9ybS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBT
cml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgICAgICAgICB8IDIgKy0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyAgICAgIHwgMiArLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgICAgICAgfCA4ICsr
KystLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxh
bmUuYyB8IDQgKystLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAg
ICAgICAgICAgICAgfCA0ICsrLS0NCj4gIDUgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygr
KSwgMTAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jDQo+IGluZGV4IDJhY2ZhMDQzNTY3NS4uODMxZDEyNThlYTNmIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0z
NTU5LDcgKzM1NTksNyBAQCB2b2lkIGludGVsX2luaXRfY2RjbGtfaG9va3Moc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUNCj4gKmRldl9wcml2KQ0KPiAgCQlkZXZfcHJpdi0+ZGlzcGxheS5jZGNsay50
YWJsZSA9IGRnMl9jZGNsa190YWJsZTsNCj4gIAl9IGVsc2UgaWYgKElTX0FMREVSTEFLRV9QKGRl
dl9wcml2KSkgew0KPiAgCQkvKiBXYV8yMjAxMTMyMDMxNjphZGwtcFthMF0gKi8NCj4gLQkJaWYg
KElTX0FETFBfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0IwKSkgew0KPiAr
CQlpZiAoSVNfQUxERVJMQUtFX1BfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLA0KPiBT
VEVQX0IwKSkNCj4gIAkJCWRldl9wcml2LT5kaXNwbGF5LmNkY2xrLnRhYmxlID0NCj4gYWRscF9h
X3N0ZXBfY2RjbGtfdGFibGU7DQo+ICAJCQlkZXZfcHJpdi0+ZGlzcGxheS5mdW5jcy5jZGNsayA9
ICZ0Z2xfY2RjbGtfZnVuY3M7DQo+ICAJCX0gZWxzZSBpZiAoSVNfQURMUF9SUExVKGRldl9wcml2
KSkgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jDQo+IGluZGV4IGM2ZDM3NmQ0MTRiOC4uNDdmZTgzMTEwNjdlIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+IEBAIC0zNzgxLDcg
KzM3ODEsNyBAQCBzdGF0aWMgdm9pZCBhZGxwX2NtdGdfY2xvY2tfZ2F0aW5nX3dhKHN0cnVjdA0K
PiBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaW50ZSAgew0KPiAgCXUzMiB2YWw7DQo+
IA0KPiAtCWlmICghSVNfQURMUF9ESVNQTEFZX1NURVAoaTkxNSwgU1RFUF9BMCwgU1RFUF9CMCkg
fHwNCj4gKwlpZiAoIUlTX0FMREVSTEFLRV9QX0RJU1BMQVlfU1RFUChpOTE1LCBTVEVQX0EwLCBT
VEVQX0IwKSB8fA0KPiAgCSAgICBwbGwtPmluZm8tPmlkICE9IERQTExfSURfSUNMX0RQTEwwKQ0K
PiAgCQlyZXR1cm47DQo+ICAJLyoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGluZGV4IGY2MWQzOWQyYjBmYy4uMDBjOThjMmI0MzI0IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTYzOSw3ICs2Mzks
NyBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQ0KPiAgCX0NCj4gDQo+ICAJLyogV2FfMjIwMTIyNzgyNzU6YWRsLXAgKi8NCj4gLQlpZiAo
SVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfRTApKSB7DQo+ICsJ
aWYgKElTX0FMREVSTEFLRV9QX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9F
MCkpIHsNCj4gIAkJc3RhdGljIGNvbnN0IHU4IG1hcFtdID0gew0KPiAgCQkJMiwgLyogNSBsaW5l
cyAqLw0KPiAgCQkJMSwgLyogNiBsaW5lcyAqLw0KPiBAQCAtODA3LDcgKzgwNyw3IEBAIHRnbF9k
YzNjb19leGl0bGluZV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2Rw
LA0KPiAgCQlyZXR1cm47DQo+IA0KPiAgCS8qIFdhXzE2MDExMzAzOTE4OmFkbC1wICovDQo+IC0J
aWYgKElTX0FETFBfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0IwKSkNCj4g
KwlpZiAoSVNfQUxERVJMQUtFX1BfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQ
X0IwKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAkvKg0KPiBAQCAtOTc1LDcgKzk3NSw3IEBAIHN0
YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50
ZWxfZHAsDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gIAl9DQo+IA0KPiAtCWlmIChJU19BRExQX0RJ
U1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkpIHsNCj4gKwlpZiAoSVNfQUxE
RVJMQUtFX1BfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0IwKSkgew0KPiAg
CQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIlBTUjIgbm90IGNvbXBsZXRlbHkNCj4gZnVu
Y3Rpb25hbCBpbiB0aGlzIHN0ZXBwaW5nXG4iKTsNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgCX0N
Cj4gQEAgLTEwMzMsNyArMTAzMyw3IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3Zh
bGlkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IA0KPiAgCS8qIFdhXzE2MDExMzAz
OTE4OmFkbC1wICovDQo+ICAJaWYgKGNydGNfc3RhdGUtPnZyci5lbmFibGUgJiYNCj4gLQkgICAg
SVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjApKSB7DQo+ICsJ
ICAgIElTX0FMREVSTEFLRV9QX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9C
MCkpIHsNCj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ICAJCQkgICAgIlBTUjIg
bm90IGVuYWJsZWQsIG5vdCBjb21wYXRpYmxlIHdpdGggSFcgc3RlcHBpbmcNCj4gKyBWUlJcbiIp
Ow0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IGluZGV4IDI1YjA2Y2VkOWNlNy4uMjQ1
OGE5ZWEyNWJhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF91bml2ZXJzYWxfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBAQCAtMjE3NCw3ICsyMTc0LDcgQEAgc3RhdGljIGJv
b2wgc2tsX3BsYW5lX2hhc19yY19jY3Moc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
DQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+ICAJLyogV2FfMjIwMTExODYwNTcgKi8NCj4gLQlp
ZiAoSVNfQURMUF9ESVNQTEFZX1NURVAoaTkxNSwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+ICsJaWYg
KElTX0FMREVSTEFLRV9QX0RJU1BMQVlfU1RFUChpOTE1LCBTVEVQX0EwLCBTVEVQX0IwKSkNCj4g
IAkJcmV0dXJuIGZhbHNlOw0KPiANCj4gIAlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTEpDQo+
IEBAIC0yMjAwLDcgKzIyMDAsNyBAQCBzdGF0aWMgYm9vbCBnZW4xMl9wbGFuZV9oYXNfbWNfY2Nz
KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+
IA0KPiAgCS8qIFdhXzIyMDExMTg2MDU3ICovDQo+IC0JaWYgKElTX0FETFBfRElTUExBWV9TVEVQ
KGk5MTUsIFNURVBfQTAsIFNURVBfQjApKQ0KPiArCWlmIChJU19BTERFUkxBS0VfUF9ESVNQTEFZ
X1NURVAoaTkxNSwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+
ICAJLyogV2FfMTQwMTMyMTU2MzEgKi8NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGluZGV4
IDNjNGE2NmYxYTdiYS4uMDhlMTRjZjIyNWI1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgNCj4gQEAgLTY3NywxMSArNjc3LDExIEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlDQo+ICppOTE1LA0KPiAgCShJU19BTERFUkxBS0VfUyhfX2k5MTUpICYm
IFwNCj4gIAkgSVNfR1JBUEhJQ1NfU1RFUChfX2k5MTUsIHNpbmNlLCB1bnRpbCkpDQo+IA0KPiAt
I2RlZmluZSBJU19BRExQX0RJU1BMQVlfU1RFUChfX2k5MTUsIHNpbmNlLCB1bnRpbCkgXA0KPiAr
I2RlZmluZSBJU19BTERFUkxBS0VfUF9ESVNQTEFZX1NURVAoX19pOTE1LCBzaW5jZSwgdW50aWwp
IFwNCj4gIAkoSVNfQUxERVJMQUtFX1AoX19pOTE1KSAmJiBcDQo+ICAJIElTX0RJU1BMQVlfU1RF
UChfX2k5MTUsIHNpbmNlLCB1bnRpbCkpDQo+IA0KPiAtI2RlZmluZSBJU19BRExQX0dSQVBISUNT
X1NURVAoX19pOTE1LCBzaW5jZSwgdW50aWwpIFwNCj4gKyNkZWZpbmUgSVNfQUxERVJMQUtFX1Bf
R1JBUEhJQ1NfU1RFUChfX2k5MTUsIHNpbmNlLCB1bnRpbCkgXA0KPiAgCShJU19BTERFUkxBS0Vf
UChfX2k5MTUpICYmIFwNCj4gIAkgSVNfR1JBUEhJQ1NfU1RFUChfX2k5MTUsIHNpbmNlLCB1bnRp
bCkpDQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
