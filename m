Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5654758A0F1
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 20:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2943B912A8;
	Thu,  4 Aug 2022 18:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64BAD91404
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 18:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659639372; x=1691175372;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0NeHmo5ZjmE6CdnmVD40dM+3FRi+MabW0IITQ6jLQ2Q=;
 b=We8DxgabPWGpPmO42dQmEJH0UhduvuRWnxaCneLCKCmXG3bVJB6aaL3B
 A46Z78VP06BIpWtewi10CAOgPlxlYIcptHvMLWJ1A/QqITTW8NtWFhrkX
 FGIht6Hq45orSVM7H8y/QZV6bgPA/SXa2VaZczn6Sk3P/2nVGeJGjN5fe
 MhOe2iaGGDmJxdPOnKf72e3Ad3q2e9Z+FpkCPChRNi4pI3GUfRuvVoieS
 JAQh7FFYyzF5GILldFDnPFCwNrw8SAYsSBLZTioDla4yvMUbn6JD/+Jf5
 wbugvF6De99dnCoULs3HNmADclu+eHby1j2m3E8lLAG9dxC0JBIYKae0l A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="287582288"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="287582288"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 11:56:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="600113247"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga007.jf.intel.com with ESMTP; 04 Aug 2022 11:56:10 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 11:56:09 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 11:56:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 11:56:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 11:56:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DJFewHeN/IRrzzefIyLFM3XFGPpGR6ju7eIrha9lGa9+4AoaKfuuA5Af16S7Ec8usEoSF8aKte3v8AptFKIZcUXWlyzPcamRPJ8J8mk/JrWZWQYzUnlp14cu1Cx6kRNKhgxw09RMECbytCvQiKnIq1iGg2DH8ywXjqnaPtmGzGXoZ3Qc9dLM2llxA1+uDhSwtshesWoJCYPf1z8tRpZqJXxzfTgSHGypX3A6ay40XuWkuNmqB2jAZpcYKUZeiun67/ao9rBo5ZhewKxDUU4OhXOBIUw6BM9QZd0sx3+wuoMOWFm0HP+u6dohcRP8n3Kb/iBrjOv4DEU3kGEgtpgJfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0NeHmo5ZjmE6CdnmVD40dM+3FRi+MabW0IITQ6jLQ2Q=;
 b=cs2mXRh1hEFidHXC2p5kFtVSg8bNB0qVHg9KewY4sODPgEPbKpC5BdNPa42+Hmr+At88UuqlMz3lVEgm9ijkOxP960IGAeRlMbda1D/yIi+i6IZUWtau+OQitqdGkICCUFfpwhh5cXgK3EfSgrDZU49MmpfxNYoUZH/IbE4woFI4X9D9uMLg8U83Q/MtdM7fn/jg+x3eAspR/7BJEt9kP8bz+KiBKbycl8QiuwT6QpQ8bgfoiuulUGiYXrPEzzbvyzF5pF5dCduCsBEkrlyZaaD4h/oBQ9+EoxwYwj6VSzNOjnutqfLP9ucISnCYQKhIS0192TikjZEwaqHf2DIF6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) by
 DM6PR11MB3804.namprd11.prod.outlook.com (2603:10b6:5:13c::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Thu, 4 Aug 2022 18:56:02 +0000
Received: from DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::e9a1:388f:dd93:5505]) by DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::e9a1:388f:dd93:5505%3]) with mapi id 15.20.5504.016; Thu, 4 Aug 2022
 18:56:02 +0000
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH 1/2] drm/i915: Fix NPD in PMU during driver teardown
Thread-Index: AQHYp41BB8XuRnzmyka+if+XGrqz7K2ebUEAgACrT4A=
Date: Thu, 4 Aug 2022 18:56:02 +0000
Message-ID: <9f8bc74b5f0de4ca2803caba4c99a7bdea0c1953.camel@intel.com>
References: <20220803230325.137593-1-stuart.summers@intel.com>
 <a3920919-26c0-fde9-7954-cf44539d223d@linux.intel.com>
