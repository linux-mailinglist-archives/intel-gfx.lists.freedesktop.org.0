Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7215F4C64FF
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 09:45:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9551A10E26C;
	Mon, 28 Feb 2022 08:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69B110E26C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 08:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646037901; x=1677573901;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=aMChLddYQfFDz0KL+IrXxHzRghOQpV4us+CMVCXMVws=;
 b=CUUW5NRDpUhItKPcL34dVG+7dPKFZtFcyOjrjJilKJlxZx2INiCniMOt
 y8QHQP9XDfJ1GwnQCnvE7l6f+NctVTDmcWQ9tc+FFgIYQe/f8jhsCZkxb
 xquY9V6D92TtH/8AHalROCHpQxpXqcc0I4JUOeonXkHFQaP1W8pETHpTc
 2gTlpzYvwcLn6jzU50aShXJIRwdvD+/lXyUnePMImykJI4Ha0LB9RL3ti
 KMn1FFTLMIhsclOptZr+hJ1T20wVx7y6Yk0VkoovgJCSzcp2XKVOByKeg
 n6bkux6bc/IKpLIFZRyx4RcHJztR+C6qH8F/axMf2Va2B2+bWyn5SNDDF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="252565685"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="252565685"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 00:45:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="638921036"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2022 00:45:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 28 Feb 2022 00:45:00 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 28 Feb 2022 00:45:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Mon, 28 Feb 2022 00:45:00 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 28 Feb 2022 00:45:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/FUk9Nx1WS8pbM569fp7M6u6aGvlnLExwER8HHDYsUpEyT71Bn9SzXftpMTAap4Mnnw6s6myVcGemOebnIySFeeK+vYcIrNHJCczeFmpMcLAurdge36w+0qvzMA+3RrLEduPHTyrSf06UgGxx8SbIinsE/VDBHd91wRbSHu7pIHCFMMR+GWe/XTxeH4v5udmRiyHEwourMch8akuiCHoYEA4TpX4kQHUFIJC7ekQW2KR8KBi4ShNoqtQ6ZjA1J9TKoLEWvI8h1ed7RNg2cDMxFPD/ISrwwi3CXTyk2b3mZpWyofZBz682xWh4E4n6GsRupMd1jdK8LJRnvK1l6B8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aMChLddYQfFDz0KL+IrXxHzRghOQpV4us+CMVCXMVws=;
 b=TMpWg4pT6nkJGKNwV9atkpayhGYnyk3z1rXIEIQ/VgZpIfoagN0DCMJHN4w23/rNwCiOhOsrzvlh2L1EFmHl+GQJ60reHquNwvQgkIUlBUZLRweBNingfYUTY83Lo+JGeC+QB2JB/ADGinsPrX7pUShjcfLJOZ3XknLpV4muh5C556CIiydzg6sHHjZh0z19ZlJKZz1eWN/S+w5vct+AufNxHo+WGiKyngYIGTEUZ8CgPMcS0bW3CEqaAgEAy2eLW/SqSpRequViMy44c3UDB0imsEmRpuPp8TDs1/ejl3qeVIJkE2VQK48epS4YQwuV+EwH7xBROWhaLQ1g+J90dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by DM6PR11MB3417.namprd11.prod.outlook.com (2603:10b6:5:68::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.25; Mon, 28 Feb
 2022 08:44:58 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::d0ac:1d7b:128:2db]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::d0ac:1d7b:128:2db%9]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 08:44:58 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v2] drm/i915/display: Allow users to disable PSR2
