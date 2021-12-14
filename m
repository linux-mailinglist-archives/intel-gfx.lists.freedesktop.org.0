Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CC9473A04
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 02:05:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF2A10E9E9;
	Tue, 14 Dec 2021 01:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088BC10E6EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 01:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639443942; x=1670979942;
 h=from:to:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=7Cx7LVN/ObcldQPHtQ7m1KKcvYm8qD5s+3hg4MnsyDU=;
 b=EeCzoKmrDtOYLGlrSyib8MWMVj9GbZ9hBnIlSP9ZGHNKcILGRpdpIAZx
 6dwXn7PUpM/Mkl3VDinxccfRipR/3h0dF25iCQJxkeiGvC5ZpacFoHE8G
 WWSmhovLWpvjwBwDenZlc9hPO9wgyVMimosPpmt9VrlDIM1q1B7rEVUxl
 rjgu98Lo5yjMW4ig7cGRDL8UV3K91DPm8KhzCAJjUkqaqkpVNObsdjo0m
 cxOLFPyRUayvx1VxM/VrZZADl7PDuCSm5qXMklWa3s3e5rV1w/DOyWR8v
 oqhHrlTQovbEcSewDRvSREnOsRduXkU4gnvjR3vwzmbEKBQJOglKMbQAL Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="236399068"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="236399068"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 17:05:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="614037753"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 13 Dec 2021 17:05:12 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 17:05:12 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 17:05:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 17:05:11 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 17:05:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SbBDGWwBg3aA45Z0vqdcnugVWu5dGFIGz1nADW7uwDZAeI0yJmrh2FlFBCUqVC4mihS02kxeWuRzlSIlm0JX+q0bOWumRYfEuai093ZTEwPdtLESHevs7Adyg+yQjlwNEK116sr2iyn4avgOK9eARqm93s46kxtQIYXZAigT9U0OH7RE8LmINyprhAGKwj7pALiyxw5b7PnyK78xXAja1eD+ayaqgpNT5bPQb7pwS4Bi9Gtf88GbAyRWn5efD3Bgs8X0WZc8yhJ5OFUJ0bIPZu87htig5Dm7ACeHiNXy31F+Tgxly2KoOqnu8Q8UtGgQkn+umK0iiV1+GRnG79Hz6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Cx7LVN/ObcldQPHtQ7m1KKcvYm8qD5s+3hg4MnsyDU=;
 b=PUoWPDBi4VctEz6pkgLKjHTwRzx9JVWlzO6r1PiugpxIQSu5bQvQsnFcZZ76bJ0neVAUA4/bL3Ms5Jj2ogAeVlOiK8HVi/xyjlgcaBmI9dVSE+QyiZX0Tqf9oitv3/sr7vd1co9HpiE6j+eHLZXYCMM6Oi9DU3GgwW5PsX39N+FUc3zpW79fYiGGHgnEVw2F+UKnzPfng2U3Z5p6cb+IpeLGh741q1tvRs2hQ30eIAx+N6/qWItNmdO4HLiKN1Z8zTKZX2tvsBO6BLEwZ7jaA2bESytsRqkSSRfLtqzO3lS0SX46nDjBBvCaln4iQRM5qjennqZIi1fQk6GU9+BgNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Cx7LVN/ObcldQPHtQ7m1KKcvYm8qD5s+3hg4MnsyDU=;
 b=vCqQdT/r4HObZhUQZecINjKRE5dM4fxZKiVdnnrc/geCTQ7tTB9KUoOgDPS+z9Dl07t5BHUCOebC/bXmLb0mbhd2bXiMkgnVSRXIAaNTVcaHhS/vFERcBbq1hIvdgrNbtkD6G1d8ZwQJh/VasQSx/NIB1rIH5nZbf8Lg8QYuFf4=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:95::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.12; Tue, 14 Dec
 2021 01:05:10 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca%7]) with mapi id 15.20.4778.018; Tue, 14 Dec 2021
 01:05:10 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [CI] PR for new DMC v2.14 for ADL-P
