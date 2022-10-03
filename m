Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 980455F377B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 23:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0AC810E1C0;
	Mon,  3 Oct 2022 21:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120F810E1C0
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 21:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664831447; x=1696367447;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=LikUwD1/Axjb6F8aXq6vHJwiSDeHdo1+0bKXTVGaFHM=;
 b=YJqUpWa3g7giGDRCegpCBcI+d6NU2uqX/fu3MmAAXg6LZm7IzDjZSYqB
 t5c71uOV2BdRc8gKEHazzeA9ZaOpcDCQ8X+32KkdV4AB1lA32TgXwxSDe
 wrOlTHVjPTpbxHTf0Gtliq8MsUB74sMNoD/QnvRWY0pd/7ug9lf05BQ8P
 hqmdDkAKcmS5lKsszL2GUyrxNOBlgc4HMFQIfPWK4sv2pJibFWRFhohsi
 li8MM+42u6q5PkYKN+Gr2skLK3j94Ut0JbfTlCaLMILz12ohfF/E8kgwW
 aya19ALVqEMuV/RXIzDoUM4nw/T5CJz4iCiTcML/QUhIIH3n3qYChFyPE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304302937"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="304302937"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 14:10:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="618887116"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="618887116"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 03 Oct 2022 14:10:45 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 14:10:44 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 14:10:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 14:10:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 14:10:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFjKzEiNf0IvMNRIpfa0GuFubO3Jz76H91INoHilu2glQgAkdoHk2y2VlBV9/5atUrtcVce9M160tFQRjezaNchdRX/0AqUfWNFAWmk5z4R5yN1l9r5wbBoZss4oPQ5UIIV99OLf4cUKNAHtCmzmkHGb4KcFubC2o38sDWKyhC4ba8VObizK05rxDSiKNj2MHW22PsWxSxozYedL08AcS9SvOFljgVmaYWk6kxEgNGw7Ttk9iQ9U96JF1FSRZV3VSQI5j/Xv5diBuPbAHmeLjmGuVl7XkdH4gt+Jg+DC8wLA3u4aGxETZbEra1wWNUaitDzlZsOyaqKA2eJDPXiOzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LikUwD1/Axjb6F8aXq6vHJwiSDeHdo1+0bKXTVGaFHM=;
 b=c8yL5Jwnt+n6RO/LB6YTXzDX38ep8CVj3/2N/vE6Tg2Tp35zfMcqlUztxqkvMMWximMExNGM/qzAl8vbbuQVXWx5ojgptXwMqsV8GPVK7wjMtBVdVstSBtEsSjwoY44VmCFki8I1thnjKAYRyhNNwfSYyIAJA/wuvkeqXLZLT7RAZCmxKFlBLdp+L2T3bCSwbvX+MFQLl8vh0TiFVMI3PUyPOGmlotJaS7EG+NNdjMZmAyY8LY1vRpBtHib9cIruWmGjnK7XQfXWww5O0FZ2QxS303k2zCGDeu8joL82J6EIak5ONAO+KYTIvSRWzfT6HjWirahTPZZkVEyVizUSnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SJ0PR11MB5584.namprd11.prod.outlook.com (2603:10b6:a03:3ba::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Mon, 3 Oct 2022 21:10:38 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5676.030; Mon, 3 Oct 2022
 21:10:38 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
Thread-Index: AQHY1Gii8wVN8waP5ku0rjVTVFyRb634QOaAgAA4iwCAABeUgIAEcpSAgAAVeoCAABfXgA==
Date: Mon, 3 Oct 2022 21:10:38 +0000
Message-ID: <27c162aadb79123fff5458dc1695c6026ea0c796.camel@intel.com>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
 <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
 <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
 <acdf464bc515f0489c70c9282dcccce1cc2e85ca.camel@intel.com>
 <0dad721a-2308-588c-8b7d-8ac98d17f3dc@intel.com>
 <2cb443945f86c2bbcfef78ca19cc4a85fdae3666.camel@intel.com>
 <9703bd69-3b42-3e64-04e1-5b8fc6e9f367@intel.com>
In-Reply-To: <9703bd69-3b42-3e64-04e1-5b8fc6e9f367@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SJ0PR11MB5584:EE_
x-ms-office365-filtering-correlation-id: fef3c0ca-e47c-4156-bdbf-08daa583b8f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4RKjd8DbyzQM0aHPxl830qGNcREkmUE5EP3BZK+PX5T6BVbJkck7K0VMUm6MmDl+2RisV0YuTKlBxvCMPifCXBlgOlRY1E7oHu0lLVPo6V7yhjfSJVJ4F5i7hjfMAFubotgPpvGT/jQqx/4uEF3pawFQgN0Zto7bQzZ7RVgmLQG08b4h4Z9/+aAz9ye3WjybDd0f9dSUgXyrMpYKX6DepqfJzMwgOV2z976YmrtkdmvbpOQliNhUIvEaCdcPdjWFsr6cQY/+9svPtL4idkiwmQDYlYf4nfAenQszaYpfVsZiM8+aHHkh5/GP+GrleaSHYuePsLgMf6JRaXQw12NK/cTtDqxicZO64OhC1uyIpo+InkmMxOyP0YS+eF/A5FHMDKWpNziL2aEmpbyMI+VQK6PkE9q67GyGslJ9Mc2sFFb0QoVbBoDTYNOpfsU5bfeypDxMXsdeiQKgq78D6+a5CCPeKW1Z1KAgOsZMzsKcCcBns82ED5LC69XWWcMFA4sQH1knoGZJMoyI10qSHKRRwqi9IB9GaQwxzpHmeg+mdKw6LCD+URm82T7zxk4tk1AicVattdqCxJdZdYXwP2zh5I/XN99vFMch7d3uY02b1vLKLQir4Jds7wpsIZ2/MZ/OwGrMvKGlcZaSP/1OQvU/ZApN28GAO9+i4loUpHaTaM5e43ZaiYjkkSW89ziKkermMGe1uYg1z6SsVVrw96CF9Z2a3SAyv6QEmBRyavUc7A8N9eSVeDn/UBoBcg2No0kwSlE6RPJyyKQUsBMKFG0oOg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(396003)(136003)(376002)(39860400002)(451199015)(64756008)(66946007)(66446008)(8936002)(66556008)(76116006)(6506007)(8676002)(66476007)(316002)(36756003)(53546011)(6512007)(26005)(91956017)(2616005)(186003)(110136005)(5660300002)(38070700005)(122000001)(2906002)(82960400001)(41300700001)(38100700002)(83380400001)(86362001)(6486002)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWJGNUtFNnhsQ3lvRml0QXRaMlo4am9wWkh5TU9oVm0xYWtlOFpBYUpzWmhv?=
 =?utf-8?B?a1RMQTFRdE4wd2o4dHpGa3F4KzkrVzB3YWNKZ1pQN0V1SjE1MWtlZFlLVVha?=
 =?utf-8?B?NFJKRkhUNFE3QXhKN2hYTjhqYVBmejZtcUs5aDFDY2FscjVvb2ZaRm00L0ln?=
 =?utf-8?B?UXFTUWw2Z3JaSFpxUW5lOWNPR2NwdCtRR0tvK2lyK0ZtUktjbytDek5XMVhr?=
 =?utf-8?B?cXRyTWRoV1dWanh4MTROVDlRYjRORzM2RVdXYnk0ek95cmZUN2hOd3ZSWVda?=
 =?utf-8?B?NFc1L0NzZnA2SkttQ2svT3Z1RlVQaXVOR0lUQlVjbUUwZlVEWlluR3J0SGxX?=
 =?utf-8?B?LytRcTRoT1o4ekdBNzJSdEcrMlZLZUpOTGpZa1F1YkJydjlKSGlVdFc3dlRH?=
 =?utf-8?B?YTdvSzRZNXpkZDRhQnhqSXV3NXRhS09wYWoxQllSdFdqeW5zSm9lY050dFM3?=
 =?utf-8?B?N1J1MUtiODRNZHloRHZKdHU0MEdJcEFmMDNLRU41eHFPNG9rdFFSQmg3cnIv?=
 =?utf-8?B?cDlZOElsUnZJYmdCNU10RkFFSlRxc042bjNod1VhQ1cvTithRC9kN2ptajFo?=
 =?utf-8?B?VEMzTlBEUkNNUG1RQ3QxaXVBd3pyWWR0cGNSQXlJUkttSC8rTnk2VllHK1pW?=
 =?utf-8?B?R09DYlFpUWdkZjRLQllnWTlWK01JK2dCN0YweEZXMS81bkNORG01WVRKWm9I?=
 =?utf-8?B?SWVWL0VucTU4ZUNrMVFER0dMeit0OGxtRjZkSnZYQzNUU1MySktZVGgrMjJk?=
 =?utf-8?B?SHhSR29mUUhUbnlXbi9QT3U0MCtrMEthZVVCcFZHbS9McHNXZEFDK3JkRnc0?=
 =?utf-8?B?ZWFXZnBjWkhmcWlqVEVnUWdyUHVoOENzQmZmdzllbkFWMVl0ZVgwdWRWamh1?=
 =?utf-8?B?QU1TcnFFd3l6M1BFOXh3TlgybkJNUllTb3NoSWcwZmxoTFk4TUxndHdQM3VQ?=
 =?utf-8?B?QXZpaWZMTDVTSTVZdEZIT1F4Zlc2U1B5Y3BzSVlmTzk4VUo1R0w2YkhsMHUr?=
 =?utf-8?B?RHVQWnF0K1lXa1NweXlOWVN4cUgydlMzNmRnZ2R6Tjd3b1N1NDVlTmp5VHJs?=
 =?utf-8?B?TjQrQnRiSGlTTGRLaHRscWtzSjRJSTJmVFRFVXliSEVmSVRISVhCMCtueHpk?=
 =?utf-8?B?TEEzMkRrZnVtcGtid1VmeFBxeGZ2NUFrdkJoMlhSd25JdUtTcWJmbGFWUjA1?=
 =?utf-8?B?R3FIbk5XcEc2NTdCOC9JbkxVc0ZrODMraldObHRMeFJiSVFBTzcwbDgxbmdt?=
 =?utf-8?B?UUdUV3pLcmpvbU12c1QzTmcyQldLeHJaVDVscXpKYjVReDg2aXEzQlU5Uy9t?=
 =?utf-8?B?ZHFoQUNJcHlvUmVXd3RrNXdNYndjbGgxaVVFNGtnbWlpeXdnbkNkcWk0R2ZU?=
 =?utf-8?B?VlMySi9hWkIzTDdqWmIyekZZdkdjRUwyeFRqQm1PaGIxSGliQ2YwNTM4MUI3?=
 =?utf-8?B?S1Y4T0t0M2F3akJzeER3MFFDMDQxNzVxc1prNk0yaXMyVUhpUGo3STE2ejRx?=
 =?utf-8?B?WXROR1VOclQ5eFliM3N1bUJ1V2dqbUw1dGZ0N3FEZG1UcjJibklvYVpYVVk4?=
 =?utf-8?B?SUtaTE5ydG80TW9YVjUxc3BSYXRkRnBCQVVLVkduYjRmSm16ZjQ2blFqU3p2?=
 =?utf-8?B?b1JBZjc4UnlKTHB0Z2hudEZtcHdCNzFacEpsVkxKZ1Q3WHAvVVFidkVndU5W?=
 =?utf-8?B?cTBER3ZwRHdjUGYrdUVFTWJGdjk1dXlxUDdBaUR0SFZWMXRDUDRscEoyRVk2?=
 =?utf-8?B?QUdPNmlSbUtzL3lNNWx2WTE1bUtwOVI1b3o3UVpqSk0rZm1POXhMN1k1NUFV?=
 =?utf-8?B?N210dDZ6dndyOEJXTEF5bXI5bGRnMWtGeUpudFFyNk01aVdqaUF5UGJFKzdl?=
 =?utf-8?B?SlZ0YlQ0SXV2Rms1cVZ3Ykt5eDJhYWlIZ2hBZDFqVWdBOGduVmlGajNwbFI0?=
 =?utf-8?B?TDdRN1Z4eXlFMkVDanN3L1hmQ2JEVmxkbmQ5UGF3Um4xNW5Id0N3M1ZPUSta?=
 =?utf-8?B?YnhITzdHazJzZlNHNGFvVTBLQWFqZUVodXRiWFFPakNaVWpVOFdWSGpNTUhV?=
 =?utf-8?B?L1g3eU00TEIzRHNza2MzQ0lLb3doOURtMngrM0cyaTJxRGJtRjJDTW5RYnZk?=
 =?utf-8?B?T2FxYmtYYlBmM3U5YVhQQzI1RXRIandVYWNRbkxRYWt6K0czRWtGNDVhMFA4?=
 =?utf-8?Q?Pc3P0zx2YfCPBITTvxE5iG8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6FB15B02D9D6BC479F0D22DB5D7D8A06@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fef3c0ca-e47c-4156-bdbf-08daa583b8f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2022 21:10:38.8863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NDom/fSj7kvtr7m7n6IcM9QwabZcu0WQNNXnvgQlhQH46mqTP6vKKPcAmKcK8SaGzwal+SM2tP0uRZF6CfrMZQz0hT1ke8c9JGwHGvQVBeCLUAdYh65laG943aGQRsBi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5584
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
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

DQoNCk9uIE1vbiwgMjAyMi0xMC0wMyBhdCAxMjo0NyAtMDcwMCwgSGFycmlzb24sIEpvaG4gQyB3
cm90ZToNCj4gT24gMTAvMy8yMDIyIDExOjI4LCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJldmluIHdy
b3RlOg0KPiA+IE9uIEZyaSwgMjAyMi0wOS0zMCBhdCAxNTozNSAtMDcwMCwgSGFycmlzb24sIEpv
aG4gQyB3cm90ZToNCj4gPiA+IE9uIDkvMzAvMjAyMiAxNDowOCwgVGVyZXMgQWxleGlzLCBBbGFu
IFByZXZpbiB3cm90ZToNCj4gPiA+ID4gSSBkaXNhZ3JlZSBiZWNhdXNlIGl0cyB1bmxpa2VseSB0
aGF0IGFsbCBlbmdpbmVzIGNhbiByZXNldCBhbGwgYXQgb25jZSAod2UgcHJvYmFibHkgaGF2ZSBi
aWdnZXIgcHJvYmxlbXMgYXQgdGhlIGF0DQo+ID4gPiA+IHBvaW50KSBhbmQgaWYgdGhleSBhbGwg
b2NjdXJyZWQgd2l0aGluIHRoZSBzYW1lIEcySCBoYW5kbGVyIHNjaGVkdWxlZCB3b3JrZXIgcnVu
LCBvdXIgY3VycmVudCBncHVfY29yZWR1bXAgZnJhbWV3b3JrDQo+ID4gPiA+IHdvdWxkIGp1c3Qg
ZGlzY2FyZCB0aGUgb25lcyBhZnRlciB0aGUgZmlyc3Qgb25lIGFuZCBzbyBpdCB3b3VsZG50IGV2
ZW4gbWF0dGVyIGlmIHdlIGRpZCBjYXRjaCBpdC4NCj4gPiA+IFNvIG1pbl9zaXplIGlzIG5vdCBh
Y3R1YWxseSB0aGUgbWluaW1hbCBzaXplIGZvciBhIG1lYW5pbmdmdWwgY2FwdHVyZT8NCj4gPiA+
IFNvIHdoYXQgaXM/IEFuZCByZW1lbWJlciB0aGF0IGZvciBjb21wdXRlIGNsYXNzIGVuZ2luZXMs
IHRoZXJlIGlzDQo+ID4gPiBkZXBlbmRlbnQgZW5naW5lIHJlc2V0LiBTbyBhIHJlc2V0IG9mIEND
UzIgYWxzbyBtZWFucyBhIHJlc2V0IG9mIFJDUywNCj4gPiA+IENDUzAsIENDUzEgYW5kIENDUzMu
IFNvIGhhdmluZyBhdCBsZWFzdCBmb3VyIGVuZ2luZXMgcGVyIGNhcHR1cmUgaXMgbm90DQo+ID4g
PiB1bnJlYXNvbmFibGUuDQo+ID4gPiANCj4gPiBBbGFuOiBtaW5fc2l6ZSBpcyBhIG1lYW5pbmdm
dWwgc2l6ZSBmb3IgdGhlIHdvcnN0IGNhc2Ugc2NlbmFyaW8gb2YgY29sbGVjdGluZyB0aGUgZ3Vj
LXJlcG9ydC4gSG93ZXZlciBkdWUgdG8gZ3B1LWNvcmUtDQo+ID4gZHVtcCwgaXRzIG5vdCBtZWFu
aW5nZnVsIGluIHRlcm1zIG9mIHJlcG9ydGluZyB0aGF0IGluZm9ybWF0aW9uIG91dCB0byB0aGUg
dXNlci4gVGhhdHMgbm90IGEgbGltaXRhdGlvbiBvZiB0aGlzDQo+ID4gc3Vic3lzdGVtLg0KPiBJ
J20gbm90IGZvbGxvd2luZyB3aGF0IHlvdSBtZWFuIGFib3V0IGdwdS1jb3JlLWR1bXAuIFRoZSBw
b2ludCBvZiB0aGUgDQo+IHdhcm5pbmcgaXMgdG8gbGV0IHRoZSB1c2VyIGtub3cgdGhhdCB0aGUg
aW50ZXJmYWNlIHRoZXkgd2FudCB0byB1c2UgDQo+IChlcnJvciBjYXB0dXJlIHZpYSBzeXNmcykg
bWlnaHQgbm90IGJlIGNvbXBsZXRlIGluIHRoZSBtYWpvcml0eSBvZiANCj4gY2FzZXMuIElmIHRo
ZXJlIGlzIHNvbWUgY2F0YXN0cm9waGljIHdvcnN0IGNhc2Ugc2NlbmFyaW8gdGhhdCBvdmVyZmxv
d3MgDQo+IGJ1dCA5OSUgb2YgaW5zdGFuY2VzIGFyZSBmaW5lIHRoZW4gdGhhdCdzIHdoYXQgdGhl
IGRybV9ub3RpY2UgYWJvdXQgDQo+ICdzcGFyZV9zaXplJyBpcyBmb3IuIEJ1dCBpZiB0aGUgOTkl
IG9mIGluc3RhbmNlcyBvZiBhIGNhcHR1cmUgYXJlIGdvaW5nIA0KPiB0byBvdmVyZmxvdyB0aGVu
IHRoYXQgaXMgd2hhdCB0aGUgZHJtX3dhcm4gYWJvdXQgJ21pbl9zaXplJyBzaG91bGQgYmUgZm9y
Lg0KPiANCj4gPiA+IEl0IHNlZW1zIHBvaW50bGVzcyB0byBnbyB0aHJvdWdoIGEgbG90IG9mIGVm
Zm9ydCB0byBjYWxjdWxhdGUgdGhlDQo+ID4gPiBtaW5pbXVtIGFuZCByZWNvbW1lbmQgc2l6ZXMg
b25seSB0byBiYXNpY2FsbHkgaWdub3JlIHRoZW0gYnkganVzdA0KPiA+ID4gd2hpc3BlcmluZyB2
ZXJ5LCB2ZXJ5IHF1aWV0bHkgdGhhdCB0aGVyZSBtaWdodCBiZSBhIHByb2JsZW0uDQo+ID4gPiAN
Cj4gPiBBbGFuOiBJIGFscmVhZHkgcmVzcG9uZGVkIHRoYXQgaSB3aWxsIHJlLXJldiBhcyBwZXIg
eW91ciByZWNvbW1lbmRhdGlvbiBhbmQgc3dpdGNoIGJhY2sgdG8gZHJtX25vdGljZS4NCj4gPiAN
Cj4gPiA+IEl0IGFsc28NCj4gPiA+IHNlZW1zIHBvaW50bGVzcyB0byBjb21wbGFpbiBhYm91dCBh
IG1pbmltdW0gc2l6ZSB0aGF0IGFjdHVhbGx5IGlzbid0IHRoZQ0KPiA+ID4gbWluaW11bSBzaXpl
LiBUaGF0J3Mgc29ydCBvZiB3b3JzZSAtIG5vdyB5b3UgYXJlIHRlbGxpbmcgdGhlIHVzZXIgdGhl
cmUNCj4gPiA+IGlzIGEgcHJvYmxlbSB3aGVuIHJlYWxseSB0aGVyZSBpc24ndC4NCj4gPiA+IA0K
PiA+IEFsYW46IHRoZSBtaW4gc2l6ZSBpcyBhY2N1cmF0ZSAtIGJ1dCB3aGV0aGVyIHdlIHJlcG9y
dCB0byB0aGUgdXNlIGFib3V0IHRoZW0gcG9zc2libHkgZmFjaW5nIGEgcHJvYmxlbSBpcyB3aGVy
ZSBpdCBnZXRzDQo+ID4gYSBiaXQgdW5jbGVhciBiZWNhdXNlIG9mIHRoZSBsaW1pdGF0aW9uIGlu
IHRoZSBncHUtY29yZS1kdW1wIGZyYW1ld29yay4gV2UgY291bGQgZHJvcCB0aGUgbWVzc2FnZSBj
b21wbGV0ZWx5IGlmIHlvdSBsaWtlDQo+ID4gLSBidXQgdGhlbiB3ZSdkIGhhdmUgdG8gcmVtZW1i
ZXIgdG8gcmUtYWRkIGl0IGlmIHdlIGZpeCBncHUtY29yZS1kdW1wIGluIGZ1dHVyZS4gRm9yIG5v
dywgYXMgaSBtZW50aW9uZWQgaW4gdGhlIGxhc3QNCj4gV2hhdCBsaW1pdGF0aW9uIGluIHRoZSAn
Z3B1LWNvcmUtZHVtcCBmcmFtZXdvcmsnPyBXaGF0IGlzIHRoZSBmaXggcmVxdWlyZWQ/DQo+IA0K
VW5sZXNzIGl0IGhhcyBjaGFuZ2VkIHNpbmNlIGkgbGFzdCBsb29rZWQgYXQgaXQsIGdwdV9jb3Jl
ZHVtcCBmcmFtZXdvcmsgd2lsbCBzdG9yZSB0aGUgZmlyc3QgZXJyb3Itc3RhdGUgY2FwdHVyZWQg
YW5kDQp3YWl0IHVudGlsIHRoZSB1c2VyIGV4dHJhY3RzIGl0IHZpYSBzeXNmcy4gQW55IG90aGVy
IGVycm9yLXN0YXRlIGNhcHR1cmUgdGhhdCBnZXRzIGNyZWF0ZWQgYmVmb3JlIHRoYXQgcHJpb3Ig
b25lIHdhcw0KY2xlYXJlZCBieSB0aGUgdXNlciBnZXRzIGRyb3BwZWQuIEknbSBub3Qgc3VyZSBp
ZiB0aGF0IGxpbWl0YXRpb24gbmVlZHMgdG8gYmUgImZpeGVkIi4gSSBhbSBub3Qgc3VyZSBvZiBp
dHMgaGlzdG9yeSAtDQptYXliZSBpdCB3YXMgZGVzaWduZWQgdGhhdCB3YXkgZm9yIGEgcmVhc29u
LiBBVE0gSSBkb250IGhhdmUgdGhlIGJhbmR3aWR0aCB0byBjaGFzZSB0aGF0IGhpc3RvcnkgZG93
bi4NCg0KPiA+IHJlcGx5LCBpIGhhdmUgYWxyZWFkeSBjaGFuZ2VkIGl0IGJhY2sgdG8gIm5vdGlj
ZSIgYXMgcGVyIHlvdXIgbGFzdCBjb21tZW50LiBQZXJoYXBzIHlvdSBzaG91bGQgaGF2ZSBsb29r
ZWQgYXQgcmV2MiB3aGljaA0KPiA+IHdhcyBwb3N0ZWQgYmVmb3JlIHlvdXIgcmVzcG9uc2VzIGFi
b3ZlLiBBcyBtZW50aW9uZWQgaW4gbGFzdCByZXBseSwgaSBkaXNhZ3JlZWQgYnV0IGkgYW0gY29t
bWl0dGluZyB0byB5b3VyIHJlcXVlc3QNCj4gPiB3aGljaCB3YXMgZml4ZWQgaW4gcmV2MiBhcyBw
ZXIgeW91ciByZXF1ZXN0Lg0KPiBUaGUgcG9pbnQgb2YgYSBjb2RlIHJldmlldyBpcyBub3QgIkkg
c2F5IFggc28geW91IG11c3QgZG8gWCwgaW1tZWRpYXRlbHkgDQo+IHBvc3QgYSBuZXcgcmV2aXNp
b24gbm93Ii4gSSBhc2tlZCBzb21lIHF1ZXN0aW9ucy4gSSBzdGF0ZWQgbXkgb3BpbmlvbiANCj4g
YWJvdXQgd2hhdCB0aGUgZW5kIHVzZXIgc2hvdWxkIHNlZS4gSWYgeW91IHRoaW5rIHlvdXIgaW1w
bGVtZW50YXRpb24gDQo+IGFscmVhZHkgbWF0Y2hlcyB0aGF0IG9yIHlvdSBkaXNhZ3JlZSBiZWNh
dXNlIHlvdSB0aGluayBJIGFtIGJhc2luZyBteSANCj4gY29tbWVudHMgb24gaW5jb3JyZWN0IGlu
Zm9ybWF0aW9uLCBvciBldmVuIGp1c3QgdGhhdCB5b3UgZGlzYWdyZWUgd2l0aCANCj4gbXkgcmVh
c29uaW5nLCB0aGVuIHlvdSBzaG91bGQgbm90IGJsaW5kbHkgcG9zdCBhIG5ldyByZXZpc2lvbiBz
YXlpbmcgDQo+ICJoZXJlIGFyZSB5b3VyIGNoYW5nZXMsIEkgZG9uJ3QgbGlrZSBpdCBiZWNhdXNl
IFkgYnV0IGp1c3Qgci1iIGl0IGFuZCANCj4gSSdsbCBtZXJnZSIuIFlvdSBzaG91bGQgcmVwbHkg
dG8gdGhlIGNvbW1lbnRzIHdpdGggeW91ciB0aG91Z2h0cyBhbmQgDQo+IHN1Z2dlc3Rpb25zLiBN
YXliZSB0aGUgcmV2aWV3ZXIgaXMgd3JvbmchDQo+IA0KSSB0aGluayB0aGlzIGNvbWVzIGRvd24g
dG8gcHJlZmVyZW5jZSBhcyB0aGVyZSBpcyBubyBjbGVhciBydWxlIGFib3V0IHdoYXQgaXMgcmln
aHQgdnMgd2hhdCBpcyB3cm9uZyBpbiB0aGlzIGNhc2U6DQoNCgktIHdlIGhhdmUgYSBwb3NzaWJs
ZSBpc3N1ZSBidXQgaXRzIGEgY29ybmVyIGNhc2Ugd2hlbiBhbGwgZW5naW5lIGluc3RhbmNlcyBz
dWZmZXIgYSByZXNldCBhbGwgYXQgb25jZS4NCgktIGluIHRoZSBldmVudCBvZiB0aGF0IGNvcm5l
ciBjYXNlIG9jY3VycmluZywgdGhlIGVuZC11c2VyIGNvdWxkIGdvIGJhY2sgYW5kIGluY3JlYXNl
IHRoZSBndWMtbG9nLWNhcHR1cmUtDQpyZWdpb24gc2l6ZSBhbmQgdGh1cyB0aGUgd2FybmluZyB3
aWxsIGdvIGF3YXkgYW5kIEd1QyB3aWxsIGhhdmUgc3BhY2UgdG8gcmVwb3J0IHRoZSBlcnJvci1z
dGF0ZSBkdW1wIGZvciBhbGwgZW5naW5lDQppbnN0YW5jZXMgaWYgdGhleSBnb3QgcmVzZXQgYWxs
IGF0IG9uY2UgKHdpdGhpbiB0aGUgc2FtZSBHMkggSVJRIGV2ZW50KS4NCgktIGFzc3VtaW5nIHRo
ZSBpc3N1ZSBpcyByZXByb2R1Y2libGUsIHRoZSB1c2VyLCBub3cgaGFwcHkgdGhhdCB0aGUgd2Fy
bmluZyBpcyByZXNvbHZlZCwgcmVydW5zIHRoZSB3b3JrbG9hZC4NClRoZQ0KdXNlciBkdW1wcyB0
aGUgZmlyc3QgZXJyb3Itc3RhdGUtY2FwdHVyZSB2aWEgc3lzZnMgd2hpY2ggb25seSBjb250YWlu
cyBpbmZvIGZvciB0aGUgZmlyc3QgZW5naW5lIHRoYXQgd2FzIHJlc2V0IChhcyBpdA0KYXBwZWFy
ZWQgaW4gdGhlIEcySC1DVEIpLiB0aGUgdXNlciBpbnNwZWN0cyB0aGUgc2FtZSBzeXNmcyBhbmQg
bm9uZSBvZiB0aGUgb3RoZXIgZG1lc2ctcmVwb3J0ZWQgZW5naW5lLWhhbmcgZXJyb3Itc3RhdGUt
DQpkdW1wcyBzZWVtIHRvIGJlIG1hZGUgYXZhaWxhYmxlIGluIHRoZSBzeXNmcyBhZnRlciBjbGVh
cmluZyB0aGF0IGZpcnN0IG9uZS4NCg0Kc28gdGhlIHByZWZlcmVuY2UgaGVyZSBiZWNvbWVzICJz
aG91bGQgd2Ugd2FybiB0aGUgdXNlciBhYm91dCB0aGlzIHBvc3NpYmxlIGV2ZW50IG9mIHJ1bm5p
bmcgb3V0IG9mIGd1Yy1lcnJvci1zdGF0ZQ0KY2FwdHVyZSByZWdpb24gd2hlbiByZXNvbHZpbmcg
aXQgc3RpbGwgZG9lc24ndCBhbGxvdyB0aGUgdXNlciB0byBnZXQgaXQgYW55d2F5Ii4uLiBPUiAi
c2hvdWxkIHdlIGp1c3QgbWFrZSBhIHF1aWV0IGRlYnVnDQptZXNzYWdlIGFib3V0IGl0IHNpbmNl
IGFuIGk5MTUgZGV2ZWxvcGVyIGtub3dzIHRoYXQgdGhlIGdwdV9jb3JlZHVtcCBmcmFtZXdvcmsg
ZGVzaWduIGNhbiBvbmx5IGV2ZXIgc3RvcmUgMSBlcnJvci1zdGF0ZS0NCmNhcHR1cmUtZHVtcCBh
bmQgdGhyb3dzIHRoZSByZXN0IGF3YXkgdW50aWwgaXRzIGNsZWFyZWQgYnkgdGhlIHVzZXIgdmlh
IHN5c2ZzIi4NCg0KTXkgcHJlZmVyZW5jZSBpcyB0aGUgbGF0dGVyLiBIb3dldmVyLCBqdXN0IHRv
IGJlIGNsZWFyLCB3aXRoIHRoZSBmaXhlZCBjYWxjdWxhdGlvbiwgd2UnbGwgcHJvYmFibHkgbmV2
ZXIgc2VlIHRoZQ0Kd2FybmluZyhvci1kZWJ1ZykgbWVzc2FnZSB3aXRoIHRoZSBIVyB0aGF0IHdl
IGhhdmUgdG9kYXkgYW5kIHRoZSBmb3Jlc2VlYWJsZSBmdXR1cmUuDQoNCj4gPiA+IElNSE8sIHRo
ZSBtaW5fc2l6ZSBjaGVjayBzaG91bGQgYmUgbWVhbmluZ2Z1bCBhbmQgc2hvdWxkIGJlIHZpc2li
bGUgdG8NCj4gPiA+IHRoZSB1c2VyIGlmIGl0IGZhaWxzLg0KPiA+ID4gDQo+ID4gPiBBbHNvLCBh
cmUgd2Ugc3RpbGwgaGl0dGluZyB0aGUgbWluaW11bSBzaXplIGZhaWx1cmUgbWVzc2FnZT8gTm93
IHRoYXQNCj4gPiA+IHRoZSBjYWxjdWxhdGlvbiBoYXMgYmVlbiBmaXhlZCwgd2hhdCBzaXplcyBk
b2VzIGl0IGNvbWUgdXAgd2l0aCBmb3IgbWluDQo+ID4gPiBhbmQgc3BhcmU/IEFyZSB0aGV5IHdp
dGhpbiB0aGUgYWxsb2NhdGlvbiBub3cgb3Igbm90Pw0KPiA+ID4gDQo+ID4gWWVzIC0gd2UgYXJl
IHdpdGhpbiB0aGUgYWxsb2NhdGlvbiB3aXRoIHRoaXMgcGF0Y2ggKHRoZSBmaXggb2YgcmVtb3Zp
bmcgdGhlIHJlZHVuZGFudCByZWdpc3Rlci1zdHJ1Y3Qtc2l6ZQ0KPiA+IG11bHRpcGxpY2F0aW9u
IGJyb3VnaHQgdGhlIG51bWJlciBkb3duIHNpZ25pZmljYW50bHkpLg0KPiBCcmluZ2luZyBpbiBj
b21tZW50IGZyb20gb3RoZXIgdGhyZWFkOg0KPiAgPiBTb21lIGNvbnRleHQ6IHdpdGggdGhlIGNh
bGN1bGF0aW9uIGZpeCB3ZSBhcmUgYWxsb2NhdGluZyA0TUIgYnV0IHdlIA0KPiBvbmx5IG5lZWQg
NzhrIGFzIG1pbi1lc3QuDQo+IA0KPiBXb3chIFRoYXQgaXMgcXVpdGUgYSBiaWcgc21hbGxlci4g
QW5kIG11Y2ggbW9yZSBwbGF1c2libGUhIFNvIGlmIA0KPiBtaW5fc2l6ZSBpcyA3OEtCLCB3aGF0
IGlzIHNwYXJlX3NpemUgbm93Pw0KPiANCkFyb3VuZCAyMzBLLiAodGhlIG1pbl9lc3Qgd2FzIGV4
YWN0bHkgNzg1MDQgYnl0ZXMgb3IgNzYuNjY0S2IgLSB0aGF0IHdhcyBiYXNlZCBvbiBhIERHMiAt
IGkgdGhpbmsgaXQgd2FzIGEgMzg0IC0gY2FudA0KcmVjYWxsIGZvciBzdXJlKQ0KDQo+IFNvdW5k
cyBsaWtlIHdlIGNhbiBkcm9wIGl0IGRvd24gdG8gYSAxTUIgYWxsb2NhdGlvbi4NCj4gDQpPa2F5
IC0gd2lsbCBkbyBhIDNyZCByZXYgd2l0aCBhIDFNQiBjaGFuZ2UuDQoNCj4gQW5kIGV2ZW4gaWYg
DQo+IG1pbl9zaXplIGlzIG5vdCB0aGUgYWJzb2x1dGUgbWluaW11bSBidXQgcXVpdGUgYSBiaXQg
bW9yZSB3b3JzdCBjYXNlIA0KPiBraW5kIG9mIHNpemUsIGl0IHN0aWxsIHNlZW1zIHJlYXNvbmFi
bGUgdG8ga2VlcCBpdCBhcyBhIHdhcm5pbmcgcmF0aGVyIA0KPiB0aGFuIGEgbm90aWNlLiBHaXZl
biB0aGF0IGl0IGlzIHNvIG11Y2ggc21hbGxlciB0aGFuIHRoZSBhbGxvY2F0aW9uIA0KPiBzaXpl
LCBpZiBpdCBkb2VzIHNvbWVob3cgb3ZlcmZsb3cgb24gc29tZSBwbGF0Zm9ybS9jb25maWd1cmF0
aW9uIHRoZW4gDQo+IHRoYXQgc291bmRzIGxpa2Ugc29tZXRoaW5nIHdlIHNob3VsZCBrbm93IGFi
b3V0IGJlY2F1c2UgaXQgbGlrZWx5IG1lYW5zIA0KPiBzb21ldGhpbmcgaXMgYnJva2VuLg0KDQpP
a2F5IC0gdGhpcyB3b3JrcyBmaW5lIHRvbyBzaW5jZSB3ZSBwcm9iYWJseSB3aWxsIGxpa2VseSBu
ZXZlciB0cmlnZ2VyIHRoYXQgbWVzc2FnZSB1bnRpbCB3ZSBoYXZlIHNpZ25pZmljYW50bHkgbW9y
ZQ0KZW5naW5lIGluc3RhbmNlcyB0aGFuIHRvZGF5cyBody4NCj4gDQoNCg==
