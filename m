Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B395E78A9A4
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 12:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 875A610E278;
	Mon, 28 Aug 2023 10:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0DAF10E0BA;
 Mon, 28 Aug 2023 10:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693217418; x=1724753418;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3Bpt3Fvn/W73+h3AkW+bumS61P6csG7TWPkWpGPJKAg=;
 b=eASrYl95BLGjHi9JSEj4f7BTvUdQ1XWOelVmyjlNnbf51n5buvEkhg01
 fIvegmbZdlanh57mQyU8HTZ8c/RIQEsEoEyNNrBttqUysnJwQOOfMc0bq
 PG0mMVYNynQwPCOJUdhuhfvVSqWNjyNtJIAfDuAPu0LXy4NYjbhkezPZW
 W8COrk0dH5WQ12VTSNLdL5m8VZqcImPmgP3VrRniLat3ikGEMeeVzdOPg
 PlxRQLTj2H4buOuQcsvfsA/YRhZU22nzV5RXb4smZE+eKYpRLcON+QLBw
 ACDOcy2O0JPl1x4vXMHwAzCysRELXn4YgCNN8hWdJfNCW4P8AdgLzcXHV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="406056321"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="406056321"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 03:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="738195318"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="738195318"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 28 Aug 2023 03:10:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 03:10:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 03:10:16 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 03:10:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FpwzxyK5ZtANG8C4FDsacJ0y1La26mBP8fzZJolJPQa+4LCL3H1WDzZGYJWWGr7FVaQ18tiMXi1voU1QjGImk1i3Q9uZxUXydb9oI5SXxgz/W1xNvrteYzMKb2BJ3aqx7pJ3dzsuvr6S+lhlPzWyKPQvFoneQVH72OxLNNh7R4FmGXktrQ+OKvt6CUFGKW3V95tNp5CTGNpl2ocvaa3vUeYWgqrEtsTN/DbX6tuRzxieYPSaaKYBI6GvZ0vA3nMaaZgbu3ip34bEBKBT/sk5pvbSr21QWlLT47i8mq/Od4cHixDGSfjBSqZNuSXljroCnL7bxacYjf009FWkxb91RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Bpt3Fvn/W73+h3AkW+bumS61P6csG7TWPkWpGPJKAg=;
 b=VmxAEPNftg7cfRYfVdLLqfvF8vyaYNJiRm2vWcnQfpPKm3s9hy8ZcEbZ/ZJP9/5FSXR++814MsR3KGkFKA/ibmen6JuTwOPQz5f+2oUv7zJ32tu0ULzoE1cNRQUhz1veTaNjyyKuL25AOp9sILUo9g1L/DGpMqKECVIrjq8rbPiRd2aaKfLUsfvlS317rN5wbfEfN7Jm/LZqooAVbsq/mQXkTDtuVKmc8ebKkOyGWgrTgqVFSEiTuVJb9KDSINOOryENCPZedoklwzDf89hM51x94CVzDYfo1ll3str2mC8DWFY+2wtzsh9azG+686q4jaTWZcFJP2uwqNPxRRS0RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BL3PR11MB5684.namprd11.prod.outlook.com (2603:10b6:208:33f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 10:10:14 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 10:10:14 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-xe] [PATCH 3/4] drm/i915/lnl: support FBC on any plane
Thread-Index: AQHZ2XfWeQjFVrBu0EShGKZtbMH1iq//aTIAgAATiYA=
Date: Mon, 28 Aug 2023 10:10:14 +0000
Message-ID: <379a6a5f18701bd21e86f965329e51391023daf6.camel@intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-4-vinod.govindapillai@intel.com>
 <87h6oj35jx.fsf@intel.com>
