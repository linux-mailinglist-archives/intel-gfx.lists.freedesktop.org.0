Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7C46BCA1F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 09:55:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B51D10EA1E;
	Thu, 16 Mar 2023 08:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D33310EA1E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 08:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678956920; x=1710492920;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Ty7bl6ORm56Ft6Au1cYhEDE7dd8p5JuiZ/cxW2D43Xo=;
 b=e+IdigeCxIk1JXv2wqOckJriE8imGosRKZVruLzA2pFIGesAP/KjqpJS
 XqGqGgwpY9HLxyfGbp8M9m/KHGkxpavxgcsPYC/U8H3/ABACXSYwBPyzl
 OYXT4Jij4NZ/vJ90xNOCG7wNh6RsXFDMV4xmrU+DoD14e3bRfRBq4kaVA
 o4jyc23LzwZ+LW51pxFrttigI6RnIKtJnEV43WiecjImPuvI/oGMKKJkM
 BvtOuq0emQqduf9n/+/kTisjTpUO40QSIYh4Y3Um8CLpJ9SanHipI1p4L
 QK8bjJrX5fKOO2OH/LizuO9DxYNPea5ZXW+NoH6bTX1WtYX8XU4EqYxSQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="337948743"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="337948743"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 01:55:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="748766764"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="748766764"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 16 Mar 2023 01:55:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 01:55:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 01:55:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 01:55:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X01dfOXFjbKD4HVSDGfBd1Y0rfzBrFkpavIH9ZU53zdjWWoET3RETqIGZvLLHdS7iH0STadkf0t3wYLS84i3pnpUmyn+HG7ST8INlOfUbZ1whV1+/Y1IRLNefbDXgxolvdf782OVV7D3nSD81BOWZlEdpDxPVwSUCBge0c/+Laor/UmtJxUPQfqlRf98BQHtXG6bfKbpcORpmNXxuZes2kOzxDqNRAVhNOhg+95TJHRqjTlfr+RzQEzhfArqcXBmbTWk/Schn06/0gms5bAVMQ0X/dUOO+jf8xnxO1Rs3JASTvttIOfnMmetHKODvIwefTgWgB49cULusDyYKZioNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ty7bl6ORm56Ft6Au1cYhEDE7dd8p5JuiZ/cxW2D43Xo=;
 b=QrDet0lhWqlm/R+qW7JZpJi2q53Mr2nMGg+c+9ss1aksPY5ohFthciPMGye0Bxsi+IsIteoTiokLwb4Qk9lqrWYDkih8JK3ESKRArAiR6Rxj+bsTS0sWADut4VmgOraMnPnaZcYGFCrj9/7YJVDGHoyGlOfYjVtHFM88whAB90w1Ms/m4ocglImrQ508xjNX1lWJzZ67BnkEwYkCUVIDZfjrAOZLrof6uX6MfPCMD8LwypAS/dkK99uqDxJhUPaFTBCwyCwKcd5gJleajUHGxs3hUderSujEIB8Sgm9+MQe5UTu00CsgUNvGucpG3I5Em3zFKtxTggpC5lgmDalwKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB4779.namprd11.prod.outlook.com (2603:10b6:806:11a::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.31; Thu, 16 Mar 2023 08:55:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 08:55:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/9] drm/i915: Program VLV/CHV PIPE_MSA_MISC
 register
Thread-Index: AQHZVnVjPOVxlXVEiUOS7ktOR0Fyqa79HRAA
Date: Thu, 16 Mar 2023 08:55:01 +0000
Message-ID: <7972a12266ecd7f407358690b5485f700d3e17e1.camel@intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
 <20230314130255.23273-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20230314130255.23273-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB4779:EE_
