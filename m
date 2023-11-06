Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E117E1E52
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 11:31:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B9010E2BC;
	Mon,  6 Nov 2023 10:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBA510E2BC
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 10:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699266676; x=1730802676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=45zRIQ3eaSwZl1I2R/Nq/UJ1eSTrUaRqpGKBtlJkheE=;
 b=lrxttwJBk/UqsJ+atK7RNVc+eKi70FprJvSOlW2edK2I7beE9i65rwR8
 SRcPFsQpSdzVy6ydIHNuX+ODbDeJmKZt1fxmPvWpOG0sUoTY8M75KfveQ
 6WsIIE93BsPCoqUd1kA02MG5TfD0EhwYpTZ4Q1FWYozi/4b3H6WSiZYpK
 WGMyjLz23MD8np1c3hXJSifPjU2Uks4AZK6xMFErmNLmT7r0udE9prHNa
 WXqbb3wghtnPOWwpQQJQNBeXFiwC4dSIW6MKc9f9tWKSX0iwgcFAPeMEn
 0ligrGY4pxYlfPRX6iRhWDoub9Kkzaj9zxRfkPEeODyfLRwjBE8GRhZYd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="10784340"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="10784340"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 02:31:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; 
   d="scan'208";a="3411340"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2023 02:31:16 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 02:31:14 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 02:31:14 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 6 Nov 2023 02:31:14 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 6 Nov 2023 02:31:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FTvBgEQR6FTgaGVP4CDILzlgvh/BaWLjxnAYVKAdYBx37ERXvViRJsAWdoR/BtpPl6F1JGUSFRaGdiEdXfTCCmXghterwtgu/l6ceCeq1B5OBZIGNe43ldCYUYaAn6oNXY5j28CIfUXzFDGDbsuBl2QMlU/zxJGV7r8OpbGqnCwJK/a8BM8vR6//c+x8UqcaGzyfSZ9ymjcmMQ35pvTiM96VJK6NCme4rfi6q6U//clGt4A6FBHochR0j0Id2EHCdk7bl+ZVblcmNAhgr6BUH9CVMFaBoFsR/XUdJm6X3XyxGX+9NA6IwXweyuWjoZravu4lgUKMh2ChQPtvdMeWGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=45zRIQ3eaSwZl1I2R/Nq/UJ1eSTrUaRqpGKBtlJkheE=;
 b=IMMImGWBlwgOQhpeufqIA9o+MJ+2sTacByQlW7XVnpKdTl4OsKYLxIhrRSF8pUZqZFgqt1wDLkm5H//dse/J6VWU0sJU3qso9B5pdLq58ZpimjK1NS4Hdv/TQkIzwYHACMN+qiY7mT/JxMshc421DN0ZAd36B9aVUiiidaqKY61DdfV+2jk90AJPSCpVNPOCPwbiTqYz0iZJ/GvmrB86f4uYQNp10G1nm/YfDIPBfySXrH3qxnZbJZDKuiDoBFNHoHcZ++eIJjlxqGPIDyqGSmggOSXddLQTK8SxsfvElnJ6vN7y2y/hpsYtMmMQA+0IoaZ/QRE2/EEwj2JYsv3Ljg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB7950.namprd11.prod.outlook.com (2603:10b6:8:e0::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.27; Mon, 6 Nov 2023 10:31:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.6954.027; Mon, 6 Nov 2023
 10:31:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Thread-Topic: [PATCH v1 1/2] drm/i915/xe2lpd: check selective fetch is optimal
 in some cases
Thread-Index: AQHaDddUPb/sKwJl6kyKMN3SLUS+JLBtHQeA
Date: Mon, 6 Nov 2023 10:31:11 +0000
Message-ID: <dabfbe5c815fd3d35279d52d2c52a2ae86353ce8.camel@intel.com>
References: <20231102215519.135847-1-vinod.govindapillai@intel.com>
 <20231102215519.135847-2-vinod.govindapillai@intel.com>