In-Reply-To: <a3920919-26c0-fde9-7954-cf44539d223d@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8dceafd-7ee0-4a5b-0948-08da764afa26
x-ms-traffictypediagnostic: DM6PR11MB3804:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S/NqIMqCH6yuZyThsu11oy8JUZMxKfARjbFAKb2G+tqQCG12voioCGnPdlYg5rKOwm0cghBf+uEd9bajS33SHbFmgAeczWzgp81InnQXM7MT8Xg19wIm+PqNIayK2gBxBVk73rLhkkWp8eXkEaz5ZeJssU27hg1fUSm7lqdY4luYC0wic62VUGVysU86CRGUBSwGk0i0L42ZfFnA8v4VRbylKCbP3Mus//60DygQoUXuMPbtApxmo5erY4wQ5pxFWvs/ZDcWaQaNuE+W6PpW7ChxrNcaJ2qIQ7pXGOXQhrMAeSvJgCxxRt/0TUMJ4PNeVn+g5RFTKkUwwklr1a9yMrRMP0pH/WLMg0cR15/WZevRu7L6W7H4HLCgiQplO1QHjXdBntXZLVjJGkH/goExEHiqTcNrikKsp+rJLyoIqawmyu6ntFf32qLKrpyvAAsCUqO8SHDDqv0cprMoPP0a+c18LtUaElk4AW42FYZMTEcV9IwaXHRFyfMA6eWAT/5O8j8Jt0rKImIdzVpEF24dkGClZr81Q7EbGfylTd4V4cobfgP24o3vdorFTBbW+bZJK06NuDGc/8kxaxrIjhuNS268V0R4otU5ma4ptRF8LdoWQ5WzHrA5pUQcY6qQkByt1yztcefryv3VgEgf+k1ewlfpFPqbUSl7rRHErHMmF37jPwUHxsb4ccLXfU3MHf070sghNcAWgkUiwcG603TNd8PIyOP0wAzFrEnIeGL8e8TUg32GAd5J5j2XUWdmQ0kYWg4llfi+95H9kHDvc+mFVAgsgjW9NcT2ot0SZtUt9Usvg3zNccUFgr5JmBAfiGT+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5573.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(346002)(136003)(39860400002)(366004)(54906003)(53546011)(6506007)(26005)(36756003)(82960400001)(2616005)(38100700002)(186003)(6486002)(8936002)(41300700001)(71200400001)(478600001)(122000001)(83380400001)(2906002)(86362001)(91956017)(5660300002)(6916009)(6512007)(316002)(38070700005)(4326008)(66476007)(8676002)(64756008)(76116006)(66446008)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHQyREhpckJLNmtLS2dOYmhnL216KzJhSUtnQnFNOW5lcVZkUEo5RmcxcXA5?=
 =?utf-8?B?NWVXWTZObGFmTXc4UVlKdXFBVkF4dmhaYkRWeDZrYnNvby9pV2ZhNmhFV3RI?=
 =?utf-8?B?SVY1aGVVVjRGTnN1UTYva2pSMlVadUdlc1VOU2xSdUlyNml4YWIxeXd1MFRx?=
 =?utf-8?B?U3NBNDBxRHZWQ1B1clhSWCtUazNzSEdjNDdEK0FUNjBwRHZyTS9QUGd5djJI?=
 =?utf-8?B?SVMvejArWGplWkNIY28yYU5jeTlKZFJLbXZGZ1RESSs3THA2OUVEcHZaRnNO?=
 =?utf-8?B?bnVhRnphYjc1Sk5uWnVBYzl1TXhvVEZKbU5pWHJWK3ZKaGh6RW8yZm9vS2lm?=
 =?utf-8?B?M2pZc3ZpWFBDRVRZb01saWFvcmZ0WHRwNThmWGEzNzZYNDVPNmM4cTJZUWdz?=
 =?utf-8?B?QndRZDV3WHpDZnRIdXA2TGo1N1BWQllJcUdISWlvTUY3N0taNlFxRzA5WEJY?=
 =?utf-8?B?c3lNVDQ0RzdLeTliZzRPV2VPZnZpSlFSVUE5M2JqNCtmRk9YYWw5QzMwYXVt?=
 =?utf-8?B?NDlaYzlRRnJiQm5aZ2hMQ21xLzg1MkFRS3BGYjU0M092dDQ5NFZ4eFdwQ2oz?=
 =?utf-8?B?T1V6QnNtK1F2bFV3ZFE2RzhPYi9WM2xLUUUzZHljSDB6dmIzdnlLRXUydnNS?=
 =?utf-8?B?UmdZUi9yTHQ0aXBNVk5KM1YwcXlQWVd0MGpWeDlJby9OeHE1UW5aVWNYUEY1?=
 =?utf-8?B?RXU3aFFONnNZS1RGZm0xUHNueXRUamRqdjI4UlhWNkQyeStyNTVlU2VKZVov?=
 =?utf-8?B?RXlkRDRlbEkzKzFLaTRMYWc3WEtoUzV2Y3dSOEsxaDMyM1p6YkQxL05BYVU1?=
 =?utf-8?B?YS9YUlBIRFp3aHhGK0x3NVhvQjhsZTF4OHF0T0U5TnFkdUIyY045SXV5U1A4?=
 =?utf-8?B?aTJCVGNwemo3bXkyNjRJWlhmR3ZCeWkxV3RSNnQ5d2dJY0g1THVEdk5Ec3pa?=
 =?utf-8?B?ZmRYOTJxajVIYXp2eUlZUEtqVXVHOFB6eTZ0a0ZZU0pteUtQMmRCTlYybGFm?=
 =?utf-8?B?QS9FR2pLVVM2dW9PbHYwNlJPK2RXNTNzTkIzTTErUU5WY2Vkb3BZcnpZKzNH?=
 =?utf-8?B?eklRamxncjZMNTJzTlZNU1Y4MG5NbGM3YkFlRVR1Ym5zSzBHNVRiVFdXTHhh?=
 =?utf-8?B?UlczTFNhZUpHZ3o1eS94Q3BpUjhRc25lWUloZkVYUnZzTm96SFJjNzhieFVI?=
 =?utf-8?B?c0orYjFIMHNVY25JOUk0eVYvN1lyUEJzbExhaERONi92d2tCVm5sNTZFNzJ2?=
 =?utf-8?B?R01MNmZ6ZitiTE1OYThLS3pDRVdjbVNFUlFUT0wvZ2ZBdnA0V3VQL0xpaWhl?=
 =?utf-8?B?a1R3b1NtVEEwWDZMVW0rcEVCam1HcGRtclZCNENkQUxsWlhyZWk4K0diMXF3?=
 =?utf-8?B?VUlJVmJmbGRESUhRTmZFYy9Bdk9teGtlWXdaRWh4RnpzeEJ3MVRvcTh6Z25v?=
 =?utf-8?B?UUlVNkxnZ1Q4dmsrNXd4K0pCWUZqKzdyQVdnK29YN09GdHdKWHZ6KzdJbTZO?=
 =?utf-8?B?K3JxbVhoTTZmdXgwVFhmS1VzN01URVBtV3ltWUZpZXdIVHRMc3RYZ3dmSkpj?=
 =?utf-8?B?Wm5DWlhTSnJQQVc5bHJDd2J0L1Q3bVp4QzRGR1FvTEcyaTJ1Qms2SkovYkNa?=
 =?utf-8?B?MkNJRUlyemJhaXpwQnQxakk3TGtVV0I5NVNHcTIzYXZFMXRNL3V5REJCTFBx?=
 =?utf-8?B?OWNTdDBJVHVhZlI0QWxPakFpYlkyMFBGM1V5dUdSQ1NiaERCandNcjdmR3hM?=
 =?utf-8?B?dzk0R0ZhU0JRTC91Q3VBUVhBdTVQYjQrRk8vcnhzc2U2dTJFZzg2clRuN1Uv?=
 =?utf-8?B?UFQ1UVZLYWY5eTdDU2JzRVlaays4ZDVSV3U3N3hBTXo5Yk9lcEozSU9Jay9R?=
 =?utf-8?B?NU1IS2VMYjAwQkJ5djZiWCtvNU4rcWZ3K2NRMkc0RWczcnF4U3FTMDEyRktE?=
 =?utf-8?B?bUd6MUVrS05QZWxLN1l1NEI4QStmMlBNb0VuSFdPbXFTcEpvaVBPRUwrY24r?=
 =?utf-8?B?VWFxY01wM1U1eFZlZ0ZiWGM5U3U2TTgrRXhIakx0eGM0Rzd5VHlTNFQ3dDJK?=
 =?utf-8?B?cTgvZ2UrTzA2UGUvZVRiT29CTTFTMzVHNlAyNlNaZWNmYTdLcHpMd1Nqd1JP?=
 =?utf-8?B?eVZNb2hqYzl4Y2o2K3Fna2JmeHNUZjFxaEM1bXkrQXNFYWFpdlpHZER1Vkky?=
 =?utf-8?B?TFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0136141A0340B846BDC4CE7824E62AA2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5573.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8dceafd-7ee0-4a5b-0948-08da764afa26
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 18:56:02.2175 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M8vJuqdCyQi41LnwRtWy3XBIuLq/iBXkx5EHofKlx+VT5u4ZB1fSxjwfW0gLYaPiqNaCdSJCEi64UGIcAFACHAXLPqMMrBOC+7xbvzEyZPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3804
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix NPD in PMU during driver
 teardown
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTA4LTA0IGF0IDA5OjQyICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMDQvMDgvMjAyMiAwMDowMywgU3R1YXJ0IFN1bW1lcnMgd3JvdGU6DQo+ID4gSW4gdGhl
IGRyaXZlciB0ZWFyZG93biwgd2UgYXJlIHVucmVnaXN0ZXJpbmcgdGhlIGd0IHByaW9yDQo+ID4g
dG8gdW5yZWdpc3RlcmluZyB0aGUgUE1VLiBUaGlzIG1lYW5zIHRoZXJlIGlzIGEgc21hbGwgd2lu
ZG93DQo+ID4gb2YgdGltZSBpbiB3aGljaCB0aGUgYXBwbGljYXRpb24gY2FuIHJlcXVlc3QgbWV0
cmljcyBmcm9tIHRoZQ0KPiA+IFBNVSwgc29tZSBvZiB3aGljaCBhcmUgY2FsbGluZyBpbnRvIHRo
ZSB1YXBpIGVuZ2luZXMgbGlzdCwNCj4gPiB3aGlsZSB0aGUgZW5naW5lcyBhcmUgbm90IGF2YWls
YWJsZS4gSW4gdGhpcyBjYXNlIHdlIGNhbg0KPiA+IHNlZSBudWxsIHBvaW50ZXIgZGVyZWZlcmVu
Y2VzLg0KPiA+IA0KPiA+IEZpeCB0aGlzIG9yZGVyaW5nIGluIGJvdGggdGhlIGRyaXZlciBsb2Fk
IGFuZCB1bmxvYWQgc2VxdWVuY2VzLg0KPiA+IA0KPiA+IHYxOiBBY3R1YWxseSBhZGRyZXNzIHRo
ZSBkcml2ZXIgbG9hZC91bmxvYWQgb3JkZXJpbmcgaXNzdWUNCj4gPiB2MjogUmVtb3ZlIHRoZSBO
VUxMIGNoZWNrcyBzaW5jZSB0aGV5IHNob3VsZG4ndCBiZSBuZWNlc3NhcnkNCj4gPiAgICAgIG5v
dyB3aXRoIHRoZSBwcm9wZXIgb3JkZXJpbmcNCj4gPiANCj4gPiBGaXhlczogNDIwMTRmNjliYjIz
NSAoImRybS9pOTE1OiBIb29rIHVwIEdUIHBvd2VyIG1hbmFnZW1lbnQiKQ0KPiANCj4gV2hhdCBo
YXBwZW5lZCBpbiB0aGlzIGNvbW1pdCB0byBicmVhayBpdD8NCg0KSG0uLiB3ZWxsIHRoaXMgd2Fz
IHRoZSBwYXRjaCB0aGF0IGFkZGVkIHRoZSBhYnN0cmFjdGlvbiBvcmRlcmluZyBpc3N1ZSwNCmku
ZS4gZ3RfcmVnaXN0ZXIvdW5yZWdpc3Rlci4gVGhlcmUgaXNuJ3QgYW55dGhpbmcgc3BlY2lmaWNh
bGx5IGJyb2tlbg0KaGVyZSBzaW5jZSB3ZSBkb24ndCBhY3R1YWxseSBhY2Nlc3MgdGhlIGd0IHN0
cnVjdHVyZSB1bmRlcm5lYXRoLiBNeQ0KYXNzZXJ0aW9uIGlzIHRoYXQgdGhpcyBwYXRjaCBzaG91
bGQgaGF2ZSB0YWtlbiB0aGUgZXhwYW5zaW9uIG9mIHRoZSBndA0Kc3RydWN0dXJlIGludG8gY29u
c2lkZXJhdGlvbiBhbmQgYWRkZWQgdGhlIGNvcnJlY3Qgb3JkZXJpbmcgd2l0aA0KcmVzcGVjdCB0
byB0aGUgcG11Lg0KDQpBcmUgeW91IGFza2luZyBmb3IgdGhlIHNwZWNpZmljIHBhdGNoIHdoZXJl
IHRoaW5ncyBzdG9wcGVkIHdvcmtpbmcNCmZ1bmN0aW9uYWxseT8NCg0KVGhhbmtzLA0KU3R1YXJ0
DQoNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJz
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJp
dmVyLmMgfCAxMSArKysrKystLS0tLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cml2ZXIuYw0KPiA+IGluZGV4IGRlYjhhOGI3Njk2NWEuLmVlNGRjYjg1ZDIwNjAgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gPiBAQCAtNzE3LDcgKzcxNyw2IEBA
IHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdA0KPiA+IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQ0KPiA+ICAgCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSAmZGV2X3By
aXYtPmRybTsNCj4gPiAgIA0KPiA+ICAgCWk5MTVfZ2VtX2RyaXZlcl9yZWdpc3RlcihkZXZfcHJp
dik7DQo+ID4gLQlpOTE1X3BtdV9yZWdpc3RlcihkZXZfcHJpdik7DQo+ID4gICANCj4gPiAgIAlp
bnRlbF92Z3B1X3JlZ2lzdGVyKGRldl9wcml2KTsNCj4gPiAgIA0KPiA+IEBAIC03MzEsMTEgKzcz
MCwxMiBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9yZWdpc3RlcihzdHJ1Y3QNCj4gPiBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiAgIAlpOTE1X2RlYnVnZnNfcmVnaXN0ZXIoZGV2
X3ByaXYpOw0KPiA+ICAgCWk5MTVfc2V0dXBfc3lzZnMoZGV2X3ByaXYpOw0KPiA+ICAgDQo+ID4g
KwlpbnRlbF9ndF9kcml2ZXJfcmVnaXN0ZXIodG9fZ3QoZGV2X3ByaXYpKTsNCj4gPiArDQo+ID4g
ICAJLyogRGVwZW5kcyBvbiBzeXNmcyBoYXZpbmcgYmVlbiBpbml0aWFsaXplZCAqLw0KPiA+ICsJ
aTkxNV9wbXVfcmVnaXN0ZXIoZGV2X3ByaXYpOw0KPiA+ICAgCWk5MTVfcGVyZl9yZWdpc3Rlcihk
ZXZfcHJpdik7DQo+ID4gICANCj4gPiAtCWludGVsX2d0X2RyaXZlcl9yZWdpc3Rlcih0b19ndChk
ZXZfcHJpdikpOw0KPiA+IC0NCj4gDQo+IFRoZXJlIHdhcyBhIGJpdCBvZiBhIHRpbWUgZGlzdGFu
Y2Ugc2luY2Ugd2Ugb3JpZ2luYWxseSBkaXNjdXNzZWQgdGhpcw0KPiBzbyANCj4gdGhpbmdzIGtp
bmQgb2YgZXZhcG9yYXRlZCBmcm9tIG15IGhlYWQuIE9yIGF0IGxlYXN0IGl0IGZlZWxzIGxpa2UN
Cj4gdGhhdC4gDQo+ICAgVG9kYXkgd2hlbiBJIGxvb2sgYXQgdGhlIGNvZGUgSSBkb24ndCB1bmRl
cnN0YW5kIHdoeSBpcyB0aGlzDQo+IHNodWZmbGUgDQo+IHJlbGV2YW50Lg0KPiANCj4gVGhlIHN5
c2ZzIGNvbW1lbnQgZG9lcyBub3QgcmVhbGx5IGFwcGx5IHRvIHBtdSwgYnV0IGFsc28gaWYgSSBs
b29rDQo+IGludG8gDQo+IGludGVsX2d0X2RyaXZlcl8odW4pcmVnaXN0ZXIgSSBkaWQgbm90IHNw
b3Qgd2hhdCBpcyB0aGUgcmVsZXZhbnQNCj4gcGFydCANCj4gd2hpY2ggaW50ZXJhY3RzIHdpdGgg
dGhlIFBNVS4NCj4gDQo+IE9uIHJlZ2lzdGVyIGl0IGlzIGVuZ2luZSBsaXN0IGZpcnN0IHRoZW4g
UE1VLg0KPiANCj4gT24gdW5yZWdpc3RlciBpdCBpcyBQTVUgZmlyc3QsIHRoZW4gZW5naW5lIGxp
c3Q6DQo+IA0KPiAgICBpOTE1X2RyaXZlcl9yZW1vdmUNCj4gICAgICBpOTE1X2RyaXZlcl91bnJl
Z2lzdGVyDQo+ICAgICAgICBpOTE1X3BtdV91bnJlZ2lzdGVyDQo+ICAgICAgaTkxNV9nZW1fZHJp
dmVyX3JlbW92ZQ0KPiAgICAgICAgY2xlYXJzIHVhYmkgZW5naW5lcyBsaXN0DQo+IA0KPiBIZWxw
IHBsZWFzZT8gOikNCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4gDQo+ID4gICAJaW50
ZWxfZGlzcGxheV9kcml2ZXJfcmVnaXN0ZXIoZGV2X3ByaXYpOw0KPiA+ICAgDQo+ID4gICAJaW50
ZWxfcG93ZXJfZG9tYWluc19lbmFibGUoZGV2X3ByaXYpOw0KPiA+IEBAIC03NjIsMTEgKzc2Miwx
MiBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl91bnJlZ2lzdGVyKHN0cnVjdA0KPiA+IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICAgDQo+ID4gICAJaW50ZWxfZGlzcGxheV9kcml2
ZXJfdW5yZWdpc3RlcihkZXZfcHJpdik7DQo+ID4gICANCj4gPiAtCWludGVsX2d0X2RyaXZlcl91
bnJlZ2lzdGVyKHRvX2d0KGRldl9wcml2KSk7DQo+ID4gLQ0KPiA+ICAgCWk5MTVfcGVyZl91bnJl
Z2lzdGVyKGRldl9wcml2KTsNCj4gPiArCS8qIEdUIHNob3VsZCBiZSBhdmFpbGFibGUgdW50aWwg
UE1VIGlzIGdvbmUgKi8NCj4gPiAgIAlpOTE1X3BtdV91bnJlZ2lzdGVyKGRldl9wcml2KTsNCj4g
PiAgIA0KPiA+ICsJaW50ZWxfZ3RfZHJpdmVyX3VucmVnaXN0ZXIodG9fZ3QoZGV2X3ByaXYpKTsN
Cj4gPiArDQo+ID4gICAJaTkxNV90ZWFyZG93bl9zeXNmcyhkZXZfcHJpdik7DQo+ID4gICAJZHJt
X2Rldl91bnBsdWcoJmRldl9wcml2LT5kcm0pOw0KPiA+ICAgDQo=