Thread-Index: AQHX8IakfJMyxb+RuU+jp4mMgtvJ/Q==
Date: Tue, 14 Dec 2021 01:05:10 +0000
Message-ID: <871c78e05b38f444b35e18bd001686e5271f0dd9.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.1 (3.42.1-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 366cbc92-e681-4c5e-b8d5-08d9be9dc710
x-ms-traffictypediagnostic: CO1PR11MB5172:EE_
x-microsoft-antispam-prvs: <CO1PR11MB517236AAD16FDBBBD0F7AD09C7759@CO1PR11MB5172.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:330;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UkuxeN518f8XTImZBveaAkKPALEUU4dIql2g5NmZSO1V1rM+RUVTtfq0Sb4Gye3M/HhXYXeXoY7/RMt8MkZR/WTfgQJ6j33zseYXluf0TMZyI11Rm/0m5+pMckT4BKL5tLh7XyXkicT/UvxrEgR9Tv94pNP4EkpBI/Sczgit8c8355Zm3UKPfpbUi8nvVqgSROHf+5RQOvkPXXAe86f7+l88FBSlyW33TKLkC9l5qmw/SC8i4+Klkp+uMOte+HisgEua+3sjwF0XTSCiHUN8+ddufY8ZdE89WHuOCXlk9U23AtAa2tOIcc8qIoDxVfOQYda3UgJfyg29rR1ihwHtVpkafTVoS4aCsm3TFPYBsUCnFszxVJwyNb1J9UEqlQoI5peVvM8GNBOmci2L/7cnQ69s7mzO3otrcSI5aAKrtPWDaeHrGQaLiyM1Ihbz57Rpx8omMs9NdzFAKAzBJP0I5JNO/dmV2cLr63zYo6VdGj0i1TXaduq+dkNqg0Ezz0NZmlRpRGDi7rxY4vp/BNEVbgDd9NvIpqxe0SzIM9xQ1Piw6YVStif++t4QpbxT2EXwniFE/y6RG2H+Xdthp4tUkGgcLFrhQ7UU7fpdcJrDlJhn++NVXyIhkXffa3z5V1fMOQdc8QblAyEKuD23cUBJYDaGUzJATI6+KYOndBn0bD152a8hvYpOlZBsqoSUQ0+xnz97wTKAlE3pj0pZ8ZNgRw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66556008)(2616005)(5660300002)(76116006)(66446008)(66476007)(64756008)(122000001)(71200400001)(66946007)(6506007)(38100700002)(316002)(83380400001)(38070700005)(6512007)(6916009)(82960400001)(2906002)(86362001)(186003)(6486002)(36756003)(508600001)(4744005)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VU5MUVQrTytaTnVIbndOMVNnaTc0NkprVDZHN3pZTUhIalZ0RFNnSGVab3cy?=
 =?utf-8?B?eGd1Vm91RHpGczN4Zk5IRVdPM1p3cnQ4TU5GaVExU0NKekdxQ2lCYkJWN1ZM?=
 =?utf-8?B?eGdMa09SSVBNdS9hUklXZzFHWlpRSEpSdDY0YlBNN0FQZXdpMXRPbGN6QS9x?=
 =?utf-8?B?bi94S0QvTXBPeVgxcFNoQU9BQ0xIWk5MQi9ULzlCaDZialJnS2VNbEhLSUtr?=
 =?utf-8?B?YjIrUkcwczFwME9SOE9hbDFyclpWTERDVTY1MEpEZU4rdG5RVWJBUGhpQnRR?=
 =?utf-8?B?Tkc5cy80N1FwT3dnZTJIMDBOcDFZV0x0cmlYdVRiS01PYnhxRXBaSVlLd2dw?=
 =?utf-8?B?eTExSkN2TTFINkxEU3U3Q2YvOVpFV2JCSFhHemo2L2FUSWlZZnZPclJXMTQr?=
 =?utf-8?B?ZHBzdjh0OGFVa1RwUEt3TzBsVlR2akxpVjdzZjk4azJxSGhVNEF1SHNhYk9V?=
 =?utf-8?B?c0RvZG1mMCt4SG0yNmozZ3NHckxHaHd6TlZZajhZQVowTGk0aTlReFpoc29p?=
 =?utf-8?B?Qkp0YVY2TFA5cXZpb1RsSHZHRVBmQURrU3J4eHQwNmYxTW1wYVpySVZWMC9K?=
 =?utf-8?B?VFJjWlhteWU3eFZURnU2SWJLcittT2hoVHgwL3RKcytzK2NjYmNISS9QOEdZ?=
 =?utf-8?B?QnA3blJibVNNN3p5RmhMNUFpZldxSWY2TG4zMTNMeHJaT3VCWEhkS2N0UjMy?=
 =?utf-8?B?YTFaM3NzVnQraituUXdsYUxMRjVsb2RRdCtSMTNXSzd3dFdBR2NkUllIZ1F0?=
 =?utf-8?B?S1dpeVZzMlB0T2dxdDQvWDhTdHU1Z2NTeUtBWjl3Mmp3a28zclJaSkNCbkI3?=
 =?utf-8?B?MVZQdDEwMC9vbDRuTmNkd0VxVVkzcUkxaHAwdHJoT3BkT2VIcm9ManJuL0lS?=
 =?utf-8?B?MHo0MDlOQnZIczVSL1lpVlhDTXVtZGFBYWVPOFJJWXpPcG1HamdKV1N6QWgz?=
 =?utf-8?B?cU1tbjhrN3lMU1ZzMWUvTGtJU0hvK1ZyTWxvUGRsM3d4ZWxiRHYzYnJ0dEMw?=
 =?utf-8?B?N1BsS1RENDdleGNoRWxZS1o1M1A2K3BuTk10M2NaNGVTVHR5eGVzOHhSdFV4?=
 =?utf-8?B?QUVhVHVKRTl4R0haTjhNcDIvSDRGSjBYdWVyandxWnlGRHJpaDZLR216QTU5?=
 =?utf-8?B?NjA5dkJ3N0ZtSzBWczM0bm1CL3UrSWExTDJwNWNtMFpOYkowb1ZRRlo0dEtS?=
 =?utf-8?B?SDZURHJPUlFrMUpwYnFjYWNZeFhMYVA3QkNVUjBQZ2pKcmJUa201K3ozQ294?=
 =?utf-8?B?bEIzNmlzZGI0VGh1SUVROEJTeHZURWZjOHRXSDRJbHBScWNtK3ZVTFVkdWZ3?=
 =?utf-8?B?TDlUNkVxdHVaOGR4QVAycVc0MFdCRGJoWXdHcU9SRDc0M05OR01QeEd2RGNi?=
 =?utf-8?B?bXlvZ0VSV2hlQ0trY3AvQkZvcmJBWWN6a0lJeFlEeEM2Tm9jZVFpRXRydlRv?=
 =?utf-8?B?dEFwb09OTU50bldlSGgzODA1N2crQ2lvaDFxM1BXaS9NYU92dndEeC92MnM4?=
 =?utf-8?B?bitFYUZCVDV4VHlsR3RvNTNqMmQ5OWVRYnY4VTh2S01YKzdxTVZwaHJaaS8x?=
 =?utf-8?B?aUJ1SFFmRkUvSjJZM3pqU1hoMlFKRXhMelk1a0lvMDB4Qk9LQ1FpVEZvWW9M?=
 =?utf-8?B?NHVQdUZBMWFXUGpkVVk5WE40ZHhEMTZTMm1SVlo5ZEFPK3pNTFpuWXBNZmtZ?=
 =?utf-8?B?RGdhS3p2bkR3TzUxREY3RkxsTTBrTlNwdVJXVFF6ak15cHdFdlpoUVZhOHV5?=
 =?utf-8?B?bVp0UzhOVXdKeEtCVU9NYTZkdTh4OXlISXBSUzFMMXRRNFViQXZjMTRBRy9z?=
 =?utf-8?B?RzFSL0UvdEpnZk9vdUUzTEs1MHNRZzU3anpXV2lEaG9URENKWjJYNnN0UDE3?=
 =?utf-8?B?T3IwNm81aW04UTZnbVZEZ3pNdUJ3enZSRVpxeUY3WlJ0Vm9hOHA3b0tkRTdq?=
 =?utf-8?B?ZDgwQkVnSjdVZDZ3eWptYVlPVklOalY0MjJQNnEwMmZJSmVvdFBpdUQ1dEt2?=
 =?utf-8?B?UmIvWW92aGVET2tmQ0ZwaENFaGVUMEJLT0h4NVBHTVpkUGlmdi8vTkhzMUVl?=
 =?utf-8?B?aTQ2TjVzRVo5RXdhN2F6OUZERXNOVnpnbEhWTE1kQ3NxVE50b0tmeElSekdI?=
 =?utf-8?B?OW9YdHluZmRyK1Z0WWdlNUNBbmVtSzc0T0o4NnE0RzJiM0hyb3krcEt4REJE?=
 =?utf-8?B?MXIxZFA2eVlRYmxWMXpYZWFMQzZndUlhaExTcG01ZDVJY2p3dVE0L2oyRU4y?=
 =?utf-8?B?elJPby9XdGRzcWV4QmVxWjYyZ1hFMnFwSW5GRUlNVlBzSlBEVFVLR0huRFll?=
 =?utf-8?B?RFkyU2FaTXpZczcrQUd1b2s3VElxUG5EVXorVFhBZ1RRZVhZckZEcUlJZ1FB?=
 =?utf-8?Q?ZaBrrvoFThzTinaXn8h+FqDDjj0v6FTqjHH93ePIQHKbY?=
