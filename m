Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7540168BFBE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 15:14:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089AA10E3E2;
	Mon,  6 Feb 2023 14:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 438E410E3E2
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 14:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675692872; x=1707228872;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=gHwsp6DqXuLLfhPnUMczL+RLNdQSn61i6tR1pGDbmNI=;
 b=GkkNXFv7k3hUcY3v92lOvglbiFJfOweF/i6BiFziYN6vBGP2R6s3jRw5
 5YADaKglR2AVup+PvPEGn55/JYmLl5bMANixPlj1RlWqlDT3JrjGi/zJ6
 2RJHsKUTML7VpQSsj/hu1MNkARyAxilExbDhgY49vnS/Qkui46dmLxrwO
 PcFqmToprIW4jfIdgcXaBfnjj7CPJOtQSmDAua4gowj+QvRJQdWsQ/GpO
 EFt447YaIoHHZAITm+j0xWFR32H4stPeEcjsOR9NE/YphMz+gPlhdNyO1
 SFi8aFvrZGiaLpXnM3/uQyZUEnXf9Zg5+XJ4cMxwZsElGm2VWK4H41/oX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="391606986"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="391606986"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 06:14:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="730022432"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="730022432"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 06 Feb 2023 06:14:31 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 06:14:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 06:14:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 6 Feb 2023 06:14:30 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 6 Feb 2023 06:14:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oWE5ov4e+mMH7rWBqe80JD/NZNK5O+BaWv+PykwroYhas2JFWCo00zpsqWHIYGoUHVnROo1ThkGwnuBJ304yHjej5Rot3oSw53UIRB9cIWI+xP02in6Ly/ayNDQp4hWFkH/kbS5FXi2WCDiN5xvc4M8TCTYQOnZHVh4zszHck5fbMLQ3mRkCy4yHdLCi9Yk+1su0EL58AVceji06ynKm0wabbovetXAlTheWofdMjk/FBPyHJEi7lFYp4Y8H37JzuBPkIkEFDzNAkIyaryjCoI1XP4nowwczHbI+bJtYW5OV+p7bAB3N/9avPdegrVXU5YSEI/IdOJywyTWZQtAkNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gHwsp6DqXuLLfhPnUMczL+RLNdQSn61i6tR1pGDbmNI=;
 b=SFnszDomW/a6C8o8+uiAXL4+k9a+VDu+yuGaHeNoc8CtDFjx5gmcq2jzCqI2sOaQEvlAjntx14RRLJ6Xf6pKz7se6sVCSa+QwetOgm9QEsqbpPTe9VRl2roROvIQNzX/Iu+ta3T2GWWvX0ywPirRVerxMa+nZ20y4kZ+u4R20Di2buDVacvQo8xiw3kcBZPB7HGm2IpLuimVNyFO3ykqedzBQZDnQXeFQ35Nx0acxXnoc0wv/Jal/7rGjguF/9F7MCrW+njC7RAXUROPCZ5Ejq3hsn6Z2ccj0fmL3l8ZoHxcJdGYH/SvjHHiCFjv8hF+KM1wp1ZfmQdab7bCcgsV+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by SN7PR11MB7466.namprd11.prod.outlook.com (2603:10b6:806:34c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Mon, 6 Feb
 2023 14:14:27 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::cda4:1259:d243:b6fe]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::cda4:1259:d243:b6fe%9]) with mapi id 15.20.6064.034; Mon, 6 Feb 2023
 14:14:27 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "jsg@jsg.id.au" <jsg@jsg.id.au>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5?=
 =?utf-8?Q?15:_Add_another_EHL_pci_id?=
Thread-Index: AQHZOgl8ZiT7SUV5WUOPFTY+4BBjkq7B89aA
Date: Mon, 6 Feb 2023 14:14:26 +0000
Message-ID: <dec04d6af166478917efbb74a1864217044bdbab.camel@intel.com>
References: <20230206043727.46069-1-jsg@jsg.id.au>
 <167567395549.27492.6838684683745579817@emeril.freedesktop.org>