x-ms-office365-filtering-correlation-id: 2260177a-9656-469f-72f8-08db25fc20ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sC9dM/MJH/gKkDypTxclrqtdKtA8Nu4qVhdArrNEmjxpHCZqfU3wlqNLn4sYq645+Hv/6qpSjx6XdtlZ7TH09ykFhjcN8OzCsNilgpR1vQ9m3iQc3R/FSHxXimms0JAgcByjY7HzFXwryi54yZY/KSsxcnyTMUnuLNegwRCxE/sYuRzT0P5ETHYf91zJNjcnI++doavUzF8zgi9HQ6kmNPB5GDE0Ucd2FXQQMGUvHEgYm1bj3KY9cKDA9yT4TNM9Tw77Qdgo21ZWCgQ84jfITPPCraz1kXP1miH1omIr4DzNStvb453daqaffbGzhW5IJ1Y5UT3aEADOeXg3Y0NTw5hlv0zw/wMqPGOCz6OPNfzY5Th+PPqvRSU03bP5KqlyeGkS63TUoj+gHdwLztGKBjdYWfxHvo0FOu445YuB/ovYQZWhRrKUKa8c/uvoqDMPxRpGdN4Jzt47hjEpEVytu+9cel3P1in4gaidFj9nr5rxrLsxzm/Ky8pZf5gQ3yypaza3DcCuZLdUx07PmEzM6MPptcJXgIHnDghJTzIiRF1TfRB0AmJkn+PUTGCjIZ6ZlT1H2koR/OOmVGgTZxbopVTa5a3R9mkkrrAEBkVR1FmZRmoBPAcWMklf6CDMg+YrtD09nax4xczklhSPBz8xh30x2CDEwC8rUw28wOQYuvJu550xezHbKFTG2+MKhJzCCbmSYoUUkgcZqGMvokGFhw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(346002)(39860400002)(366004)(136003)(376002)(451199018)(38100700002)(41300700001)(5660300002)(8936002)(2906002)(122000001)(38070700005)(86362001)(82960400001)(36756003)(478600001)(71200400001)(91956017)(66446008)(6486002)(66946007)(66476007)(66556008)(64756008)(8676002)(2616005)(76116006)(110136005)(316002)(186003)(6506007)(26005)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWx6WUJwSGFNTHBPMVJMb0ZiK0NZUCttNkJZbmNxMVRoaTNpaVAwdTNaanNW?=
 =?utf-8?B?a3ZZc1UwaGJScGRadldvQWYvTWVXNWJUNnB1T0JkN2hoYllMTkVGcXAyczVF?=
 =?utf-8?B?TzRoWEtpUlhLaEJnNVVYK0NXN1FoQWFtdTN0Y3N6NDJOQmdmT1pUUUFLVURl?=
 =?utf-8?B?REJhUnEyNWphaFd5R3MxVUlwMW92ekR1eXJsTUR4ZjNITHI3SHo5QVNBb1pY?=
 =?utf-8?B?cFZISW9tTGlHbzd1TGpRVXgzRWlFMHN0VHhETGo0SnA2empWdGgrTWE0aEpz?=
 =?utf-8?B?c0VaYlJvVTA1R2Z2NGJBUGFBb3QxYlducnZGM25McTlQUVdoNFFGT043cTJO?=
 =?utf-8?B?S0RCQndXRmF3ZWJzYjhQT3M4U1BVYkFraVpvcUxQRGtkYlpDNTNpQUVDQmNx?=
 =?utf-8?B?Q0t6bXdNbW9xbkhhMmZ1RFh6OFZZSmpFcmhPcmJBZytOc3h2TU5ndlZHUTY0?=
 =?utf-8?B?cGNnejRXaHcyb1cvY3NsSHl2bnlmeDBIMVZTRGdLcVRUV2xya2NtUTBWOFUz?=
 =?utf-8?B?MUhxakY2Y1B4ZkMvL0tJUFdBckxicEtwQ2E4bTNBdGlVK1FHMDlZbTU0WG9S?=
 =?utf-8?B?ZUJjTVhOeVdva2xIYjJWVnltSFhEL2RaRkRxRWFGb0JpdDJJNktsTzhkRzdt?=
 =?utf-8?B?bjNQc3BDeEhrWFhYc0tFOVl4SHN6UlJxcHdERDZOdTYrbHhqVFNWNkdoOWxF?=
 =?utf-8?B?Mm9QcnN2cHBzQjhvY0ZNQ2w4K004OFhPSzVKOHE4NDBYYmtYRzMyNG9aZklU?=
 =?utf-8?B?bDJHMmlCSEh1Z2hJTG5sSEJ2UytsclBUNHlkL1B3eE40dEs3QUZ2UlVUTWpz?=
 =?utf-8?B?SHU2VkV6bUtUb2hOSkZrRzU4UE8yMzNFUFVsSEFyUlMzeGpnVXZicUl0c3hu?=
 =?utf-8?B?NFI5SzZFNkNUbWU3VytzNkpsNGlmTnhsNjNDN1p1cDNKT0hXbjl2TzlaQjRQ?=
 =?utf-8?B?RjRDSDBZemxySytLNzZac3hXenp5bUhIeTZmSmQ4bTA4bHF1M2pCMGZNYjg4?=
 =?utf-8?B?QndCbW1xYmRKMGw1V2dBbzVLT2hLc2FQbjU2cUVwR2szeHJzdGVqb3liY0Er?=
 =?utf-8?B?WUI2RDBYZm0wemZvYzBKNHlUZkZBYmhVakQ2T09iam9sY0daaE1OZUNRNUZ3?=
 =?utf-8?B?UklRVTBvemhlWnNwK3JRT1FJVDcxL1lkZXNPc0YzcUFydVA3VGZ4VGlUeVZm?=
 =?utf-8?B?QmlMVU92eVpwUCtuWDNoRE55MVhBK0VaOGEyakVtc0puVFB3RkN1cnlvNCth?=
 =?utf-8?B?WVdTSnlBcGdZeW1EUGgzdzh4b0hPdnJhLzNYcXEwMHBFVGhFUjR2UHNHQ2Vh?=
 =?utf-8?B?amxyVldYYXFOb08zZTQvUmIvb090K0lqVXJpZFlReXRKZk9tMDBuV0NhMTZx?=
 =?utf-8?B?TWZxSzk4eGg2Q3p2aG92Zi9tT2ZpMmFGM29SU05mNGZSeHEvM0g2cnVhN3ls?=
 =?utf-8?B?a2dIdTVwdWZHT3I1MmRzMnJQNC9reVJIUWVCNFgvYS9EOTY5anNMUGFzTjd4?=
 =?utf-8?B?eGpRZjZsRTFQYlNzRlVsbU1HUFB6L2VmcjdDOXVhNDkySmw0Q3dRbm5ONHdn?=
 =?utf-8?B?dW8ydlEwd0t2MWx6dkVTY3ljTzJHZEdWTGRyZkhnMXlMZjQ5NTdNRnpmd3lj?=
 =?utf-8?B?WWtJYjFUMktWWU1iZDVLR2NSTGVtazJXeGs2blZONTVnNkdQSS9oSWphdmRw?=
 =?utf-8?B?VW9xRndVNTV5dzNpdTBCVytsa0dyYjRYL0xiaHBTdGdod3JnK1VWeTRYQjJE?=
 =?utf-8?B?N1NWMmx1V1JpdFZyUGh3Y2dGemlJeVMxM2s0M3dXVHNvWlRadXJVQnVhQm1a?=
 =?utf-8?B?UXlCcU9ZRGdIYkNOaXE1bDd2L3RJN1NWR1JWMnE1aE9QVWdOMm5IOU1uSzdF?=
 =?utf-8?B?THVVS1ZJM1Z0c2NlcnV3TUdNU2EreXQ1SlZ3bHVGMEh5aGU0SmV0dDIrNjVo?=
 =?utf-8?B?ekZReGdWMWVEaDR1WkVqby9yL0xYRUJ1ZjNTcWQxaHZhUTBkK0dJdm5VeVJz?=
 =?utf-8?B?WTNuYk1oRDRyQzI4c2lYcnFWQ056dy9NR0dxOEIxZ1BzMHByZmtJRDFPTkFk?=
 =?utf-8?B?Z2lpY2JGcUJHSnpTUDBzcW9QNmFuZ3JxdlBvcW1DY2w2TVhEbHBIWm4zVXNT?=
 =?utf-8?B?eDFiVFVsZnI2OEp5M2pZRnZFSytYdHRGdVRhdFlzdURHN1hJK0N1MElxQnEy?=
 =?utf-8?B?UXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A62CDE0A592F264F8ED18C3E2F1586FD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2260177a-9656-469f-72f8-08db25fc20ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 08:55:01.4869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S3RFDWEP8AHfPSV+Azy3VgD88o4Tzv9fhwgoazV2pcMzeES68avhZAt5MBctGia2Z3FwfDtsJjdn5P8yR9y2FyFKflAgrXALjkp/v3kkkSQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4779
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Program VLV/CHV PIPE_MSA_MISC
 register
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