In-Reply-To: <87h6oj35jx.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BL3PR11MB5684:EE_
x-ms-office365-filtering-correlation-id: 7091581f-fc3a-45d4-5b21-08dba7aef8b7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uwZ+2RNGg95BPPH9yBKuEnZGGOMsCJSBVy4lqZN07v4DDISuctwoPECbYN/YGIFB5A87BThwKrZ1Qre1AbcroQDECTtd14s9qofchleGnH5uuEG87+8fiERgWDZAL0hP+VKXRcoKAOpyqJ06yXdUUdfsW/hBfcVZhGEoUFrU/+vTPUxdCdRDjZoKBGfBKMXVvNvIAxLWC6147pRWLM+81JfPIR6toGtXITwi+LLOu/TK3FJ2DXtkIWRMO6qB4Pa6KQs+HI2mBHGoGK7nOPpECwj9xVbax4uZM+kFTP5qXQC7qhsBnYWSTfSMXPv2BYqQ5XI5mKg+xI1rNQfTo92UuLznQughqFGhbHfoouiZNwjBYaUHtFAUNqC8P8mZLCc2KKVPOT+w2tlVnvLV1gudi4olbbWycPIH15bUP9+hILDGINovujL8Z9uV5OngGKuQPc99fx4N5U9wjYsqI+2tm158pqRtUPt8oSCCklYsrYkR1h7K1PwkhFoZrpnEyzqdrBU6dks7wlmrrYLNPwXt/oWv6dkWFpsibdjajjGuYQZoUa/zEK58xJ09xGVWeeQ3HF6WTJFounneOHLOex2A6oQjEHJQUMLXP2lBPOgRAF27ikg+xbI7araFyCe3ibM2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(136003)(366004)(39860400002)(376002)(451199024)(1800799009)(186009)(83380400001)(478600001)(122000001)(26005)(6486002)(2616005)(110136005)(6506007)(71200400001)(6512007)(5660300002)(86362001)(2906002)(82960400001)(316002)(91956017)(38100700002)(38070700005)(4326008)(64756008)(66446008)(76116006)(41300700001)(66476007)(8676002)(8936002)(36756003)(66556008)(66946007)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bm5PVGEyS04yZVJ2YnFFK2FsTlBPOFJPOEttTFN2Z3htRTJqSytheDBRVmNq?=
 =?utf-8?B?cVladFB1VlEwc2pMMGJrVFdQVk9mUE5GSldPNUgxKzlpdkRYaWw2dnJubHFJ?=
 =?utf-8?B?U0hkb3JPOXJYUzlZeGZUQUhXSlFmSklVNzE5WXhIYlJRenpsTjRESU1EWmdh?=
 =?utf-8?B?aHYxVko4VUNlUER3R0h6Z0lVTC85N1A0RFZQMWVMb1lYVU8veDhpR1UzN1d3?=
 =?utf-8?B?Q3RTdmpFb3NXYXdFTU9ub3VtTjJBWU9KV3lvRnVPUDhGandYaFJGTDV2TlZC?=
 =?utf-8?B?ZTdaaU8xUk8rVlp1Q1JyOE5leVNYbmJ1Y3YwcmNVTTcwdlp0VE1TKzNydjBs?=
 =?utf-8?B?ZjU4STFWTlQ5UWJ6d1FwelVlQzhwUk5FemcwcWNKSlJHQk1RdnYwd3NCbzBR?=
 =?utf-8?B?SXJLbThUMXBnM3lFc1hzU3NBV0haWE1RSWxMbHdyVTAyd1lUdkpmNEcwRWNh?=
 =?utf-8?B?SjBoY1RDdy9QMTNJaVc0MXZlSllQY0ZtRk9tcjFjQW9WbnkwWGc5ZlNwN1Rx?=
 =?utf-8?B?ZjBNeWhjTFBvVEJaS3FTdFlNdUk3UHE3UERqQWk5NUs0dDZNemZiWHNNalZ3?=
 =?utf-8?B?bTdwN3ovODRkL0hJcTJqdXVtT0pVV0tabkdkRVMzek1sVHFnL09yT1lhS2Nn?=
 =?utf-8?B?Q2hqTkpZelBqZ1k1aTlidnJsYVN2aEs3aU9taFBieXhoM0hoTUwwNXV6Znpn?=
 =?utf-8?B?bk1Fd0VwcGZaNURtVUdhS08yb09QUlpRS3lmelhkbVc5bEFmWmRFaVEvK1l5?=
 =?utf-8?B?NEp4ZTFJY3FIT05nRnNJbnRyekM4eHhBZFFaM3dBNHd6T2s3Y3laRUFBM1p1?=
 =?utf-8?B?dTFqRm1rMFhlbWZkdld6ZG8rWURMSkVqUml4ZEUrVGJnYmI4SU1rdXdDZVl0?=
 =?utf-8?B?Zk02OVRUdGVwRnFrakxrODhrRHgvVDk3cWUxOElWTGJ0cEwwRnBuQ1l4dXNN?=
 =?utf-8?B?dktXc2NTVFJnMEdoWmYwaHhNVlpIRVNJWGpPc1RId1N6VmR3ZTk5cFpSWUVn?=
 =?utf-8?B?VGsycW9JTExndjRNNHFkeEN6OHRGc2xkbE0zTEQ3ZWcxWVJwbTFSU1FIWUVU?=
 =?utf-8?B?RGhhT2RITXJ0RXlrWmMrc2o2NnBTd0tvd1Z6ZEF0dGtPeGZhTE1LK3kyT3pK?=
 =?utf-8?B?alB3VDVFSlZFZ3MrQ1VNQU1aYWJGTm93cTBtQzVXb3hUYlplRHJVOUxtekFI?=
 =?utf-8?B?d3IrUmtueEpDK2FvMHBMVCtzSFkvYVhxNkdPR1o4OU9CUVg5a0FWWmN6NVJ4?=
 =?utf-8?B?eFJ0eFIzejd6TmRsUDVKTHFPcUhIOE9WRXJMcWdlak1QdDczWm5BbUNVbndP?=
 =?utf-8?B?RXg3cDY1SU1wRmdaTlZqcHgrMnBuQW1ZVFQ0ZU5lL2RuakV0U01FM3l0cnBH?=
 =?utf-8?B?aExGNHVwRituMkpPdDUxZ3FsUGZ5YVJOWVlrZWpMM0dxajZCOEZZYUNBVVpI?=
 =?utf-8?B?ZGJSeU5xZ3ZPSkNuTVpQY3RpR1VoWnI0Q1dwZkV0QlpvMXpNTHVLRGVVNGwv?=
 =?utf-8?B?dXhqYWRGMC9GK1dxRWVhY1RNNEloN1ZJL3BsWkhWUWdtdjZhTWsyMG5wY3Fr?=
 =?utf-8?B?YTIwYUNqd3NvOW1zRlQxODBjcEthVUlQRXhiTUd5aklwUVNqcU9aQ09ucU43?=
 =?utf-8?B?WDZjTEFBRzdlcVRTZ21CTGpwRzRUUjkxU1hyLzVlL1JzbjJaOStRM1gwKzN2?=
 =?utf-8?B?Yk9FQ0czeThPYURXd1hlKzYveVRZL2NueC9FMmNLMktvVER1MTZuc1EwZllZ?=
 =?utf-8?B?ZkxLRjhBRStYTlhyUTE2elNOYUx1V2RBUVlJbUg0aWlwVkwrQ3F4NHNYQUsy?=
 =?utf-8?B?cGR0ajhYRnRxQU9MNzd2Mk04NCs3bkxmcS8xMjMveU5NQnFaT3p2SFVONElY?=
 =?utf-8?B?U0swQ3ZsOHlEYTJmL3RBZURzdkVCZHdQbWhVcmhJTm0wV09pU1d1L2RJdlhS?=
 =?utf-8?B?SVZDTzdzM1BGT1k1ZGRWMVVuUUhYam5Hb0J4dlN5bEhyMVlUcDF3b1JrQkJP?=
 =?utf-8?B?cVJFR2Nla2s4TWN0c2dwaXdsdlFSTkl1S3lWK2ZNMWFuQU9UdEJGY0pmMkFY?=
 =?utf-8?B?Vm9FZzhIRDJJRlhDbzg0d3h2aStXMWJER0U5REtKVmtuUjh1WmhnMTNraytn?=
 =?utf-8?B?WERGUWlVdXVWRXJtWWtkeG5GQnA2NmhNRVN6b2VuZWcySk9sQjJNaHkyUUIz?=
 =?utf-8?Q?L/Swcp8sPWNv6yZCSPG5keI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C18FAEA30FB6F349BC129376793382D5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7091581f-fc3a-45d4-5b21-08dba7aef8b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 10:10:14.1804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2aGuIXVSSE5nudmXlyb9N6dHYaf6lweHDtoR8T/e4CA3P6S28s39opZR0oVr/+GIjGpDx02nsm3jUJWADwsUi65BEI4A/jhRXFMjk+ZexDI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5684
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/4] drm/i915/lnl: support FBC on
 any plane
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTA4LTI4IGF0IDEyOjAwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAyOCBBdWcgMjAyMywgVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IGlu
ZGV4IGFlZmFkMTRhYjI3YS4uYjIwNzc3NGYzYzMzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oDQo+ID4gQEAgLTEzMjcsNiArMTMyNywxMCBAQA0KPiA+IMKgI2RlZmluZcKgwqAg
RFBGQ19DVExfUExBTkVfSVZCKGk5eHhfcGxhbmUpwqDCoMKgwqDCoMKgwqBSRUdfRklFTERfUFJF
UChEUEZDX0NUTF9QTEFORV9NQVNLX0lWQiwNCj4gPiAoaTl4eF9wbGFuZSkpDQo+ID4gwqAjZGVm
aW5lwqDCoCBEUEZDX0NUTF9GRU5DRV9FTl9JVkLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfQklUKDI4KSAvKiBpdmIrICovDQo+ID4gwqAjZGVmaW5l
wqDCoCBEUEZDX0NUTF9QRVJTSVNURU5UX01PREXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJF
R19CSVQoMjUpIC8qIGc0eC1zbmIgKi8NCj4gPiArI2RlZmluZcKgwqAgRFBGQ19DVExfUExBTkVf
QklORElOR19NQVNLwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfR0VOTUFTSygxMiwgMTEpIC8qIFhF
ICovDQo+ID4gKyNkZWZpbmXCoMKgIERQRkNfQ1RMX1BMQU5FX0JJTkRJTkdfMcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgUkVHX0ZJRUxEX1BSRVAoRFBGQ19DVExfUExBTkVfQklORElOR19NQVNL
LCAwKQ0KPiA+IC8qIFhFICovDQo+ID4gKyNkZWZpbmXCoMKgIERQRkNfQ1RMX1BMQU5FX0JJTkRJ
TkdfMsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0ZJRUxEX1BSRVAoRFBGQ19DVExfUExB
TkVfQklORElOR19NQVNLLCAxKQ0KPiA+IC8qIFhFICovDQo+ID4gKyNkZWZpbmXCoMKgIERQRkNf
Q1RMX1BMQU5FX0JJTkRJTkdfM8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0ZJRUxEX1BS
RVAoRFBGQ19DVExfUExBTkVfQklORElOR19NQVNLLCAyKQ0KPiA+IC8qIFhFICovDQo+IA0KPiBX
aGF0J3Mgd2l0aCB0aGUgLyogWEUgKi8gY29tbWVudHM/DQoNCkZvcmdvdCB0byB1cGRhdGUgdGhh
dCEgSSB3aWxsIGFkZCAibG5sKyIgc2ltaWxhciB0byBsaW5lcyBhYm92ZS4NCg0KQlINClZpbm9k
DQoNCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQoNCg==