In-Reply-To: <167567395549.27492.6838684683745579817@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|SN7PR11MB7466:EE_
x-ms-office365-filtering-correlation-id: afc40b89-db5d-4d07-24c7-08db084c7472
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IwG8EDU68BAhnkSD+7R4ah5g108Cz4Ajg2ZhRgbqldu1n7j4IeO9XvcEw0CbmLKKpvHXIrL+IHTNBA71hFvgICAHEu1RxlKOVteVaAqsD06JQ3iErzSH0GXUEMl7n3FWU9/nSC2DtAuQrOuyycxBwbUmEMf+N8CZaPK5GCh5vnXbSgoWC9afA8ym6RGmUQTGpnu0GinFbbFB58BGGQP/5dL4pDUiUm55764Y4/JSiSbTVJwJFHZaq7afl6NIgYMnspSilot/wbKhCruMxEzrOxcYjKiI9JI7+YKVkjAY7/z8BsR8mGRIKeK6yrukkk+gp+UEiBPUzyhPskLfT97TgBB4Z6xU8fCCOWFAEmOuf8968gAStEptdjGCi08pReJRq2J9bQ8F/ERAO/jbDcKYF9wOukaz/cqrLKMLndsRVO72/ijJ7KmmIKIZ/H/gVwrqvnhqpNviGq+LkOsHr11cLSrWxlG35dlTK0Cbrvc6bQ7ExW54W98avKj4FQo9n1K96oPlJO/NatMbwKRXwZi94hmIJvbYVnWvQfjrp8hS7T48HEdj++QX6pCHyLFn/XtU3XC9sySVL+G92IH/KMyZf9u1KziJnB07B17foXuBbDVMNmmH0SU5T50uPO5W7Ss3LzvOpI1tBxwoRXEVCB2LJvRoZrfJZy5tVdTBhPa/NqF05F7U2Hutl4riW6sEPvJinchDfIRp4IFbgC9VyKmy3qcao8JBJTNDMn8O6DwIZho=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(39860400002)(136003)(396003)(346002)(451199018)(478600001)(966005)(6506007)(6486002)(186003)(6512007)(26005)(110136005)(2616005)(64756008)(19627235002)(316002)(91956017)(71200400001)(76116006)(66556008)(66946007)(66476007)(66446008)(86362001)(41300700001)(5660300002)(8936002)(83380400001)(2906002)(36756003)(122000001)(38100700002)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUp0VzN2dWVlRnNxWW1ucXJQOWlmNG5RdW9Dc3dFS2JaTDM0MVRqK1NpZzlj?=
 =?utf-8?B?N3NyTGRwR2ZzaXNuODY5RkdONDlxZCtXNjFMYUxLRWpza1hkdG0yWDhiZUdI?=
 =?utf-8?B?T0Y5TGl3SjFTbE5sK3l6SlBnTDFtdHFMUlZwMGJrdjZsU0c5NnMzNFJnNEk5?=
 =?utf-8?B?Rzc3MGJqdnJKZW5kNzZmbHl6aUxrUzdqNkRmd0E3TjBqQXNTTk9pcXM0eEND?=
 =?utf-8?B?WE5hZzVNdWZHL0lVT09BSmMyZTMxSVBQSTk4UXR0cThib2xJL2xxU0JHQkxQ?=
 =?utf-8?B?clhwRVI3K0dYM2RjMXBYVGlZSEV4Mk9BVEFCd3VvNDNYcVdtQk9kbG5lUnZ6?=
 =?utf-8?B?ZDVCbWZlYVF1U3NaYkJGN2s0YW4yb25FSEVnMEdnaGszandCZEJjZ3NIMi9w?=
 =?utf-8?B?eG9BZUkyci9SeVppWDM5aXNnTXZmYnVvWWNJSGY5OHVlYTBXUXlVLy8rS1h3?=
 =?utf-8?B?NVNoTUNZUkVBT1F6KyszbERmS00rWTk3OHU1SmdvTEx1SnQ5TVQwR1EwZGhk?=
 =?utf-8?B?ZGtiM2JOcVJ3bk5LSG9hdDgvMkV0SU4wbVhJNkNhaHF3bmk0Qm9EQXFPeHda?=
 =?utf-8?B?a0U2L0w2eUpOa3ExVkhNcFBlRFJMNjJTVG4xVFdJTktnR3p1eDRXL2JLVWlk?=
 =?utf-8?B?VjVvb0QvbzR6bzhNbDlYbXRNd0NMQUZBQnN0L1VjaTBzaE5aVWJWUmd0Mldz?=
 =?utf-8?B?eVFxOXlCTTlqUUdPTVpFU2R2NVN6RjZJWTJUeFRvMGVzZ3NlczVMYU1mY3ls?=
 =?utf-8?B?ZWhtWndWekZQcDNoQjJrSjhYQnZ1SDJFR2FvcTg0dnJSajFXbCtkMitFbHQ3?=
 =?utf-8?B?endweEt0eUZUWnlReFgwd0Z2NU9sV3lmMnQ2dHovOGtlOHZISE9LYTluaFNk?=
 =?utf-8?B?YkRPQjBDNzl0Y21iWk9LQlBqY0pZTFN1MjNweXpZdVFYM0R2dVVnaDM5WGhZ?=
 =?utf-8?B?ditKUEQyZVJnNEczeElTNVM5MXYwL2lRS2NITG1EQ2hrQVA5MnZ6N2I3SHZm?=
 =?utf-8?B?bzAxTTJyZ29xRVdVbExEMldISktqcG15SVI5aVowMFJXSXdSQUVRbVUyYVJy?=
 =?utf-8?B?QTVmSEdGcG05MTY3WDRqTXViZmlIMXJoNGRNNGtiMUcyTUlWYWRKTlNKdkM0?=
 =?utf-8?B?VDlLNWdYdXJXck9kOVRnejl0T2hSUjhMMFg0OFpaM0pMUEVicUltMTdneUpr?=
 =?utf-8?B?REc1SVJNelRmYk9MTDRVUXpKK1VvbjFqNkFLVHVra1BWU3k5bWZxQ0VKNnEy?=
 =?utf-8?B?dFRQK3c2dnd0YS9LTXpXTVBlZ1E1UVVVd08xSXZuOTkydThVNkVySUZIL2VR?=
 =?utf-8?B?Qkh5RGFsSlhHSkhKVU5aa2tVVW15c3B4emJINi9lMEtzZk53ODZGQWxZMTh4?=
 =?utf-8?B?c3RIWm1MSG05dkFscTI3eFhURHZlTzJaWnZrYlJ5WHVPVmdsTENyZWVYMWdn?=
 =?utf-8?B?VmVqSHJqUk4wSVhDWEs0dUVadkNRUHhpdW1WdG96Mzd0MVROYjlWWDE3bDNW?=
 =?utf-8?B?VGxsdzJKVkc4YTk5RjVVV0trUWF2ZUplbDcvOGNVOXdhYzdLSjBWRUZseldH?=
 =?utf-8?B?SFRLVjIzUnJ0M3RXQmRibFNLUEpNaEVPcEhSZ3FCeDZYK050ZlFWWUwvNEc5?=
 =?utf-8?B?SHZOemFFMUppZmliU2xSeXFsUjVIdmZsYkNSeHhtRHo3QlJMbmttSmxMRDBt?=
 =?utf-8?B?M0JjdHVwdWFKYTFob3VPRlJWa3NLZXRuVFloUmlwVW1LZ2IvTjNlYjNhUFVY?=
 =?utf-8?B?enA1RWJxTkw5WWhxU011dGpvV3h3b1BlS29nRlNNSGgrcVZ0YjE4RUFEMTJ2?=
 =?utf-8?B?c2pPMzU0ai9GVDNWb0d4MlIzVnNhUE5RdW10Q2paNDRPWnFXdzA0UWgyaFJU?=
 =?utf-8?B?VHFnVzlUNkJ1L3NFYzNEVy9PMmtmbjBwNGRLWHZ6UkRFYy9GVzBiLzdObTJ0?=
 =?utf-8?B?U2VvN3M0aVVVM0VHVm9PdHZUa25pbnpyeDdZalU3aG43TFFSMWJrNWtjNndl?=
 =?utf-8?B?K1B2U0pHSnRGZGlTaDd6TVhyRkEwZHBpNC9QNFo0U3cyU0IzcER2UXpBOWhh?=
 =?utf-8?B?SjdYa3lsazNYTnh0NWlrMFRWNjNPeTQ0WGlRVUMrTWhQeFl5K04xUWFqQUZq?=
 =?utf-8?B?RnFpRHZlaStFQzZKbDZRVW51aTVVNnJ2YW5tZFBkbDVZek5pK1VQUWtidklp?=
 =?utf-8?B?clE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D036D872DC4A0F4AA77FBDAACBE23AB3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afc40b89-db5d-4d07-24c7-08db084c7472
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2023 14:14:26.6606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v74zjoB8d4kupPxnsXXDGBG97na/4kNrDwlkrju5lRz5n93lruY2pZ4eFepv5k82Vb0egF435ZA1LbD4z1mJuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7466
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_another_EHL_pci_id?=
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