T24gVHVlLCAyMDIzLTAzLTE0IGF0IDE1OjAyICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gVkxWL0NIViBoYXZlIGFuIGV4dHJhIHJlZ2lzdGVyIHRvIGNvbmZpZ3VyZSBzb21lIHN0ZXJl
bzNkCj4gc2lnbmFsbGluZyBkZXRhaWxzIHZpYSBEUCBNU0EuIE1ha2Ugc3VyZSB3ZSByZXNldCB0
aGF0Cj4gcmVnaXN0ZXIgdG8gemVybyAoc2luY2Ugd2UgZG9uJ3QgZG8gYW55IHN0ZXJlbzNkIHN0
dWZmKS4KCk1heWJlIGFkZCBCc3BlYyBoZXJlPyBJdCB0b29rIG1lIGEgd2hpbGUgdG8gZmluZCB0
aGlzIGRvY3VtZW50YXRpb24uCgpDYW4geW91IHBsZWFzZSBjaGVjayBhbHNvIEJzcGVjOiA4MTI1
ID8KCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMiArKwo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNiArKysrKysKPiDCoDIgZmlsZXMgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwo+IGluZGV4IGQ5NTgxNzI4ODk2Ni4uN2IzNzFkMjc0NmI1IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMjEz
OSw2ICsyMTM5LDggQEAgc3RhdGljIHZvaWQgdmFsbGV5dmlld19jcnRjX2VuYWJsZShzdHJ1Y3QK
PiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGludGVs
X3NldF9waXBlX3NyY19zaXplKG5ld19jcnRjX3N0YXRlKTsKPiDCoAo+ICvCoMKgwqDCoMKgwqDC
oGludGVsX2RlX3dyaXRlKGRldl9wcml2LCBWTFZfUElQRV9NU0FfTUlTQyhwaXBlKSwgMCk7Cj4g
Kwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikgJiYgcGlwZSA9
PSBQSVBFX0IpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RlX3dy
aXRlKGRldl9wcml2LCBDSFZfQkxFTkQocGlwZSksCj4gQ0hWX0JMRU5EX0xFR0FDWSk7Cj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgQ0hW
X0NBTlZBUyhwaXBlKSwgMCk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCA2NmI2
ZjQ1MWI4MGEuLjhmMzAxYmY0ZTJiNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBA
IC03NTY1LDYgKzc1NjUsMTIgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7Cj4gwqAjZGVmaW5lIFBJ
UEVfRkxJUERPTkVUSU1TVE1QKHBpcGUpwqDCoMKgwqDCoFwKPiDCoMKgwqDCoMKgwqDCoMKgX01N
SU9fUElQRShwaXBlLCBfUElQRV9GTElQRE9ORVRNU1RNUF9BLAo+IF9QSVBFX0ZMSVBET05FVE1T
VE1QX0IpCj4gwqAKPiArI2RlZmluZSBfVkxWX1BJUEVfTVNBX01JU0NfQcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgMHg3MDA0OAo+ICsjZGVmaW5lIFZMVl9QSVBFX01TQV9N
SVNDKHBpcGUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBcCj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBfTU1JT19QSVBFMihwaXBlLCBfVkxW
X1BJUEVfTVNBX01JU0NfQSkKPiArI2RlZmluZcKgwqAgVkxWX01TQV9NSVNDMV9IV19FTkFCTEXC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19CSVQoMzEpCj4g
KyNkZWZpbmXCoMKgCj4gVkxWX01TQV9NSVNDMV9TV19TM0RfTUFTS8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfR0VOTUFTSygyLCAwKSAvKiBNU0EKPiBNSVNDMSAz
OjEgKi8KPiArCj4gwqAjZGVmaW5lIEdHQ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgX01NSU8oMHgxMDgwNDApCj4gwqAjZGVmaW5lwqDCoCBH
TVNfTUFTS8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19HRU5N
QVNLKDE1LCA4KQo+IMKgI2RlZmluZcKgwqAgR0dNU19NQVNLwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoFJFR19HRU5NQVNLKDcsIDYpCgpCUiwKCkpvdW5pIEjDtmdhbmRl
cgo=