Thread-Index: AQHYKbxjF/ruRjCUEU+LsEuG+xaCkKyoq3MA
Date: Mon, 28 Feb 2022 08:44:58 +0000
Message-ID: <7c7463dbaf44ce19f50eb228ea8e0f8dc1b35ac3.camel@intel.com>
References: <20220224202523.993560-1-jose.souza@intel.com>
In-Reply-To: <20220224202523.993560-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 010471b8-c22f-4986-7bb1-08d9fa9699d2
x-ms-traffictypediagnostic: DM6PR11MB3417:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB34175574B86C1807C9D68FD58A019@DM6PR11MB3417.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JqNjKO+5LDCYlvHgJ966M+oSN5JYHxCenR2Hc4HD/KI5Zc1GC/eVaTpHtg0/TwHEMVClFtcMcu2I0IrMaJXlvReZ9eq93Ia3WSui7Lfqgafmonhm51KGW4QlUOF+MjXy9YgS/td1b6LezihcA25m62XmAD4AM1dpwdYrkBONITGPKMLLJdAVLRRxrcKf3KiE9SQw5E0K7rHpz6pBSOBep5oY4fgplE3XfhYTutLV4opzCRijy2i0zoLfHmR9XBqcyEmhcL19G4Dbc9bNl4nFP/TpJOh5bxFvRJQZgdlWhbObJZ3xrIHPJedmt7vFUWqGFyFM7BEISYjKbGFQZeA8tkJpF9+v1VnOR5Nkuaqq92EqNx43xuJ90BfUmliDdzi51pv53D8CxM9H9uFXCN6KaOLMTFnFUQwyiDL1/QTugygYF4PwRr+QBR5vfV19u82gV1S4EKKr/YkropbyBk+mQz1lzoA5OEJOqv2jHhP16lOZU+XyrxU/t5CqMQa5xOeCa5QOiDsl3iy4saUhyqNo+FkZ7mXZdxfIkWQD+pX+xQAl24HbP2NM31TFWi9Gn+nxAhWsqgN4UJjVztLEufJ21kVhrl8mSV+WxYCFZvQcwqAUpZYBv/bPRuioblCTGxaI1341Sdd4xlCQ/X5LRo7fAsMHRYY0lh9e/KWtcNMkeAz1CKYsr+iyx9ROe1hn76eJOcdqNZ66DosP/QFf8oQG3w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6512007)(508600001)(71200400001)(26005)(966005)(66574015)(2616005)(83380400001)(54906003)(2906002)(186003)(36756003)(6506007)(8676002)(5660300002)(86362001)(38070700005)(122000001)(8936002)(66446008)(64756008)(66556008)(76116006)(4326008)(66476007)(91956017)(66946007)(38100700002)(6486002)(316002)(82960400001)(110136005)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmNKbjN4WEVSeGg2Y1l6TXFkVVVheTBHNVZ0RGVTUGkyLzNvY1RwQzJEZXZ4?=
 =?utf-8?B?eG1yaGxCYXNPazVpWEMzNTFVMGppRWNnRnN6blpSeFVJSUdVUG5VREYyQ1NX?=
 =?utf-8?B?VzJqckdoelRCN1dzSmhNWUlZa2dVb3BVQjJ3blZXNHZTdmdPR3BzL2RCbzRr?=
 =?utf-8?B?VVdsSVBFUmlML3BBVjJJSnFVRTMxNHRuQ05Pc1VDbkNMVlZCY0dYcW0xOU1t?=
 =?utf-8?B?UmpNbXZ0Q3ptRGhxMzlqUDVaMENUQktEMlZid2JNdzQ2ajlUbnF2SmpXZkU0?=
 =?utf-8?B?eVovcHd2ejgrdHgrL01RbEdMa2dPU3J6d042OEcwS0grOE9jZWdNRmhpdFJN?=
 =?utf-8?B?ZGVtR0xqWXk5MzhTSkRvVFpiWENzMG5QQjJxM0V4d2V2V2cwSmdtU0o2eTVR?=
 =?utf-8?B?WjdKeGM3QmlCeUhMNERzR0E4L0ZUMHdZeTNQS3FQTXJsbkthT215WE9NdWJv?=
 =?utf-8?B?dEdxTTE2b0U1R2J6MmlPOEN5U25CSHVZcTRsOTh5VW1jTHhLRzQxZE9UM1h4?=
 =?utf-8?B?aDZMTWdGWXVtZ2hHdmJQREsyWTIwNUZqWHh2V05FRzdYbEJENFpiN0Z3RlV5?=
 =?utf-8?B?ZXFyWXZNWkk5ZjU5emtDcnZmMVV3Y05RMnlkYlRpTWRaNEJ1emFDWnZEZFI1?=
 =?utf-8?B?TkMzT20vZU5sLzVyMFp4ekZEVTVHRTU2ZmZWNTJIRE81eHA5RllUQ0JJbFlV?=
 =?utf-8?B?eERKVkhqL0k1TlB3dlBzc2VwSmdMZEpoYmo5NUFMbW5KSUtMQUpGRWYzWHJ6?=
 =?utf-8?B?MHpMcEVTaThxK0Y0bkZwWTZEUUZlS2ZoeWdYL3hSVjF6cU5QMU1kb2RlNTRV?=
 =?utf-8?B?Q0kyQTA0UWNUMkdZU1dkRnREY3pib0U3UVRULzI1QXU3NUlVZDNHMUJnZmZN?=
 =?utf-8?B?QVJTSGl2OUpXWmFBK0Y2NThXMDZJRVBlR3RzZUhwc25zQmpwbnhMU1pFLzha?=
 =?utf-8?B?WjMzMVp2U0pSbkhKaXpCUEJRR0RZa0U2dEtUa1lidW5rN1RGUVdCcXgwMWlu?=
 =?utf-8?B?NDdGQkdiWVVHWkgvTEZvYUUvSlZHeEJ5a1VQcncyVFU5WVZnNDh1cnJpUFZK?=
 =?utf-8?B?THU3aDRlV3B3SWY2SGx3MzhkOVVBUFVtVTZid3JWUUMzWTd6R20wVlhqRFlS?=
 =?utf-8?B?bEdyRXMwTUFrV0p0TDFtU3UwYS92c2s3YUdYbmZSM2VQNC85YVQzc2FRUFJT?=
 =?utf-8?B?UlkxcE9sTWlwRU1uZ3NhR2lpenJ5NjJvVXd3WHYrMThrVDgwb1BPRzhPWklq?=
 =?utf-8?B?YWExTFF0OWZFTEZNdXozck1DdmdrMG1CTHdCQlJFYkpOZ0FrMFZEazlHeW41?=
 =?utf-8?B?d1plVzlXcnBkbTVqSUdqeTZqWENnWFpJY0RVY082VWlFUW1oc0V0R2hDVEU5?=
 =?utf-8?B?VnlKWXF4amJHb1pZeXNJaTg0WVBFb2RGeUxoQlpLRjlQMm5nL3ArSktEcEhC?=
 =?utf-8?B?NWdxeFNTSnZlRkt6QmZUUFFvUXhBdW9LZmV2TTM2dUMyZjRxa0pSU05ITXpa?=
 =?utf-8?B?L0c1c1VEam1RcUJTazJOeGppMFovVnFZRDBndnNVc3RNTS9tdjRwWW12MzJk?=
 =?utf-8?B?aUlPcUN1WGdqQ1hONG5NclFCZEt3UjBVdkNLYlhTWXpIZ3pxUm9JZzBnT05W?=
 =?utf-8?B?ZHVzV1grL2cxVVhPU1ZFd0ZKRWdFOC85Y3RRQnJsWGFjVnVETW9MUVUyVDd2?=
 =?utf-8?B?VFRKOUNyMU5JOHBRZXJLaVR0ekpOVENkRkZGT3crTWtDZmk5MzRMeGNzcCsw?=
 =?utf-8?B?eUFQaWhEWVJkaDgzT1dUL1U1VnFDOXh6RUhONkQ1NWdNS3NoSnR5cFY1aEZn?=
 =?utf-8?B?Nmo3SGhLNEdlemJZSTlGajRlVVc2TkF3SFVyb0NzYnRmR1poMU1Pbk5sYXVK?=
 =?utf-8?B?em5jWThPMGkydis4L3dyamhxSEJSUWwwQzQzbU5tMDhhVU0rZmI2VGZNUXVJ?=
 =?utf-8?B?UzdQbmpZZy9tYlhEbGRIakJHR3YzZUQzNnJFYzNmMHhkNjBVSGxvSjZtdGYx?=
 =?utf-8?B?VHhPOTBoMnZjYmFhNkQrZ2gxSk92VCtFMlI1T25Cc2wwbTB4MWdmeDZYQUVF?=
 =?utf-8?B?RHhCZ0VEbzdEb2hnbGxTbmVxenJLWDBPSFN2OThKd3JQUHRwT3lmbFE0QnJC?=
 =?utf-8?B?ZHdnczF3OXY4S1dYQ25RZVRqaVZCcTQ0UXR0VG44c1VGZWFpMDd3clZSRkwz?=
 =?utf-8?B?ZER4T2N5bHNzeEwwVEhjaEUyaG9heGd5VzAwUDJzUzI3b1JlTllJaGVTcjlt?=
 =?utf-8?Q?aOuL6G4MmyrZ/3VVHuZYte9SZQKX+0Li0PTbhpYbZg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6ECEC87493A500409E551DED20B702FC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 010471b8-c22f-4986-7bb1-08d9fa9699d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2022 08:44:58.1118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CmuKed7c58wc2MKn5BXiGekXE6l0S2GO14CTQFep1S3SZAtUdr4sBIL0UfZk4DQLtcnU48/mVDZDRg9IoA5CNq9zwwpcBRaNI7OEFFhCJUc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3417
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Allow users to disable
 PSR2
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
Cc: "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHNyX2RlYnVnIGhhcyBhbHJlYWR5IHNpbWlsYXIgZnVuY3Rpb25hbGl0eSB5b3UgYXJlIGludHJv
ZHVjaW5nIGhlcmUuDQpWYWx1ZXMgd2UgdXNlZCB0aGVyZSBhcmUgZGlmZmVyZW50LiBNYXliZSB3
ZSBzaG91bGQgY29uc2lkZXIgZHJvcHBpbmcNCnRoYXQgc2V0dGluZz8gU3RpbGwgZm9yIHRoaXMg
cGF0Y2g6DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCg0KT24gVGh1LCAyMDIyLTAyLTI0IGF0IDEyOjI1IC0wODAwLCBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIHdyb3RlOg0KPiBTb21lIHVzZXJzIGFyZSBzdWZmZXJpbmcgd2l0aCBQU1Iy
IGlzc3VlcyB0aGF0IGFyZSB1bmRlciBkZWJ1ZyBvcg0KPiBpc3N1ZXMgdGhhdCB3ZXJlIHJvb3Qg
Y2F1c2VkIHRvIHBhbmVsIGZpcm13YXJlIGJ1Z3MsIHRvIG1ha2UgbGlmZSBvZg0KPiB0aG9zZSB1
c2VycyBlYXNpZXIgaGVyZSBhZGRpbmcgYSBvcHRpb24gdG8gZGlzYWJsZSBQU1IyIHdpdGgga2Vy
bmVsDQo+IHBhcmFtZXRlcnMgc28gdGhleSBjYW4gc3RpbGwgYmVuZWZpdCBmcm9tIFBTUjEgcG93
ZXIgc2F2aW5ncy4NCj4gDQo+IFVzaW5nIHRoZSBzYW1lIGVuYWJsZV9wc3IgdGhhdCBpcyBjdXJy
ZW50IHVzZWQgdG8gdHVybiB0aGUgd2hvbGUNCj4gZmVhdHVyZSBvbiBvciBvZmYgYW5kIGFsbG93
aW5nIHVzZXIgdG8gc2VsZWN0IHVwIHRvIHdoYXQgUFNSIHZlcnNpb24NCj4gaXQgc2hvdWxkIGVu
YWJsZS4NCj4gUmlnaHQgbm93IHVzZXJzIG9ubHkgc2V0IHRoaXMgcGFyYW1ldGVyIHRvIDAgd2hl
biB0aGV5IHdhbnQgdG8NCj4gZGlzYWJsZQ0KPiBQU1IxIGFuZCBQU1IyIG9yIGRvbid0IGFkZCBp
dCBhdCBhbGwgbGVhdmluZyBpdCB0byBwZXItY2hpcCBiZWhhdmlvcg0KPiBzbyBpdCBzaG91bGQg
bm90IGNhdXNlIGEgYmFkIGltcGFjdCBvbiB1c2Vycy4NCj4gDQo+IHYyOg0KPiAtIGNoYW5naW5n
IGVuYWJsZV9wc3IgdmFsdWVzIChWaWxsZSBhbmQgUm9kcmlnbykNCj4gDQo+IExpbms6IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvNDk1MQ0KPiBDYzog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IENjOiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNCArKysrDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BhcmFtcy5jICAgICAgIHwgMiArLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAyZTBiMDkyZjRiNmJlLi45ODE3ZWJkNGM4
MzllIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
QEAgLTEwMCwxMSArMTAwLDE1IEBAIHN0YXRpYyBib29sIHBzcl9nbG9iYWxfZW5hYmxlZChzdHJ1
Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgDQo+ICBzdGF0aWMgYm9vbCBwc3IyX2dsb2Jh
bF9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICB7DQo+ICsJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gKw0KPiAgCXN3
aXRjaCAoaW50ZWxfZHAtPnBzci5kZWJ1ZyAmIEk5MTVfUFNSX0RFQlVHX01PREVfTUFTSykgew0K
PiAgCWNhc2UgSTkxNV9QU1JfREVCVUdfRElTQUJMRToNCj4gIAljYXNlIEk5MTVfUFNSX0RFQlVH
X0ZPUkNFX1BTUjE6DQo+ICAJCXJldHVybiBmYWxzZTsNCj4gIAlkZWZhdWx0Og0KPiArCQlpZiAo
aTkxNS0+cGFyYW1zLmVuYWJsZV9wc3IgPT0gMSkNCj4gKwkJCXJldHVybiBmYWxzZTsNCj4gIAkJ
cmV0dXJuIHRydWU7DQo+ICAJfQ0KPiAgfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wYXJhbXMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1z
LmMNCj4gaW5kZXggZWVhMzU1YzJmYzI4YS4uMjA3YjU0YTRlNmNlNyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BhcmFtcy5jDQo+IEBAIC05NCw3ICs5NCw3IEBAIGk5MTVfcGFyYW1fbmFt
ZWRfdW5zYWZlKGVuYWJsZV9oYW5nY2hlY2ssIGJvb2wsDQo+IDA0MDAsDQo+ICANCj4gIGk5MTVf
cGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9wc3IsIGludCwgMDQwMCwNCj4gIAkiRW5hYmxlIFBT
UiAiDQo+IC0JIigwPWRpc2FibGVkLCAxPWVuYWJsZWQpICINCj4gKwkiKDA9ZGlzYWJsZWQsIDE9
ZW5hYmxlIHVwIHRvIFBTUjEsIDI9ZW5hYmxlIHVwIHRvIFBTUjIpICINCj4gIAkiRGVmYXVsdDog
LTEgKHVzZSBwZXItY2hpcCBkZWZhdWx0KSIpOw0KPiAgDQo+ICBpOTE1X3BhcmFtX25hbWVkKHBz
cl9zYWZlc3RfcGFyYW1zLCBib29sLCAwNDAwLA0KDQo=
