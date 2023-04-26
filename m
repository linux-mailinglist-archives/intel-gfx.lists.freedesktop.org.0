Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 198CD6EF832
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3EC810E15D;
	Wed, 26 Apr 2023 16:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48C6810E15D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682525571; x=1714061571;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dpJLaMTlxlQV2PndCsDBSKxHA5Ia3sGwfVcs7df9NT4=;
 b=TIEkJQO6hGwd1Q7Droo45kkuuZB/Z4qApqJ9XaaV5u4DJHeay/67sH0P
 nm76lwmVZB8ELs2pB+pTFmnm/lbl4cmxjXgGVPkNTyZpFWCa35Mq/nOOM
 e9xDzSTS8QvI7Vt6DYjP9hP6wBoXi5YVZud6Y1iIRo9+3sjxc3kHeYe0s
 /k+vyIvadzD6TQ4f9y1B6TNXqwLn5S2ay0bEUMV4gbb43O4IjT9IPJB3w
 XE3jj+xrAm7Abkjnm0zmjuQaQvJgVjq+fet7KeGCQ14Tnhe+q9aO58aq7
 YEvn6AOg8l4sHQl0MfAs+Z/AibZluAVSXu2Cn+u4GseV5QrLSx+lPt9CJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="349965176"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="349965176"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:11:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="696670546"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="696670546"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 26 Apr 2023 09:11:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 09:11:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 09:11:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 09:11:02 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 09:11:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G1Bd+l79cYyjgnLORlVyH6JApfrR5F6n9t/D9QWhtSrgnpDQYIIPVj4MxptNmL8nGxRUUn0U8YwjA/DHSSiM6RO9mM9nFOf7Y5bXX96gph2wQ2Xsq3kZn0HhdPRWieq2NkczdbK/syrPc5HGFr2rbqPexEbTLOzpM7pcqX1CKYwOg1ErBBMctyzE4KCkxzMt7wSFu3uNFTMs3zd2ZcBmR3e2rE+ist3uDD1D13k+OXRPpZIUNT8HgDK65UswtvqJ+vHRV2qbOQP0cXMKPtwmemoqt4vFv81Vw2Pch/716tEF6vDLygoctTffQgwulZ3ijIUMWK3HUKAbHpfoQhpVuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dpJLaMTlxlQV2PndCsDBSKxHA5Ia3sGwfVcs7df9NT4=;
 b=K7iAlZxDYeNBnfmECgd4G88tGQ0NljwJdH06W9duqifQ+K4Sgy5pnPhbY5/WH0aA7ZFhAsLpPJ+zlucAGTfET2etpB1cPN6/Mj7l44N8+DLnsutg3+TsbH4HpnbuIP7HtW6g5gNfnGIuYM7S2dgM7QMT95rIxYHcKdIklA6mSl2S85BJV4hQq9YjoLKAd7XRBDXqu9xanOdvliQVWThr9+bz5sLu7f0KLwfduyooMJz8eYcfNxcitog3i9Ye1Jk12zQRNL9KQxGjNcMYeW8oIgazeC5LsWjV6nhWDMUaBFTq087rmf+s8ZtKXCx5gQklZnIMIgxHkNe3AdPGB5EJng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SN7PR11MB6654.namprd11.prod.outlook.com (2603:10b6:806:262::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Wed, 26 Apr
 2023 16:11:00 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 16:11:00 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement Wa_14019141245
Thread-Index: AQHZd6QkXs8KCxa+G0Ox99/0D62Gfq89h/+AgAA6AWA=
Date: Wed, 26 Apr 2023 16:11:00 +0000
Message-ID: <DM4PR11MB5971334D75F16E0ECE77C9EE87659@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
 <fd12586f-d2ca-f6a8-aaaf-0221ebf4df99@intel.com>
In-Reply-To: <fd12586f-d2ca-f6a8-aaaf-0221ebf4df99@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SN7PR11MB6654:EE_
x-ms-office365-filtering-correlation-id: 60351834-9fed-4a32-0f99-08db4670d3c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wL+zopTAurqkZYcX0V2kiCLAVxfgQKtacV/3HeBOW3q8O+mgO4rF3zi1DgPzydu2zgS+fSauQSXEHeRnyvfqn/TmB5jvdwgCJHPv1Viwx6e99hOYUkRz44EcnLrhdOToHijcBS0tqoLotL/vJtN/rTBO6Sk1UaGcoaMrlvhSb98IddJwDX6kLi0p95eEgS19342NyU9chg8f+fqGLKYBf8ay7KvVcbAnHzfjORYCQnqc6zMNhRmdShiHQXURQdH397N1K49zlg2JDJbbSI5qO32NbeNZiK8+v9kZ4pwokLOFYxAwlsMe+q5LGHgH4iPC6ZhT3G+y1KV7vJSPp4JnYMxDKcqALtVD5h5bQoeIwq5Nq/oXeiJITjGuCcJvfwtb5ZNNRFmpuCVRqLYOdBVI6QwJkH+oOnkURnLYuxg1o4aE/eaggmmkYUjRsPhuePsfyf36l1oV3dn/6ExTXZHQD46odSTsi0uXjoYrO5Jp+zfXD9zJFvGzLtc8xh/xDM8Bd+nmQpiTw1HzdH69kFuGOBmYm8mws+oq3+Dn3FNzdxuZeFK1WQKn97k/N2MUBYmPDJChr0HpsL+SPHZc661N6jxjDgxIimaEuuO17tmWw5vZCF/5W2oOs5ki/ft/nDbx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199021)(6506007)(8936002)(38100700002)(52536014)(5660300002)(8676002)(82960400001)(316002)(66446008)(66476007)(64756008)(4326008)(122000001)(41300700001)(55016003)(2906002)(38070700005)(107886003)(53546011)(9686003)(86362001)(26005)(33656002)(186003)(7696005)(71200400001)(83380400001)(110136005)(66946007)(76116006)(478600001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YndXV2ZIaUw1cmhYV3poTGZwWTNkNXRlMGNXTm1zTThmNUlIWlg1SWFScXRs?=
 =?utf-8?B?U2pPWlV4MStYM3Z3dXU0K05hbzh3Y1NiOEs2S1hNMnl4dHluNnZHN2tid0RB?=
 =?utf-8?B?ejBad1FrM0J5UXhKMHhHd2wwV1V6Z3p0RjRUcmRyOFlRRnA4OXFSODg5cDk0?=
 =?utf-8?B?NW5zMFp5WWJoS016L3hDdlVEeDU0ckJweDZwSHUva0NDNkIzWUZhWEEwc3hr?=
 =?utf-8?B?aWRuMUIwZXdWTWo3TDN1Tm9nUlc3eU96bXlGcytqbnJiYzBHYXR1VDh1c3pS?=
 =?utf-8?B?L0dlYUN5dE9zeWYwa25mVHJoUmN1U2pCQUZMNUUzSXFXVmtqTE01REJDTmpP?=
 =?utf-8?B?Q0lHcjlpT1JHM2FWOFVtSmFYSVI2enBFVGZaR082dWcyZ3FEbXNvOFQzNTlu?=
 =?utf-8?B?MEFQUUxuSWxmeFlzY0ZzbW1Ub1ZZQUtia2xLUmEweXJ0QTc1YlJsejRDbTNO?=
 =?utf-8?B?RWZSOUZadnhIV0lha2s1cDdNSmtrWncyTTVCWXh5aHhsWFg1RlVEOWlzTys1?=
 =?utf-8?B?TFBRcjFQT1VnV3ViVkV1a28wbjNQOTI1YTJkR2Ewd3hxTG9CZkR5dkRyTFlz?=
 =?utf-8?B?VzhlaU1vb2pjNVM5bkN1ZVZ4VEdUUi9oV3lvT3VDWGdSQkFvcG85bTR3MXdH?=
 =?utf-8?B?NDd2czdsa0ZKY0RGUnNzQnlEdTlzTmZQZW1tZFZSYVBHUmF5aUx6VXNBMjBD?=
 =?utf-8?B?bTZHZ2VFcFZ4LzRuSTI5a2xEWFZ5MUJyanZobnhhZHNVSnB2R0JJZC9ZVU5N?=
 =?utf-8?B?cmdoa2xmVit1OVpkbitpbkh2bHZmRUdLdTIzcDBQRlNqbnBaeTFOYlRYMWVV?=
 =?utf-8?B?T2NkZWNmaWtrVktzTTlxZXRrSlcxc2RRdTY5NVhPcElYS29Ucnk1WDFoc2k0?=
 =?utf-8?B?eWwzRDFOdTlZa0NzODB1WTFiZTRVUGxvSXVqellBaXA2TmFOc1JIQlptZDJW?=
 =?utf-8?B?ZVQ5cHd1ZzAzVGxtUHVMaDg4Z3BkUWZoZDlkekV1RWtuL3AvZlIrR090bWlk?=
 =?utf-8?B?a05FOHVmdkFvM3RTblZ1Rzh6N3NvVmZ5bUZUaGd6RjRDT05NVlBsNDZIY1Rs?=
 =?utf-8?B?ZGI0U1drZzJ2MjNva25CM0UvUjVncXU1UTlyWU1ibndGUlNmeXQvT05zQzlr?=
 =?utf-8?B?MTd5M3FSWjdrQVl2aXZla1dnb01QMlhudmZuQ1grd3BoSVMzdDJEV21LT0RT?=
 =?utf-8?B?VGcwSkFTakpDOFlTdGRLbGNSUDRPajF0cHE3bWk1N1IzelJVQXZORi9EU2NR?=
 =?utf-8?B?SmRPQ3h4SkhXM0t6OHA4bnFMNUNMenNqdjVybHRWT1hKRDVwQ0lTSUc3cDRZ?=
 =?utf-8?B?dmovY1N5UklvSDBDR2ZYSjd5Z2FJSXBwNzVkckgxbFdnT2cyWi96Y2RzV3Fh?=
 =?utf-8?B?ZXNKaUJGbmRkZHorYlRRTUVjUk9TSnZmUHBLeUdQbURjYStHRGZFLzh3cEkz?=
 =?utf-8?B?UHlTRk5Dc3BtTjdndzV2b3VibENNNk8vTDJVdG9iQlYyU3NCekZvZXRKT2Uy?=
 =?utf-8?B?dUZDaEZIcjBDeUQ1YTZ5WnpUNUhUYmVTb2dMV25GMnFjYkZoYzhEU3orZHVP?=
 =?utf-8?B?U29td1F1S2ZLNTJPdUFRaGMvN0liLzBybnNiRmJVcWtWMWJlM2ZSejUxUStB?=
 =?utf-8?B?aG5PRVM4blFrUXNleTFaT0pGajB5UGpEWXVOYTdXcU9iUjBRQm5FWDd0MDhj?=
 =?utf-8?B?cXh1S1p0b3pEdXlnaXJ3ZDJqYW1kcEllU2VEV3hYWjJJZXRac2k2QWtraHlC?=
 =?utf-8?B?bU8zaUJCeDhTZGovLzBkVlVIYlRhWjdZb3lLN0orVmNzSGtOeUhKNTg5Q3FY?=
 =?utf-8?B?T1pVSFgrUUtONENxbGxCUHA3ZzhnNEhHVnR4elpDREhKVEsvcXdBeUxhT2Va?=
 =?utf-8?B?aVFWKzJSNndBN1Y3aUh4K3lXNGhuUXRWRlR3ZmY2N3dOM2l4WkJTbWd1ajdN?=
 =?utf-8?B?TnFTZG5GUm5VdjlUQjFmZm93WTN4dTFiWlNjbXlFc2xRVnNZK2l2NjJrc1ZV?=
 =?utf-8?B?NW9FMW1idVVueGR5OTNodVNaSFBMZ0lKd3d2TnllTnFsb0U0LzN6VkgxVFdD?=
 =?utf-8?B?Z1hxbDNqZEtsNVFOc1dEY0pUYTM0WEJOakhUcXZQeU5zL1ZKVWtRdG9VZWpw?=
 =?utf-8?B?R3pNNjJhSnFHYmVKTkgyK2FXZEdrSEhEYWJhT2w3MkREeTFjK2txdncvYXli?=
 =?utf-8?B?Y0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60351834-9fed-4a32-0f99-08db4670d3c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2023 16:11:00.6284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LmL0nUIH+7wzv9r3C7zzG8Rvk9bidx0tfhUYgN1lGafxlit4TpuAhP+WPr7oDvriACPNG0vsYNW4wpAItD/M2WX4iv5uqmbuh1TWaJ+iGzQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6654
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement Wa_14019141245
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FsdmFsYSwgSGFyaWRo
YXIgPGhhcmlkaGFyLmthbHZhbGFAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIEFwcmls
IDI2LCAyMDIzIDU6MzYgQU0NCj4gVG86IFNyaXBhZGEsIFJhZGhha3Jpc2huYSA8cmFkaGFrcmlz
aG5hLnNyaXBhZGFAaW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjEuMV0gZHJtL2k5MTUvbXRsOiBJbXBsZW1lbnQN
Cj4gV2FfMTQwMTkxNDEyNDUNCj4gDQo+IA0KPiBPbiA0LzI2LzIwMjMgMTI6MDAgQU0sIFJhZGhh
a3Jpc2huYSBTcmlwYWRhIHdyb3RlOg0KPiA+IEVuYWJsZSBzdHJpY3QgUkFSIHRvIHByZXZlbnQg
c3B1cmlvdXMgR1BVIGhhbmdzLg0KPiA+DQo+ID4gdjEuMTogUmViYXNlDQo+ID4NCj4gPiBDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+IENjOiBVbWVzaCBOZXJs
aWdlIFJhbWFwcGEgPHVtZXNoLm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+DQo+ID4gU2lnbmVk
LW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3Jl
Z3MuaCAgICAgfCA1ICsrKysrDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIHwgNCArKysrDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmZfb2FfcmVncy5oICAgIHwgNCAtLS0tDQo+ID4gICAzIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZWdzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF9yZWdzLmgNCj4gPiBpbmRleCBlOGMzYjc2MmE5MmEuLmFmODBkMmZlNzM5YiAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZWdzLmgN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZWdzLmgNCj4gPiBA
QCAtNTI5LDYgKzUyOSwxMSBAQA0KPiA+DQo+ID4gICAjZGVmaW5lIEdFTjhfUkM2X0NUWF9JTkZP
CQkJX01NSU8oMHg4NTA0KQ0KPiA+DQo+ID4gKyNkZWZpbmUgR0VOMTJfU1FDTlQxCQkJCV9NTUlP
KDB4ODcxOCkNCj4gPiArI2RlZmluZSAgIEdFTjEyX1NRQ05UMV9QTU9OX0VOQUJMRQkJUkVHX0JJ
VCgzMCkNCj4gPiArI2RlZmluZSAgIEdFTjEyX1NRQ05UMV9PQUJQQwkJCVJFR19CSVQoMjkpDQo+
ID4gKyNkZWZpbmUgICBHRU4xMl9TVFJJQ1RfUkFSX0VOQUJMRQkJUkVHX0JJVCgyMykNCj4gPiAr
DQo+ID4gICAjZGVmaW5lIFhFSFBfU1FDTQkJCQlNQ1JfUkVHKDB4ODcyNCkNCj4gPiAgICNkZWZp
bmUgICBFTl8zMkJfQUNDRVNTCQkJCVJFR19CSVQoMzApDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gPiBpbmRleCBkZTRmOGUyZThl
OGMuLmFkOWU3ZjQ5YTZmYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYw0KPiA+IEBAIC0xNjk5LDYgKzE2OTksOSBAQCB4ZWxwZ19ndF93
b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsDQo+IHN0cnVjdCBpOTE1X3dhX2xp
c3QgKndhbCkNCj4gPiAgIAl3YV9tY3Jfd3JpdGVfb3Iod2FsLCBSRU5ERVJfTU9EX0NUUkwsIEZP
UkNFX01JU1NfRlRMQik7DQo+ID4gICAJd2FfbWNyX3dyaXRlX29yKHdhbCwgQ09NUF9NT0RfQ1RS
TCwgRk9SQ0VfTUlTU19GVExCKTsNCj4gPg0KPiA+ICsJLyogV2FfMTQwMTkxNDEyNDUgKi8NCj4g
PiArCXdhX3dyaXRlX29yKHdhbCwgR0VOMTJfU1FDTlQxLCBHRU4xMl9TVFJJQ1RfUkFSX0VOQUJM
RSk7DQo+ID4gKw0KPiBsb29rcyBnb29kIHRvIG1lLg0KPiA+ICAgCWlmIChJU19NVExfR1JBUEhJ
Q1NfU1RFUChndC0+aTkxNSwgTSwgU1RFUF9BMCwgU1RFUF9CMCkgfHwNCj4gPiAgIAkgICAgSVNf
TVRMX0dSQVBISUNTX1NURVAoZ3QtPmk5MTUsIFAsIFNURVBfQTAsIFNURVBfQjApKSB7DQo+ID4g
ICAJCS8qIFdhXzE0MDE0ODMwMDUxICovDQo+ID4gQEAgLTE3MDcsNiArMTcxMCw3IEBAIHhlbHBn
X2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2d0ICpndCwNCj4gc3RydWN0IGk5MTVf
d2FfbGlzdCAqd2FsKQ0KPiA+ICAgCQkvKiBXYV8xNDAxNTc5NTA4MyAqLw0KPiA+ICAgCQl3YV93
cml0ZV9jbHIod2FsLCBHRU43X01JU0NDUENUTCwNCj4gR0VOMTJfRE9QX0NMT0NLX0dBVEVfUkVO
REVSX0VOQUJMRSk7DQo+ID4gICAJfQ0KPiA+ICsNCj4gPiAgIAkvKg0KPiA+ICAgCSAqIFVubGlr
ZSBvbGRlciBwbGF0Zm9ybXMsIHdlIG5vIGxvbmdlciBzZXR1cCBpbXBsaWNpdCBzdGVlcmluZyBo
ZXJlOw0KPiA+ICAgCSAqIGFsbCBNQ1IgYWNjZXNzZXMgYXJlIGV4cGxpY2l0bHkgc3RlZXJlZC4N
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX29hX3JlZ3Mu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl9vYV9yZWdzLmgNCj4gPiBpbmRl
eCBiYTEwMzg3NWUxOWYuLmU1YWM3YThiNWNiNiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmZfb2FfcmVncy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmX29hX3JlZ3MuaA0KPiA+IEBAIC0xMzQsMTAgKzEzNCw2IEBADQo+ID4g
ICAjZGVmaW5lIEdEVF9DSElDS0VOX0JJVFMgICAgX01NSU8oMHg5ODQwKQ0KPiA+ICAgI2RlZmlu
ZSAgIEdUX05PQV9FTkFCTEUJICAgIDB4MDAwMDAwODANCj4gPg0KPiA+IC0jZGVmaW5lIEdFTjEy
X1NRQ05UMQkJCQlfTU1JTygweDg3MTgpDQo+ID4gLSNkZWZpbmUgICBHRU4xMl9TUUNOVDFfUE1P
Tl9FTkFCTEUJCVJFR19CSVQoMzApDQo+ID4gLSNkZWZpbmUgICBHRU4xMl9TUUNOVDFfT0FCUEMJ
CQlSRUdfQklUKDI5KQ0KPiBUaGVzZSB0d28gcmVnaXN0ZXIgYml0IGFuZCByZWdpc3RlcigweDg3
MTgpIG1vdmVkIHRvICINCj4gaW50ZWxfZ3RfcmVncy5oIm5vdCBnZXR0aW5nIHVzZWQgZWxzZXdo
ZXJlKEkgbWVhbiwgaW4gaTkxNV9wZXJmLmMpID8NCg0KMSkgaTkxNV9wZXJmLmMgaW5jbHVkZXMg
Z3QvaW50ZWxfZ3RfcmVncy5oIHNvIG1vdmluZyB0aGUgcmVnaXN0ZXIgZGVmLiB0aGVyZSBzaG91
bGQgbm90IGNhdXNlIGFueSBwcm9ibGVtLg0KTW9yZW92ZXIsDQoyKSBpbnRlbF9ndF9yZWdzLmgg
aXMgdXNlZCBhY3Jvc3MgYWxtb3N0IGFsbCB0aGUgZmlsZXMgdW5kZXIgaTkxNS9ndC4gDQppOTE1
X3BlcmZfb2FfcmVncy5oIGRvIG5vdCBoYXZlIHRoYXQga2luZCBvZiB1c2FnZS4NCjMpIGJlY2F1
c2Ugb2YgdGhpcyBiaXQsIHRoZSB1c2FnZSBvZiB0aGlzIHJlZ2lzdGVyIGlzIG5vdCBsaW1pdGVk
IHRvIHBlcmYgc3Vic3lzdGVtLg0KSGVuY2UgdGhlIGJldHRlciBwbGFjZSBpbiBpbnRlbF9ndF9y
ZWdzLmguDQo0KSB3ZSBuZWVkIG5vdCBoYXZlIGFsbCB0aGUgaTkxNV9wcmVmX29hX3JlZ3MuaCBk
ZWZpbml0aW9ucyBpbmNsdWRlZCBpbiBpbnRlbF93b3JrYXJvdW5kcy5jDQoNCg0KLSBSYWRoYWty
aXNobmEoUkspIFNyaXBhZGENCiAgDQo+ID4gLQ0KPiA+ICAgLyogR2VuMTIgT0FNIHVuaXQgKi8N
Cj4gPiAgICNkZWZpbmUgR0VOMTJfT0FNX0hFQURfUE9JTlRFUl9PRkZTRVQgICAoMHgxYTApDQo+
ID4gICAjZGVmaW5lICBHRU4xMl9PQU1fSEVBRF9QT0lOVEVSX01BU0sgICAgMHhmZmZmZmZjMA0K
PiANCj4gLS0NCj4gUmVnYXJkcywNCj4gSGFyaWRoYXIgS2FsdmFsYQ0KDQo=