In-Reply-To: <20231102215519.135847-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB7950:EE_
x-ms-office365-filtering-correlation-id: 46695953-de97-49ab-fa70-08dbdeb37f0e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UaTYO+P2pZLZ3skOWINgfwjxhQ5ZVpX8ADSUGJQpyThrSE64bbZHr22oLAEMNrp6tAJ4C0OmFHkWieC4/618I30SOqD/IXuJ7+E/tcBI2uTOgrn0p7+72wHpJNGlqUDntF0W72xs3pknpKCM/6NYB3KyeuTDw4cJyoOs0pMLKn7PSlsjRt6s0UGuiAq3oLq2w4rCbRVANzwOhtZ9IJJxj8qb/4NL9nR09G3shKeq0m/SMGauvlwhrSjnhCBGH9zrACIwaNWSm8eF6yjMDc4Rm9VXit4JAVB6XvhGuaOZ6aLTEq1d5lS+jYDopoe6nbyWU7A8yeVCR0Bf1hTQalEr+T4BpgHT+WQtF3adv2sJ0YZI+Qtmvpzhn4NgWp0DOL4SyxM27ejKs2UpR3Kh4GYGR7dCE+wgXEtnztTaVYFJB9pDZ+SQsIAP35c20BPNw1Vbkd7H4BIeKJKXB+x9I/RUa6n+edyD+UHijWn2PZlgmPenQm5jFKWPMnhKcIg3OX2K3I3/t+BDofk5rSvPQwsP9PBMurpdlmZHw7ylkTCjRJul4PWgL45NbswF1htVQ3Q366NQSTQB7aCftwMT4Qa9hjVcTsAvyE452xsVB0pLtN43TSdrn7lUPqUn9wS8+1hx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(366004)(136003)(39860400002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(38100700002)(71200400001)(6506007)(83380400001)(6512007)(82960400001)(107886003)(66574015)(4326008)(122000001)(2616005)(41300700001)(86362001)(2906002)(6486002)(36756003)(5660300002)(54906003)(64756008)(66476007)(66446008)(66556008)(110136005)(91956017)(76116006)(316002)(6636002)(66946007)(8936002)(26005)(8676002)(478600001)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUNCQy9OUGR0OGpoUk8zZldhYlV6WU93Q0M0S0tzYXhXRCtoS2tWSVhtODg5?=
 =?utf-8?B?eW5WMFEwcGZVSXpYRlRCVFh2d2p0TUZjL243aGp3U2JuZXFXVFlVRlFsWWFP?=
 =?utf-8?B?RTlYVEZjODJKc1BmSExqSWhDUXo4N1pFQmU5SWFkWXdZZHF4Mm9EbTBkZlo0?=
 =?utf-8?B?T2QwZW1mQ0VzMlFUVWs4MlhmQld6dFVtZGRIN0xRbVJCb1Ird3JVaitXVzZK?=
 =?utf-8?B?WVp1U2xXeFZSWm52MVpOMWlPZm84ZHh6OS9ra1JOTWhIcTJSYVVaeExHSEpp?=
 =?utf-8?B?d3pTNFNESUh6cGhVd2R4VUcveGM3SnU3b1BRakNhMStUWm9BQnVHSUNEOUtX?=
 =?utf-8?B?UEt3RXBtcWQxK3F0Y0FpOG92SFQvYU03ajZFZ29wSXV1UnUrRTM3V2VFUUh0?=
 =?utf-8?B?eEU2R1I5VUgwb2gxeWVGMWViMTdJODdDTXNiMXp2SDdlZW1lMDBQWXEwak8w?=
 =?utf-8?B?cTJEaXVRek1IWjV5MkJxSmp3cE41T1YwQXExdHQrN1I0UUhQcW5rdWcxQjgy?=
 =?utf-8?B?TVpjdmI3dThkeFNPVDMxNzlVaEZjTFRpUkxaam1qeUhEMUkxZ3RVSWIreElu?=
 =?utf-8?B?UlVjbFlGSzM0T0dleFl2MmlkSVJpYzNwS0lXUnlnaTI2dTNBeSt1VldGTXdy?=
 =?utf-8?B?TG1oR3JET3lpUWFQNjcySGwvU0J5dHFsWVBkTVo1elJtcjlTbW92MXFsdHdr?=
 =?utf-8?B?MVQ3RTRuS05TUlpSV3F2YW9MY05NTk1EbDRRS2MvZTJId0ErYkZYOXhkQXhL?=
 =?utf-8?B?L3Izd2JlaFRxOUdVT1NXVzkrNWVXSnlvZSswdlkwMytVeVFScDJxbkxUREZw?=
 =?utf-8?B?U3NrSWlCZ213MnlNdlprZEx0b3Boejh6bUFreElkdlBkTU1xK2ZSOUlUVkpy?=
 =?utf-8?B?eUVzVm9Ub09jWDAxUW1BV1VaYjgxcVBXVUdpK3BDQ2NLZkQ1MytiaGRMenpC?=
 =?utf-8?B?ZVpEZDhRb1dMQTBHcldTcE5sUjJaZTRWS0ZXelMwL3JjdGZqQk9Rd1BkeE1J?=
 =?utf-8?B?Yy91QTRTdGJneGd2MEV6dWdzUW55U3U3YUJTNFowYzJyQkxHWklycE1KQ1Yx?=
 =?utf-8?B?YzRuVXpwVVBTN05HOGVCYTNJWEdhTmJqajZITkZjMGNIbDJyMDgva0JrQXRT?=
 =?utf-8?B?WVV5Rk10WnA1TkJ0QURSM1dwRzBsZVhFM25sK25WdjVmZStieWtvTDhPak5l?=
 =?utf-8?B?WEczRko1N3dtY3Q1RVMwMWFYUmJ3d25WaHlvNzlsZkFUZ3dDTDYrSUdKakp0?=
 =?utf-8?B?ZlIzVkp4Y3g5WW15VjV1aXNlb0dsaE5FR285ZEd5WndWTjlkeDgrWUltSFJH?=
 =?utf-8?B?MFlZR3BpeXZDWnYvTWR3QTM4MjQ0Zk1xNVRFaitaWU00UDlDZEdZeGRQUnF3?=
 =?utf-8?B?emF0eEJMNmxXY2pXdS9mSXNsaXFKR2YzTVFleGxPcE84TmJ2ZmJOUEVEdXRa?=
 =?utf-8?B?b01YUSs3U2MzSk5UNXFOWmNtQlY3cGxYbEs3elRMTGl6b2VYUWE5bDduRkRJ?=
 =?utf-8?B?MGhtanFlQWpDV3ZRZ2FUdDZRRnhBZzRMd1BTcTQzWFlHMlo5b3d3encyZGhV?=
 =?utf-8?B?cjFrSjhMNTY0N1ZzRlhwYzZUMjNtSHh1TzNhNjNEQ3VDZlVIM0d6ZmM1VnpC?=
 =?utf-8?B?RW0yMVpJaFNMUUFCQXRKNlBZSDdwOUszUEhFOXk1SFVVdkk4Nk9lSFZzMUYx?=
 =?utf-8?B?WmZsQ1Biait6dlJrWlRKRDZ0SmZ3ajVSa2M3YnExNnpiUmQxYmlmTFVsaHlZ?=
 =?utf-8?B?ZlcyMUtTUVNhVGRxN2hKWTZsWmVhbU5CVDFtNEFYbE5tT294NFY5ZjU4VDFN?=
 =?utf-8?B?anpSTXF5cUIyeHluYUM2VzRhTHoydTFuT01ia0o3T1Y0dThnaVJYL1BWK1V5?=
 =?utf-8?B?eXAxM0Q0aDlIVFFobG1BK3d1TjJPVHc3Q2FUSExMT2FpV0FhdXRlWDdsN0hs?=
 =?utf-8?B?Rjl2Kzl3ZnZ3S1BpSk5tWG9vOE0rUnR6M2ZDbURqY29PSjUrbVBSSDJrQ2tD?=
 =?utf-8?B?WG51UEhHWnQreGlGNDZTcmVIK2V6ZndKbFhtUnNMaGxuQUtNdFkxRFNYL0dI?=
 =?utf-8?B?dFFZaERPVDBtS3BUR01mVG1XZTh1UVAyNjBjRXNaR01UT24rVkh0V3BHSzJI?=
 =?utf-8?B?TWFvTFM1MjJISVRDM3JiSXRodlk2MHNuYmhEK1BZSHBtQTFMUGxrdEQ2dUFl?=
 =?utf-8?B?WGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E1639B99F6D3449803A5B204BA7520E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46695953-de97-49ab-fa70-08dbdeb37f0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2023 10:31:11.4746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PvNvE4kX9lu8iFG5subbRV+ctv8eMOPxhtPDfiQxayqFQoe5UzcVXoiCDAmLFHdTdgBIJc+AjeWNIuYAoB1J4g62hChN/cOLdJqtpnmeiXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7950
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 1/2] drm/i915/xe2lpd: check selective
 fetch is optimal in some cases
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTExLTAyIGF0IDIzOjU1ICswMjAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOgo+IElmIGJvdGggUFNSMiArIEZCQyBpcyBzdXBwb3J0ZWQsIGluIGNhc2VzIHdoZXJlIHRo
ZSBzZWxlY3RpdmUKPiBmZXRjaCBhcmVhIGlzIGdyZWF0ZXIgdGhhbiAyNSUgb2YgdGhlIHNjcmVl
biBhcmVhLCBGQkMgbWlnaHQKPiBiZSBtb3JlIGVmZmljaWVudC4gU28gaGF2ZSBhIHBvc3NpYmls
aXR5IHRvIGNoZWNrIHRoaXMgYW5kIGFkZAo+IHByb3Zpc2lvbiB0byBlbmFibGUgRkJDIGluIHN1
Y2ggY2FzZXMuCj4gCj4gQnNwZWM6IDY4ODgxCj4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5k
YXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+Cj4gLS0tCj4gwqAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgIDEgKwo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCA0MiArKysr
KysrKysrKysrKysrLQo+IC0tCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IGluZGV4IDA0N2ZlM2Y4OTA1YS4uYmNjNWZkOGQ4
YTAwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgKPiBAQCAtMTIwNyw2ICsxMjA3LDcgQEAgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgewo+IMKgwqDCoMKgwqDCoMKgwqBib29sIGhhc19wc3I7Cj4gwqDCoMKgwqDCoMKgwqDC
oGJvb2wgaGFzX3BzcjI7Cj4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgZW5hYmxlX3BzcjJfc2VsX2Zl
dGNoOwo+ICvCoMKgwqDCoMKgwqDCoGJvb2wgZnVsbF9mcmFtZV9mZXRjaDsKCkkgaGF2ZSBhIHBh
dGNoIHNvbWV3aGVyZSB3aGVyZSBJJ20gY2Fycnlpbmcgc3UgYXJlYSBpbgppbnRlbF9jcnRjX3N0
YXRlLiBNYXliZSB0aGF0IGNvdWxkIGJlIHV0aWxpemVkIGhlcmU/Cgo+IMKgwqDCoMKgwqDCoMKg
wqBib29sIHJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZTsKPiDCoMKgwqDCoMKgwqDCoMKgYm9v
bCB3bV9sZXZlbF9kaXNhYmxlZDsKPiDCoMKgwqDCoMKgwqDCoMKgdTMyIGRjM2NvX2V4aXRsaW5l
Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gaW5kZXggZWNk
MjRhMGI4NmNiLi42Y2IzMmZkMjlkMTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMKPiBAQCAtMTk4NywxMCArMTk4NywzNSBAQCBzdGF0aWMgYm9vbAo+IHBz
cjJfc2VsX2ZldGNoX3BpcGVfc3RhdGVfc3VwcG9ydGVkKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOwo+IMKgfQo+IMKgCj4gKy8q
Cj4gKyAqIENoZWNrIHNlbGVjdGl2ZSBmZXRjaCBpcyBvcHRpbXVtCj4gKyAqCj4gKyAqIENvbXBh
cmUgc2VsZWN0aXZlIGZldGNoIGFyZWEgdy5yLnQgc2NyZWVuIHNpemUgaW4gY2FzZSBib3RoIEZC
Qwo+IGFuZCBQU1IyCj4gKyAqIGlzIHN1cHBvcnRlZC4gSWYgdGhlIHNlbGVjdGl2ZSBmZXRjaCBh
cmVhIGlzIG1vcmUgdGhhbiAyNSUgb2YKPiBzY3JlZW4KPiArICogc2l6ZSwgRkJDIGlzIG1pZ2h0
IGJlIG1vcmUgZWZmaWNpZW50IHRoYW4gUFNSMi4gU28gZm9yY2UgZnVsbAo+IGZyYW1lCj4gKyAq
IHVwZGF0ZS4KPiArICovCj4gK3N0YXRpYyBib29sIHBzcjJfc2VsX2ZldGNoX25vdF9vcHRpbWFs
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlCj4gKmk5MTUsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0
cnVjdCBkcm1fcmVjdCAqc2VsX2ZldGNoLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJt
X3JlY3QgKnNyYykKPiArewo+ICvCoMKgwqDCoMKgwqDCoGludCBzY3JlZW5fYXJlYSwgc2VsZmV0
Y2hfYXJlYTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgLyogVGhpcyBpcyBuZWVkZWQgd2hlcmUgRkJD
ICsgUFNSIGNhbiBiZSBzdXBwb3J0ZWQgKi8KPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9W
RVIoaTkxNSkgPCAyMCB8fCAhaTkxNS0KPiA+ZGlzcGxheS5wYXJhbXMuZW5hYmxlX2ZiYyB8fAo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCAhSEFTX0ZCQyhpOTE1KSkKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwoKVGhlIHByb2JsZW0gd2l0aCB0aGlzIGlzIHRo
YXQgeW91IGRvbid0IGtub3cgaWYgRkJDIGlzIHJlYWxseSBlbmFibGVkCmFmdGVyIGludGVsX2Zi
Y19hdG9taWNfY2hlY2suIE1heWJlIHRoaXMgKHBvbGljeSkgZGVjaXNpb24gc2hvdWxkIGJlCmRv
bmUgdGhlcmUgd2hlcmUgaW50ZWxfZmJjX2F0b21pY19jaGVjayBhbmQgaW50ZWxfcHNyX2NvbXB1
dGVfY29uZmlnCmFyZSBjYWxsZWQ/IHRoYXQgbG9naWMgd291bGQgc2V0IGludGVsX2NydGNfc3Rh
dGUtPmZ1bGxfZnJhbWVfZmV0Y2gKd2hpY2ggd291bGQgYmUgdGFrZW4gaW50byBhY2NvdW50IGlu
CmludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bC4gQWxzbyBJIHRoaW5rIGl0IHdv
dWxkIGJlIGdvb2QgdG8KaGF2ZSBzb21lIGtpbmQgb2Yga25vYiB0byBlbmFibGUvZGlzYWJsZSB0
aGlzIG9wdGltaXphdGlvbi4KCj4gKwo+ICvCoMKgwqDCoMKgwqDCoHNlbGZldGNoX2FyZWEgPSBk
cm1fcmVjdF9oZWlnaHQoc2VsX2ZldGNoKSAqCj4gZHJtX3JlY3Rfd2lkdGgoc2VsX2ZldGNoKTsK
PiArwqDCoMKgwqDCoMKgwqBzY3JlZW5fYXJlYSA9IGRybV9yZWN0X2hlaWdodChzcmMpICogZHJt
X3JlY3Rfd2lkdGgoc3JjKTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIERJVl9ST1VORF9D
TE9TRVNUKHNjcmVlbl9hcmVhLCBzZWxmZXRjaF9hcmVhKSA8PSA0Owo+ICt9Cj4gKwo+IMKgaW50
IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gwqB7Cj4gLcKgwqDCoMKg
wqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0ZS0+
YmFzZS5kZXYpOwo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOwoKVGhpcyBjaGFuZ2UgaXMgbm90IHJlbGF0ZWQg
dG8gdGhpcyBwYXRjaC4KCkJSLAoKSm91bmkgSMO2Z2FuZGVyCgo+IMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9Cj4gaW50ZWxfYXRvbWljX2dldF9u
ZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1f
cmVjdCBwaXBlX2NsaXAgPSB7IC54MSA9IDAsIC55MSA9IC0xLCAueDIgPQo+IElOVF9NQVgsIC55
MiA9IC0xIH07Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3
X3BsYW5lX3N0YXRlLCAqb2xkX3BsYW5lX3N0YXRlOwo+IEBAIC0yMDgyLDcgKzIxMDcsNyBAQCBp
bnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdAo+IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoCAqIGNhbGN1bGF0aW9uIGZvciB0aG9zZS4KPiDC
oMKgwqDCoMKgwqDCoMKgICovCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChwaXBlX2NsaXAueTEgPT0g
LTEpIHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2luZm9fb25jZSgmZGV2
X3ByaXYtPmRybSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2luZm9fb25j
ZSgmaTkxNS0+ZHJtLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgIlNlbGVjdGl2ZSBmZXRjaCBhcmVhIGNhbGN1bGF0aW9uCj4gZmFp
bGVkIGluIHBpcGUgJWNcbiIsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwaXBlX25hbWUoY3J0Yy0+cGlwZSkpOwo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZnVsbF91cGRhdGUgPSB0cnVlOwo+IEBAIC0yMDkyLDkg
KzIxMTcsOSBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdAo+IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBn
b3RvIHNraXBfc2VsX2ZldGNoX3NldF9sb29wOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFdh
XzE0MDE0OTcxNDkyICovCj4gLcKgwqDCoMKgwqDCoMKgaWYgKChJU19ESVNQTEFZX0lQX1NURVAo
ZGV2X3ByaXYsIElQX1ZFUigxNCwgMCksIFNURVBfQTAsCj4gU1RFUF9CMCkgfHwKPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBJU19BTERFUkxBS0VfUChkZXZfcHJpdikgfHwgSVNfVElHRVJMQUtF
KGRldl9wcml2KSkgJiYKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0+c3BsaXR0
ZXIuZW5hYmxlKQo+ICvCoMKgwqDCoMKgwqDCoGlmICgoSVNfRElTUExBWV9JUF9TVEVQKGk5MTUs
IElQX1ZFUigxNCwgMCksIFNURVBfQTAsCj4gU1RFUF9CMCkgfHwKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBJU19BTERFUkxBS0VfUChpOTE1KSB8fCBJU19USUdFUkxBS0UoaTkxNSkpICYmCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0+c3BsaXR0ZXIuZW5hYmxlKQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGlwZV9jbGlwLnkxID0gMDsKPiDCoAo+IMKg
wqDCoMKgwqDCoMKgwqByZXQgPSBkcm1fYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFuZXMoJnN0YXRl
LT5iYXNlLCAmY3J0Yy0KPiA+YmFzZSk7Cj4gQEAgLTIxNDksNyArMjE3NCwxNCBAQCBpbnQgaW50
ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdAo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqDCoMKgwqDCoMKgwqDC
oH0KPiDCoAo+ICvCoMKgwqDCoMKgwqDCoGlmIChmdWxsX3VwZGF0ZSkKPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgZ290byBza2lwX3NlbF9mZXRjaF9zZXRfbG9vcDsKPiArCj4gK8Kg
wqDCoMKgwqDCoMKgZnVsbF91cGRhdGUgPSBwc3IyX3NlbF9mZXRjaF9ub3Rfb3B0aW1hbChpOTE1
LCAmcGlwZV9jbGlwLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZj
cnRjX3N0YXRlLQo+ID5waXBlX3NyYyk7Cj4gKwo+IMKgc2tpcF9zZWxfZmV0Y2hfc2V0X2xvb3A6
Cj4gK8KgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+ZnVsbF9mcmFtZV9mZXRjaCA9IGZ1bGxfdXBk
YXRlOwo+IMKgwqDCoMKgwqDCoMKgwqBwc3IyX21hbl90cmtfY3RsX2NhbGMoY3J0Y19zdGF0ZSwg
JnBpcGVfY2xpcCwgZnVsbF91cGRhdGUpOwo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPiDC
oH0KCg==
