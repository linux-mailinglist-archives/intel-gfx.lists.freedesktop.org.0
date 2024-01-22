Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7527B8367C8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 16:19:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B631910F414;
	Mon, 22 Jan 2024 15:19:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Mon, 22 Jan 2024 15:19:18 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5290910F3FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jan 2024 15:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705936758; x=1737472758;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BuSUHBLWEt0DtXbaqv2Pj9w2JSjpgK3tRyhtT7td8bU=;
 b=i+WM5qJHh4aRyjfFCQGQhfYm3v/T38crSRE6Y9V+6QgwcWg1sd72t41P
 oT0kiiT1ZIlMS4gbgMh9sm9XiD450TPBxm0i/BABd4SnTd+BI1k7q6APK
 KwlqFzPTPi7fXVe7xesu0MYZiDwPjVIMc1diC5vz/M3x/c1eI0AuPe0Ct
 vJ3IKyyVI4oTl/TgI16AOKzBsaJOGaHcxDC9qgx8cUBH7lASavIaZzwya
 tu99Z838iVaoGPe74t2VLwOV/eVwgLBscR7O8mJKR4S4m0QWcn4GdFazV
 PlCQU/7p6wzV6yze/MipF6ulIgE0lVwGC8onajugeAd4Qls1KTL8sTgLt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="123510"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; 
   d="scan'208";a="123510"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 07:12:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="785704555"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="785704555"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2024 07:12:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 07:12:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 07:12:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Jan 2024 07:12:09 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Jan 2024 07:12:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SX//GJNG2o1FAMhMY3Ifzur5tBFVpq9HsP2p0NH7Alob7N+9h9SR3xgu9VwD7b0TvT/RZpl+XfVHn7dQRNDvQSvpHwslP1SOeOEJoiyPz/l0YMdUbIqmIRUS8J4mdLkTMIoLz3zGP6C09z5EJ6l1kZNZiE+1LGUfwhSeSjD4HdBpNLW0Gb1vQkUSNlVEBqWvgB8iGskhYGtuWVx2dkcOCaECZhA8gxCNGfhIVmKkhfxGVnnZkMKhmkfbr8wVEpdqqz0sjoztRAy8lALE6jYD/Jjzv0CMffkKfvVgppnGAKrLAJfEcjoYZkKunkbq0gDDqQeS9WST1/vOoiC5rsTWeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BuSUHBLWEt0DtXbaqv2Pj9w2JSjpgK3tRyhtT7td8bU=;
 b=Ryv8IbhakSxW4q/qdh5YGmZzPlVccbillNas4nhCGlMVzmgK+kNRl8Z22IV/Oawn79PvmqpRRB+xwPQYNRP3RsG4KWFrlyDi4w/NlmI7hfRik7TMaIHGFBm69UY5nYMZYCpRzzD3WVEM7w1FoQqiZeUSp7CbymAr3X5UHnjeOvjXWYiuejatrrZCbRqDarE8ZMm9PI45/wbOddkKe0u0hzbDojqaY028aqNB4bU4vCra9/bON3sAtB15Kizfa/xq2FYu353dTn9TJruc/u0+69McAwiqwdRA5ng5DPqWyfyaz3nIJbKFo17bOxM4ZmkE/XWMWm9Fjx3pcC6LJWY4Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SJ0PR11MB6623.namprd11.prod.outlook.com (2603:10b6:a03:479::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.34; Mon, 22 Jan
 2024 15:12:01 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7202.028; Mon, 22 Jan 2024
 15:12:01 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 16/16] drm/i915: Annotate more of the BIOS fb takeover
 failure paths
Thread-Topic: [PATCH v3 16/16] drm/i915: Annotate more of the BIOS fb takeover
 failure paths