x-ms-exchange-antispam-messagedata-1: AR/DAg0JOGlmdrW/emzASPHfBL+CuClkZAM=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1B6D6FDCFD89C944A7555E9B15621B17@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 366cbc92-e681-4c5e-b8d5-08d9be9dc710
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2021 01:05:10.7545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +NxlXv63Gv2W/9oFPgUx2DbFxoIS0HPZX4594udigxq/WRjdD+D8KTbas8H2Yas2tolLKDfyNal+NY9KBJ6Qn6RQqJM1OEPjC+/cax4U0li02XcJeLZ3UoH24CVdZ1FaaX28H2PfW8BL8oj6lBO77g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [CI] PR for new DMC v2.14 for ADL-P
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

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdA0KYjBlODk4ZmJhZjM3N2M5OWEzNmFh
YzZmZGViNzI1MDAwMzY0OGNhNDoNCg0KICBsaW51eC1maXJtd2FyZTogVXBkYXRlIGZpcm13YXJl
IGZpbGUgZm9yIEludGVsIEJsdWV0b290aCA5NDYyICgyMDIxLQ0KMTEtMjMgMTI6MzE6NDUgLTA1
MDApDQoNCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Og0KDQogIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0tZmlybXdhcmUgYWRscF9kbWNfdjIuMTRf
dXBkYXRlDQoNCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0bw0KMmEyYWE0MTBjMmVhZWJl
NTgwN2QxZmQzMjFlNDJiOGY1MzI4OGQ5MToNCg0KICBpOTE1OiBBZGQgRE1DIGZpcm13YXJlIHYy
LjE0IGZvciBBREwtUCAoMjAyMS0xMi0wMSAxNjo1MDozMCAtMDgwMCkNCg0KLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KTWFk
aHVtaXRoYSBUb2xha2FuYWhhbGxpIFByYWRlZXAgKDEpOg0KICAgICAgaTkxNTogQWRkIERNQyBm
aXJtd2FyZSB2Mi4xNCBmb3IgQURMLVANCg0KIFdIRU5DRSAgICAgICAgICAgICAgICAgICAgfCAg
IDMgKysrDQogaTkxNS9hZGxwX2RtY192ZXIyXzE0LmJpbiB8IEJpbiAwIC0+IDc3MzAwIGJ5dGVz
DQogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCiBjcmVhdGUgbW9kZSAxMDA2NDQg
aTkxNS9hZGxwX2RtY192ZXIyXzE0LmJpbg0K