T24gTW9uLCAyMDIzLTAyLTA2IGF0IDA4OjU5ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOiBkcm0vaTkxNTogQWRkIGFub3RoZXIgRUhMIHBjaSBpZA0K
PiBVUkw6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTEzNjkxLw0K
PiBTdGF0ZTogc3VjY2Vzcw0KDQpQdXNoZWQsIHRoYW5rcyBmb3IgdGhlIHBhdGNoLg0KDQo+IERl
dGFpbHM6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzExMzY5MXYxL2luZGV4Lmh0bWwNCj4gDQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lf
RFJNXzEyNjk3X2Z1bGwgLT4gUGF0Y2h3b3JrXzExMzY5MXYxX2Z1bGxTdW1tYXJ5U1VDQ0VTUw0K
PiBObyByZWdyZXNzaW9ucyBmb3VuZC4NCj4gRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTM2OTF2MS9pbmRleC5odG1sDQo+
IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDkgLT4gMTEpQWRkaXRpb25hbCAoMik6IHNoYXJkLXJrbDAg
c2hhcmQtdGdsdS05IA0KPiBLbm93biBpc3N1ZXNIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBp
biBQYXRjaHdvcmtfMTEzNjkxdjFfZnVsbCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6DQo+
IElHVCBjaGFuZ2VzSXNzdWVzIGhpdCAqIGlndEBnZW45X2V4ZWNfcGFyc2VAYWxsb3dlZC1zaW5n
bGU6c2hhcmQtZ2xrOiBQQVNTIC0+IEFCT1JUIChpOTE1IzU1NjYpDQo+IMKgKiBpZ3RAa21zX2N1
cnNvcl9sZWdhY3lAZmxpcC12cy1jdXJzb3JAYXRvbWljLXRyYW5zaXRpb25zLXZhcnlpbmctc2l6
ZTpzaGFyZC1nbGs6IFBBU1MgLT4gRkFJTCAoaTkxNSMyMzQ2KQ0KPiDCoCogaWd0QGttc19mbGlw
QDJ4LWZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZUBhYi1oZG1pLWExLWhkbWkt
YTI6c2hhcmQtZ2xrOiBQQVNTIC0+IEZBSUwgKGk5MTUjNzkpDQo+IFBvc3NpYmxlIGZpeGVzICog
aWd0QGRybV9mZGluZm9AaWRsZUByY3MwOntzaGFyZC1ya2x9OiBGQUlMIChpOTE1Izc3NDIpIC0+
IFBBU1MNCj4gwqAqIGlndEBnZW1fZXhlY19mYWlyQGJhc2ljLW5vbmUtcnJ1bEByY3MwOntzaGFy
ZC1ya2x9OiBGQUlMIChpOTE1IzI4NDIpIC0+IFBBU1MNCj4gwqAqIGlndEBnZW1fZXhlY19mYWly
QGJhc2ljLXBhY2Utc2hhcmVAcmNzMDpzaGFyZC1nbGs6IEZBSUwgKGk5MTUjMjg0MikgLT4gUEFT
Uw0KPiDCoCogaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLWNwdS1yZWFkLW5vcmVsb2M6e3NoYXJk
LXJrbH06IFNLSVAgKGk5MTUjMzI4MSkgLT4gUEFTUyArNSBzaW1pbGFyIGlzc3Vlcw0KPiDCoCog
aWd0QGdlbV9leGVjX3NjaGVkdWxlQHNlbWFwaG9yZS1wb3dlcjp7c2hhcmQtcmtsfTogU0tJUCAo
aTkxNSM3Mjc2KSAtPiBQQVNTDQo+IMKgKiBpZ3RAZ2VtX21tYXBfZ3R0QGNvaGVyZW5jeTp7c2hh
cmQtcmtsfTogU0tJUCAoZmRvIzExMTY1NikgLT4gUEFTUw0KPiDCoCogaWd0QGdlbV9wYXJ0aWFs
X3B3cml0ZV9wcmVhZEB3cml0ZXMtYWZ0ZXItcmVhZHM6e3NoYXJkLXJrbH06IFNLSVAgKGk5MTUj
MzI4MikgLT4gUEFTUyArOSBzaW1pbGFyIGlzc3Vlcw0KPiDCoCogaWd0QGdlbjlfZXhlY19wYXJz
ZUBiYi1zdGFydC1wYXJhbTp7c2hhcmQtcmtsfTogU0tJUCAoaTkxNSMyNTI3KSAtPiBQQVNTICs0
IHNpbWlsYXIgaXNzdWVzDQo+IMKgKiBpZ3RAaTkxNV9wbV9ycG1AbW9kZXNldC1scHNwOntzaGFy
ZC1ya2x9OiBTS0lQIChpOTE1IzEzOTcpIC0+IFBBU1MNCj4gwqAqIGlndEBpOTE1X3BtX3NzZXVA
ZnVsbC1lbmFibGU6e3NoYXJkLXJrbH06IFNLSVAgKGk5MTUjNDM4NykgLT4gUEFTUw0KPiDCoCog
aWd0QGttc19iaWdfZmJAeC10aWxlZC0zMmJwcC1yb3RhdGUtMDp7c2hhcmQtcmtsfTogU0tJUCAo
aTkxNSMxODQ1IC8gaTkxNSM0MDk4KSAtPiBQQVNTICsyNiBzaW1pbGFyIGlzc3Vlcw0KPiDCoCog
aWd0QGttc19kcF9hdXhfZGV2OntzaGFyZC1ya2x9OiBTS0lQIChpOTE1IzEyNTcpIC0+IFBBU1MN
Cj4gwqAqIGlndEBrbXNfZmJjb25fZmJ0QGZiYzp7c2hhcmQtcmtsfTogU0tJUCAoaTkxNSM0MDk4
KSAtPiBQQVNTDQo+IMKgKiBpZ3RAa21zX2ZiY29uX2ZidEBwc3Itc3VzcGVuZDp7c2hhcmQtcmts
fTogU0tJUCAoZmRvIzExMDE4OSAvIGk5MTUjMzk1NSkgLT4gUEFTUw0KPiDCoCogaWd0QGttc19m
bGlwQDJ4LXBsYWluLWZsaXAtdHMtY2hlY2staW50ZXJydXB0aWJsZUBhYi1oZG1pLWExLWhkbWkt
YTI6c2hhcmQtZ2xrOiBGQUlMIChpOTE1IzIxMjIpIC0+IFBBU1MNCj4gwqAqIGlndEBrbXNfZmxp
cEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rQGEtaGRtaS1hMTpzaGFyZC1nbGs6IEZBSUwgKGk5MTUj
NzkpIC0+IFBBU1MNCj4gwqAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXBy
aW1zY3JuLXNwci1pbmRmYi1kcmF3LW1tYXAtZ3R0OntzaGFyZC1ya2x9OiBTS0lQIChpOTE1IzE4
NDkgLyBpOTE1IzQwOTgpIC0+IFBBU1MgKzIwIHNpbWlsYXIgaXNzdWVzDQo+IMKgKiBpZ3RAa21z
X3BzckBjdXJzb3JfYmx0OntzaGFyZC1ya2x9OiBTS0lQIChpOTE1IzEwNzIpIC0+IFBBU1MgKzIg
c2ltaWxhciBpc3N1ZXMNCj4gwqAqIGlndEBwZXJmQGdlbjgtdW5wcml2aWxlZ2VkLXNpbmdsZS1j
dHgtY291bnRlcnM6e3NoYXJkLXJrbH06IFNLSVAgKGk5MTUjMjQzNikgLT4gUEFTUw0KPiDCoCog
aWd0QHBlcmZAbWktcnBjOntzaGFyZC1ya2x9OiBTS0lQIChpOTE1IzI0MzQpIC0+IFBBU1MNCj4g
e25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25v
cmVkIHdoZW4gY29tcHV0aW5nDQo+IMKgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VD
Q0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuDQo+IEJ1aWxkIGNoYW5nZXMgKiBMaW51eDogQ0lf
RFJNXzEyNjk3IC0+IFBhdGNod29ya18xMTM2OTF2MQ0KPiBDSS0yMDE5MDUyOTogMjAxOTA1MjkN
Cj4gwqBDSV9EUk1fMTI2OTc6IDM2YmMwNTA2MzY1MmExYmIxYThjMDBjMTljMzkyODFkYzdlY2Yw
MTUgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gwqBJR1Rf
NzE0OTogMWM3ZWExNTRiNjI1ZTFmYjgyNmYxNTE5YjgxNmI0MjU2ZGQxMGI2MiBAIGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaWd0LWdwdS10b29scy5naXQNCj4gwqBQYXRjaHdv
cmtfMTEzNjkxdjE6IDM2YmMwNTA2MzY1MmExYmIxYThjMDBjMTljMzkyODFkYzdlY2YwMTUgQCBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCg0K