Thread-Index: AQHaSFG5rBjcspFF/k6j5h9jaqsAubDl+ZuA
Date: Mon, 22 Jan 2024 15:12:01 +0000
Message-ID: <CY5PR11MB6344E9E8201862F7489FF4A6F4752@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-17-ville.syrjala@linux.intel.com>
In-Reply-To: <20240116075636.6121-17-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SJ0PR11MB6623:EE_
x-ms-office365-filtering-correlation-id: 7be1fd0b-45ba-4bb7-bd72-08dc1b5c7c12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V6HXrgKCXjAR6CvhqPdwWnzP5HEhYeUs3QZcn121QGLuZTw5XkmLWQNdE3cQDXQhHHnvPzsWTTTYyTlIuopOhg8VEwBQN9ua4usHDvY2V78OvW1uNrWZoaw8X7juH0crTKy9Govg2v2FtoNh+LmgNS8nzXUTGwYm3RzB3AQQMCdJqhXDQ3m1daoz5IxTOb4MpO8RIjLobZrgmuxHOntvzXUUEiSG8rUNGibHeaIfdciars0L9MjYqA/aQcRHbIB6J41/ewLz1HNcvvZq1UI1VP7cQIIPLa88DyW4i5v64qxTKi1Y6Al82T8NPGOCzaeYAfRlq0GBZQarByVebc+S6yBirMnah43agGn/e5a1Bi+p8wgO/z/J7BNXtjMhtbD6LuzgyGK2Xvlea/rqHI2VaOBhb+aCEwFg6mrILdBztaXDf8dlsbXoZUE8myLj6qb0IyvtQuoHKYgseJvKGInVko8cWZHsXQS3PdSZh10t7z7tr4CMH1F9lZ7bNiBSz5N5ixv1u/xm2L5+UCzlaH8OFHlxB3uE3vEgXDT6+81UxKbmiqHj0m64p5lf4SkO3KvmvV+oTE2MF22mjlkINpDORIr95fOoDQPYuP7zoANOwFtLhbC/Iic59LbB8/GR+UX2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(136003)(396003)(346002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(55016003)(41300700001)(8936002)(5660300002)(8676002)(2906002)(316002)(76116006)(110136005)(66946007)(64756008)(66476007)(66446008)(66556008)(478600001)(9686003)(53546011)(26005)(6506007)(7696005)(71200400001)(66574015)(52536014)(83380400001)(33656002)(38100700002)(38070700009)(86362001)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UEd2cXFxS0JyMFlkQlBOU2ZKMzRRV1RsUHc2R0JFQVkxYjVrNHRNMy9MK21l?=
 =?utf-8?B?VUljRVg1bDNtQklRQ3ZqemNpandON1lDS1B6NlNDbWJVSlVHODJNME9MVXZQ?=
 =?utf-8?B?VUFURFBxeHRycGswY1d3ekZDQVM3QU53N0xPamRJWkpqOFpueXJJTVkrc3l3?=
 =?utf-8?B?U2dGazhNQm1SUHdCQ3dVcnRJaUZkWENMWHlEaFhRbWJBMWhRaVF0MllxVjhh?=
 =?utf-8?B?OWwzM2RQRkNqQjFSaXRFcTZkYW44RFN0TktkK09FQVMvVXZuVzNDd1pCYTlH?=
 =?utf-8?B?VnFERk41M01rZSsyK0FyYzdFZmc3dkJYV3dHbWJwWk1CR2dIYWpDVWpMMDhX?=
 =?utf-8?B?OEVWNEo3RVZpZ0JBZXNoNXhDV2xSaWZERWJJa1orYmVCdVZmdkxvZjJVN2Jy?=
 =?utf-8?B?V2xOZS9ud3F6NlpvUkRIUG1Eb2pTN1dyZGlyZGtqdnhhNHlOMnF1eXkwelpp?=
 =?utf-8?B?TW10ZjhoQVZ2SjNEV0lyWVhzZmRVdWl6N1ZoTUd5SldtY0ViV3M1TXFPY280?=
 =?utf-8?B?RHo1R2ltb0tCODUrckY0QzQyUjlPNHd5Rll5dlRhaFFUWTMrRFlEdExGY0VI?=
 =?utf-8?B?ekNTdmMvQThPVVNZa3IwVS85T2ErRnNqRWRnMnlvU2dTaXVPUFZyK0JKUFBV?=
 =?utf-8?B?OXdweVlaTFdLVG4vRmpRcjRsVkVqMXVSc1hHSFVsWUVrNnU0Z0h5akJzVlVj?=
 =?utf-8?B?S1Rad1dWVXNBZ3VEeENlUzRWM3pIbjdsWHFqczhWSlVreU9xME5aZ2NHVTAy?=
 =?utf-8?B?VXgvR29tNTdOallxeFpkTXdLUDFpN0xMdm0ycGU5T2FoZ0RGQ1NtckI3eU1E?=
 =?utf-8?B?L0IrWFFnSGNuYnFpeDBDSHVzMFhjR29mMmtHR1JjL2k1RC9xcnhuWWdxOUw1?=
 =?utf-8?B?cTZZTXdJaDR2bUhwSnBjaXMybzdtRDJhektTY0duekNCMW5rZm5PaFdORkE2?=
 =?utf-8?B?UTQzNXFISW1iVnZPWDhtajIyRzFTd01SaEJlSkxJL1o4SVg0em90MW1kM2Na?=
 =?utf-8?B?OE94Ni8wZ29oai9uMFV2dUhUOE5kNlpnSnk1dUdDbWV0QThUdjVsRlpkNVNj?=
 =?utf-8?B?cHRxbVQ5NVo3QjFmSUNBelR4Y0gxclJrbUNtK2RiV0J2TE1MNFMwWXdOaUhK?=
 =?utf-8?B?MVpKQkRxenFrSDlCeFFZVXdhQzQwbEFhb2pCdCs3Z2srMU11d3YzWi9Kci9t?=
 =?utf-8?B?S0ZKZkZhQzZFZFRIdS9YQkt4ZmxpbzFiYjhkSXJSRGRwTC9TbFg5cXhlWVE1?=
 =?utf-8?B?MEFRdjFvRFI5enB4QXpxRTNOZjFPNGNaWkYzQW1Kcm5zMiszU3h6ZFJtNU5W?=
 =?utf-8?B?UnpUbmRheDJGRElGd2cxR2tHZTVVTFQveTdLeVE2cjlIR2J1cjNSZDhGZ3Rz?=
 =?utf-8?B?KzhlTmxPRmVrRE1GRG1sNkRpc1VkVU5Ya0NoYUVNanpvVk5yS1VGY2JDNHc0?=
 =?utf-8?B?VmxQQTF2SXVjMWNLUlNiaVRDa0hIQm9lVkUzdHhkbHo2dXZlSlhrM0dpaVha?=
 =?utf-8?B?L2VUZzU4SExtSDA0QUtBdGI2ME5GdVl4U0I3UGVhRlZhVXRnQ243S2ZPNWlr?=
 =?utf-8?B?Slc5VnFRN3p6cHRqZ3g3TzdIeXpQc21Sc3lCdGhPVHBJQ1IreG5OLzZSQkxr?=
 =?utf-8?B?Y25EUytyZkFCZHJtTDhsRXVsSVM2V29QTjFXMEoxV1hCQ3p0RGFVNkd2T21k?=
 =?utf-8?B?SmZpR1JkdUx3dFFVYUpFOFNLZ09KUmthbmhwMW9LV21HUHhqd21wMTdvNmhy?=
 =?utf-8?B?RUp2Q2NPcmY1eEtJZEhDemJKL1JoMTN5Zm4waUNXVVRrNFhYNm8zcGs3Ni9L?=
 =?utf-8?B?QWZoNHJIUk53RG16cDUrS1RZaFk3dndDanJkWVBBS1dvKzUydzVnbWRWbUVF?=
 =?utf-8?B?VWpqcUMrRXIyNDF0clpObWFKRzFzQ0ZhKzdTaGdVYlpsbXByZnNrYVJtcUcz?=
 =?utf-8?B?alB5T1VCVWpzbFpOdkdzZVNTcEQzTkNyYldvdlJjMTJ6UXh3SExaVXRIdGps?=
 =?utf-8?B?RUsrb1pWMExhb0gwSE5XZDhmRXhPSEpYRDNrOG5ERkdUNUx0Y2FHaEQwZzQz?=
 =?utf-8?B?QnF4QUpNejh1ckVvdkZIQWt1NzVMdWt6K3VPcEVna0V6bWlrMjBIaHVjbStL?=
 =?utf-8?Q?RqAIplW1UQ58N+kZzeoMVwjzb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7be1fd0b-45ba-4bb7-bd72-08dc1b5c7c12
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2024 15:12:01.1890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ji21WVapOUgSHWiHc36KJNbg5D/QprtB9i3W5uniHZGqGu0avdiw6j8pw45TfBxND1w5EUyU/Y7TazPPGOHBBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6623
X-OriginatorOrg: intel.com
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEphbnVhcnkgMTYsIDIwMjQgMToyNyBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMg
MTYvMTZdIGRybS9pOTE1OiBBbm5vdGF0ZSBtb3JlIG9mIHRoZSBCSU9TIGZiIHRha2VvdmVyDQo+
IGZhaWx1cmUgcGF0aHMNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBBbm5vdGF0ZSBhIGZldyBtb3JlIG9mIHRoZSBmYWls
dXJlIHBhdGhzIG9uIHRoZSBpbml0aWFsIEJJT1MgZmIgdGFrZW92ZXIgdG8gYXZvaWQNCj4gaGF2
aW5nIHRvIGd1ZXNzIHdoeSB0aGluZ3MgYXJlbid0IHdvcmtpbmcgdGhlIHdheSB3ZSBleHBlY3Qu
DQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFu
a2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcGxhbmVfaW5pdGlhbC5jIHwgOSArKysrKysrLS0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFsLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lX2luaXRpYWwuYw0KPiBp
bmRleCAwMGUxOTRlZTEyOWEuLmQ5YTM1NmQ1NjYxYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFsLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFsLmMNCj4gQEAgLTE2Nywx
NCArMTY3LDE5IEBAIGluaXRpYWxfcGxhbmVfdm1hKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LA0KPiAgCSAqLw0KPiAgCWlmIChJU19FTkFCTEVEKENPTkZJR19GUkFNRUJVRkZFUl9DT05T
T0xFKSAmJg0KPiAgCSAgICBtZW0gPT0gaTkxNS0+bW0uc3RvbGVuX3JlZ2lvbiAmJg0KPiAtCSAg
ICBzaXplICogMiA+IGk5MTUtPmRzbS51c2FibGVfc2l6ZSkNCj4gKwkgICAgc2l6ZSAqIDIgPiBp
OTE1LT5kc20udXNhYmxlX3NpemUpIHsNCj4gKwkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIklu
aXRpYWwgRkIgc2l6ZSBleGNlZWRzIGhhbGYgb2Ygc3RvbGVuLA0KPiArZGlzY2FyZGluZ1xuIik7
DQo+ICAJCXJldHVybiBOVUxMOw0KPiArCX0NCj4gDQo+ICAJb2JqID0gaTkxNV9nZW1fb2JqZWN0
X2NyZWF0ZV9yZWdpb25fYXQobWVtLCBwaHlzX2Jhc2UsIHNpemUsDQo+ICAJCQkJCSAgICAgICBJ
OTE1X0JPX0FMTE9DX1VTRVIgfA0KPiAgCQkJCQkgICAgICAgSTkxNV9CT19QUkVBTExPQyk7DQo+
IC0JaWYgKElTX0VSUihvYmopKQ0KPiArCWlmIChJU19FUlIob2JqKSkgew0KPiArCQlkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLCAiRmFpbGVkIHRvIHByZWFsbG9jYXRlIGluaXRpYWwgRkIgaW4NCj4g
JXNcbiIsDQo+ICsJCQkgICAgbWVtLT5yZWdpb24ubmFtZSk7DQo+ICAJCXJldHVybiBOVUxMOw0K
PiArCX0NCj4gDQo+ICAJLyoNCj4gIAkgKiBNYXJrIGl0IFdUIGFoZWFkIG9mIHRpbWUgdG8gYXZv
aWQgY2hhbmdpbmcgdGhlDQo+IC0tDQo+IDIuNDEuMA0KDQo=
