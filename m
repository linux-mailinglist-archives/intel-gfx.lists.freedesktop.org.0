Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56051529495
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 01:02:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89EC88F07;
	Mon, 16 May 2022 23:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5AEE88F07
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 23:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652742141; x=1684278141;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=STW6wBPsN9GIWCl5XT9PCW0fDG+t08bRMmXGJuM0JlE=;
 b=hhDvUmrL9UGBTEnIQRTtCEHvsoLcoZpftTe7lY0TBE5PRBj5+E+4OX9R
 DZ8FaBZZE5UEH00zcXGnA6gcAgY189CosJsiZxRBGMECUKTaoKkK1GF4x
 pa68RESlXi2Lw5aiGRHhFQ4gt22o/mE9x/GXC5kFVQcApLBWGlR4z1K53
 L67F2oJA4x08qw0CqUEZhdV1FLhPgqlIY419xxrHDXm4tl1P7MOVCkQIc
 GfzeOI8gU3VQxU1n3CmiRRdhIi6MSpMkJFopInEN+EiGAjFqH5Fdv7g06
 KKe+8tcOq13lCJ+37MHFpBLi1yyubOiNo5iDZucNOCXQXRJG5x2n3OSiR g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10349"; a="270681343"
X-IronPort-AV: E=Sophos;i="5.91,231,1647327600"; 
 d="scan'208,217";a="270681343"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 16:02:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,231,1647327600"; 
 d="scan'208,217";a="672569850"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 16 May 2022 16:02:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 16 May 2022 16:02:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 16 May 2022 16:02:20 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 16 May 2022 16:02:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hRfcQW+SvTkcbpCQs8jxKOs15G4pDTO78V4b7BKbZadCQMxcI1hzCBapR/ty5tKRE7N6aoS8yS265LiCIoUj/1ka9Wowwe7MZJxX98vRqzB7hR6B3+mPK7HLpoMzHGPb6ixKRuHXHocHfv8UoN4VyYZc+Tx0hnfhCrKI9H6XmyFF24k+7jvg8W2P40Qx7SlxXC7J8yDrD38Pq1B5SmncJ5bexmC1/TndDt7gxuWcrDrSTijKhm7Q/uDv9oPU7V37KVs0zbun3wY9Hul3kXcixq17v5pS/olyAd0nPOVrWsFleoKP9v//qAJBQDIcwhOrmlavwG2VFLFhK9rg3HGPLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=STW6wBPsN9GIWCl5XT9PCW0fDG+t08bRMmXGJuM0JlE=;
 b=eRuB86cg43SJ0U/Artp8fF47BXv89f26LSlU1Opi5kaGCBiBFnwCDZeKiL/f8BGsyoqGKkSE1QQ2vjxP65VPAC+60SqG0MCWqye+yO0JKU513wpTf1SBwImcf+3afHLymIhzmth94Svp/F/XRGfUHMAZDDZvpYtjcbRa2ANUHD7y3LgcwmEMXvOl8JmeXJZMVG1bxwp8rsPgY7Xy9oMra5jDXH3uH4mpo5xbOuSfYLyyUxhndzPY9TRrze/LARHtTHvw6NDovLdruKPetzyRh+m9sBndV2PymcCKhFc3ed0LAjnkvfhpoYWVIHhQZVSF9N5Ez+b8cqBOEEpVtLWZDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA0PR11MB4672.namprd11.prod.outlook.com (2603:10b6:806:96::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5250.14; Mon, 16 May 2022 23:02:19 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4ca0:c733:3433:ce7b]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4ca0:c733:3433:ce7b%3]) with mapi id 15.20.5250.018; Mon, 16 May 2022
 23:02:18 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVtb3Zl?=
 =?utf-8?Q?_unnecessary_GuC_err_capture_noise?=
Thread-Index: AQHYYdL2RNDKBrgh20W4B+dTJWVsMa0iLmEA
Date: Mon, 16 May 2022 23:02:18 +0000
Message-ID: <aaa25af2c1ad01bf90f33aaa305d63a40533ab93.camel@intel.com>
References: <20220507045847.862261-1-alan.previn.teres.alexis@intel.com>
 <165190115268.22140.5179697190417053680@emeril.freedesktop.org>
In-Reply-To: <165190115268.22140.5179697190417053680@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 961adeb2-eae8-48d4-e761-08da3790209e
x-ms-traffictypediagnostic: SA0PR11MB4672:EE_
x-microsoft-antispam-prvs: <SA0PR11MB4672EBFEC1045BD70FEA481F8ACF9@SA0PR11MB4672.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ct2EECpCpg/k+YIJI+XwDJ3G0J9mqo+2kwOx1orQU6ZhS/zrwAosXPvSf7J2uxuGRrmyi03q0XWoW4Oj71LiDNtyEUajK0Sxuo0K1s3AUrI31aLuO5qfVrmb9/RZJI3AG2NtnSUdUhbyQwwUTTK65KjuzolL+79A/ktRnhA6Pfa3txzV+VHL1tYfF2CKPBSH+h41Il5oLph83FZY+YF73KbdqV0FABAjKu4U1flBV+Rx/+ra/BtNcq/eTPv1TDTLAFxohhtppe97gGAOshkSoUOOvsEOGCVd+qeag5H+qWvMR2fb3FO0TnVU0BqXNbnxKm2VZRB+bANmPEKeFxSXz0g6mnJNJFqu2fXcBgD2aOM+1PTJf8R2V/VnlnQUoZLGaQwQmArk+EP0tbbPWSD1LYK/x9LisakjMGYsRfYi8HelLAz3SQ6dRqV826mlBX6uKBQmLmskGg3rP12pvzXdGY7gi0lRtHKz+ikNxnIzZwf4T/+HKauXiZ6V2upavi/dlWmxI9VEW9GyWBQ3Alku8Is4hI0AR/1/InLwBVFsNu3HFgNlOiqTDMVTqQqf6M0+jPULtEgBTZXxvnHUL8Op+0jgxlCAF4EsfhQtRp2m5G18hTWYVABq4B48TiDSBtxZnZnwicHhCUJGsCG3dd2/02kBXQQd2J7y0QeIsCkRG7XMVXg7A1lIGSSz68E62BEeX94EKCbVsuMLUrMPqPdgm8R8nUwUWdEN9Ukb2nHycQzGgSj/Ly7cT8RAUXmOTR/n9vMvUKhzhzq4dacZNzq/+ivpi2v9PJB4SJMdF09UOetE7ElflyoqgxUqJWhRAVBr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(91956017)(36756003)(76116006)(82960400001)(26005)(166002)(86362001)(38070700005)(38100700002)(66446008)(64756008)(122000001)(6916009)(83380400001)(2616005)(316002)(186003)(40265005)(6512007)(966005)(2906002)(5660300002)(6506007)(71200400001)(21615005)(8936002)(6486002)(66476007)(66946007)(66556008)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWhlUTRRcThHemo1aXRaOUozWk9QamtBdDZMc3FGOEdYK1RscW01bkZYbGNV?=
 =?utf-8?B?ekE5QzkzeTNEVmhXaGJpRndTMTR0K1NvTWgxSUJVMEJENk1VSGRvOHhsczFI?=
 =?utf-8?B?WVo0cm5pc05ERE5rdE8reVNqNTl0dGdOVTh0SG5tdjczTDYyUVpQVE8vRWdU?=
 =?utf-8?B?ck55cXdUOEFkTFZLcHNhdVl5SEhuK01MaXJDc3hJdG05QVJtcENPQmNtZEI2?=
 =?utf-8?B?dTFYODdWTXJUdUlsemVISHd2Zzhhc2tYTXljM2sxcEtzdEdLUlR5VTJLK1pV?=
 =?utf-8?B?ajUxRURSNFA0Y0U2RWJUa1RmVzdXaFdUbjhjRW83NGUrRDloM2tleWVQMDFi?=
 =?utf-8?B?NWZZUWt1MWZoMllZMWpuZlA4bCtwT3RyK2N6d3JGckxYTmxtUmp2RFU0Z1hM?=
 =?utf-8?B?K2xjTHNHSVVqZUhNVlhUb3dyWjNGTENRRTV2RDltSStTNUNuZ2tycUZOdHRK?=
 =?utf-8?B?ZVQ5UytmQ3IzZDFDSEZMNWdUUm5TY1YvNk9vYlRXZ2tESDA0M3lmdmU2TkZH?=
 =?utf-8?B?QS8ydVd0TDI0TkFxaTJsSHh3WUNZMVdNT3kwNmdxRVdYYzhnZU5RMGxYTkdh?=
 =?utf-8?B?dkU1dmpUSno0RVlwWUV0WWxmakZRVmx3cEV5WFF1N1VDVUFZUTlJS0dFOUZ3?=
 =?utf-8?B?eHRNWnRLbjFoZmZxRnBpaFI4akhxQm5CMTNzOFFlbjdLdUZlYklndXlFKy94?=
 =?utf-8?B?dnc0YStSUzlzTFR2QkVuRnhHakdHUnJ6Ri9OUG9Wa1djRmIwQVZ1KzFDbExk?=
 =?utf-8?B?SWVPbXdxVE1TeG9hYjFCa3lQc1FENFdHR0c1SWJiYWRQTkZEdS82dWZ1QlZ6?=
 =?utf-8?B?aGNhWmJReTBaUitPYXgwc0lMVUlRcXR6Qll4Qm9FRzVMWjdXcng4WFdFZlBu?=
 =?utf-8?B?K2lkWXVjQlpaZFlkSVo3T2NnN2cwK05wdkJMaFp6Y0szcDJwVG12ZUd5V0xv?=
 =?utf-8?B?a0J4NFRUQVRRNU9XR0dDa2ZOMXpLNjBDMTdCU0U0Q0hva1MrRUl5K01mZDNZ?=
 =?utf-8?B?MGdYR1dYYWNCWWNSNVNpanF0NlZOM0lyY0xqK2U2RWNTVUdvaHJHSXNibFJo?=
 =?utf-8?B?cjFnZ044QzlzdnUvRmo1endNR1RFZFQyQnVzU013QzZQb1FVMlVGMDQvbUhq?=
 =?utf-8?B?QkNiaUhrcjJJUFgwUSt0eEJCVk52RktGTWJyNFlFMzNiTXZERWp4bUFmYnp1?=
 =?utf-8?B?cWY4Z093NW5La2JPdXBxVS9IOExKYzhXZkxlTHgwV1FHQlVEM1lBblRuMzNZ?=
 =?utf-8?B?YTRPdjVZOTc2VGY2bnhWcFViaVFFYjNLanRwQU9CMVhmbCtPY2UyazFqZ2Fk?=
 =?utf-8?B?UGV6Tm9sUHVSUEhBd0duSnZrWDlNTCtRRWZnRHlnaHpYOXJ1Zkt4MmNQVTY4?=
 =?utf-8?B?QU9KVStKcnIxMVRxQVJ4dkIyOXlXbUx1TEN5MWVPcG5ndW5iVTZZdWZkMVZT?=
 =?utf-8?B?V3ZHMTU0N0xXSVowQUs2eHdkODRyR2RPeWM5L09MSHdFeWxCNGhXYVJuZXQz?=
 =?utf-8?B?OUNEMDNzMnVoVGtYNXpYTWtpL1Z5S1ZzaURKNFVIa2g3cnhuR2dOb3g5Ynpy?=
 =?utf-8?B?YzVMdkd3bGJwMzE4M2FyVkJmV0JjL1lCcmF1OVQzaHUra1lBSWs4WlBtdXRz?=
 =?utf-8?B?ak1Ia213aHJFTGNsTkdZSFFzaVp3eHJRa29IckhlY0Rtc1RmWHhzcXZ5TVlT?=
 =?utf-8?B?SXBRMkRzVjd0VzhtMUduaDFIMk9RM0FTWllWOUFaNWdFTloySmFBVmtyeVpz?=
 =?utf-8?B?ZEJBWC9hWXFSSFN0dldFOVNlS3NCMXZJM0huYkRCMkxzQlBBQXRjeGg0RS8y?=
 =?utf-8?B?NlJnRjdoci9oVzl3THlWcjkyT1JDSTdBWUdQUXpUOG45cUk2R3ZGUHk0V2pq?=
 =?utf-8?B?d0JQc0k2M1BudC9HV2ZZblljQkkxWE8xT0YvS1kxWVpWK0psemFJWDBWOXdH?=
 =?utf-8?B?d05DVnNRWWwyQjUycjNzZlJRM01XUVNDMFFhNGNvTUZtMXZ3NFBjNTBuQ3RW?=
 =?utf-8?B?M09SUDF2bDlXYzhvMlNTeXdaWkNqY0JMUThQcWUyUkgveHlNcTFkVzBRZEw1?=
 =?utf-8?B?aGZvU1d4enBRcW9TV0Rac1JCdnNmUmFJNW43NnFqRmZneFBoOE85OUJUR2R5?=
 =?utf-8?B?N0Z5TlVIcjR5bzZHV0tlN0tnV2pQRVFMamZaTThGZEF0a1JkbWFEajByTVA3?=
 =?utf-8?B?alVib2wzS1RKdTBjYXZiZDl1YUZsUU84cnQ3RUkyMngvSTRKREhIemVQVXpt?=
 =?utf-8?B?Nzg3TlVLcklOcm44YlR3Z1Q5bGp1ejdLd2NWZ292OHN4WEJ5ZEQ5SDFoeDBP?=
 =?utf-8?B?OExwWWZjMVQ3WGJQOWNudFUvTDB1NEpTSFJzTGtaZ0pGVXMrVUpNOEhLN0NF?=
 =?utf-8?Q?4EtffUmA/ORExvZO4nP+zN9WPukduc4Q2ox3i5wlGf3eu?=
x-ms-exchange-antispam-messagedata-1: XzV7M4Xn9CM8Vw==
Content-Type: multipart/alternative;
 boundary="_000_aaa25af2c1ad01bf90f33aaa305d63a40533ab93camelintelcom_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 961adeb2-eae8-48d4-e761-08da3790209e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2022 23:02:18.7824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6kL8LxBvJzJqty4JAVJYpYSAbFo2+1njzSrTxsloH1AHa+aEffRLg3lxUraS4Ecuvdsdee9gh/+RS4lD50+p7vdpxpOCWgH2h2bXMDkjX99G86GDzoOTshDd2d9BrulV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVt?=
 =?utf-8?q?ove_unnecessary_GuC_err_capture_noise?=
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

--_000_aaa25af2c1ad01bf90f33aaa305d63a40533ab93camelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSdtIGNvbmZpZGVudCB0aGF0IHRoZSBiZWxvdyByZWdyZXNzaW9uIGlzIG5vdCBhIHJlZ3Jlc3Np
b24gdGhhdCByZXN1bHRlZCBmcm9tIHRoZSBjb2RlIGNoYW5nZSBvZiB0aGlzIHNlcmllcy4NClRo
ZSBjaGFuZ2VzIGkgbWFkZSByZW1vdmVzIGRlYnVnIG1lc3NhZ2VzIHRoYXQgYXJlIG9ubHkgZXhl
Y3V0ZWQgYXQgdGhlIEd1Qy1BRFMgcHJlcGFyYXRpb24gdGltZQ0KYW5kIGlzIG5ldmVyIGJlaW5n
IGV4ZWN1dGVkIGF0IHJ1bnRpbWUuIEFsc28sIHRoZSBjb2RlIGNoYW5nZXMgaGFkIG5vdGhpbmcg
dG8gZG8gd2l0aCBwb3dlciBtYW5hZ2VtZW50DQpvciBhbnkgbG9ja2luZy4NCg0KLi4uYWxhbg0K
DQoNCk9uIFNhdCwgMjAyMi0wNS0wNyBhdCAwNToyNSArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0K
UGF0Y2ggRGV0YWlscw0KU2VyaWVzOiBSZW1vdmUgdW5uZWNlc3NhcnkgR3VDIGVyciBjYXB0dXJl
IG5vaXNlDQpVUkw6ICAgIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
MTAzNzA5Lw0KU3RhdGU6ICBmYWlsdXJlDQpEZXRhaWxzOiAgICAgICAgaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTAzNzA5djEvaW5kZXguaHRtbA0K
Q0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTE2MjAgLT4gUGF0Y2h3b3JrXzEwMzcw
OXYxDQpTdW1tYXJ5DQoNCkZBSUxVUkUNCg0KU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5n
IHdpdGggUGF0Y2h3b3JrXzEwMzcwOXYxIGFic29sdXRlbHkgbmVlZCB0byBiZQ0KdmVyaWZpZWQg
bWFudWFsbHkuDQoNCklmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhp
bmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTAzNzA5
djEsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtDQp0byBkb2N1bWVu
dCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZl
cyBpbiBDSS4NCg0KRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMDM3MDl2MS9pbmRleC5odG1sDQoNClBhcnRpY2lwYXRpbmcg
aG9zdHMgKDQ3IC0+IDM0KQ0KDQpNaXNzaW5nICgxMyk6IGJhdC1hZGxzLTUgYmF0LWRnMS02IGJh
dC1kZzEtNSBiYXQtZGcyLTggYmF0LWRnMi05IGZpLWJzdy1jeWFuIGJhdC1hZGxwLTYgZmkta2Js
LWd1YyBiYXQtYWRsbi0xIGJhdC1ycGxzLTEgYmF0LXJwbHMtMiBiYXQtanNsLTIgYmF0LWpzbC0x
DQoNClBvc3NpYmxlIG5ldyBpc3N1ZXMNCg0KSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0
aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTAzNzA5djE6DQoNCklH
VCBjaGFuZ2VzDQpQb3NzaWJsZSByZWdyZXNzaW9ucw0KDQogICogICBpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlQGxhdGVfZ3RfcG06DQogICAgICogICBmaS1iZHctZ3Z0ZHZtOiBOT1RSVU4gLT4gRE1F
U0ctRkFJTDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMDM3MDl2MS9maS1iZHctZ3Z0ZHZtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbGF0ZV9ndF9w
bS5odG1sPg0KDQo=

--_000_aaa25af2c1ad01bf90f33aaa305d63a40533ab93camelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <415A14AEFAEF3644A47AEAEA37858805@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiIGRpcj0ibHRyIj4NCjxo
ZWFkPg0KPG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7
IGNoYXJzZXQ9dXRmLTgiPg0KPHRpdGxlPlByb2plY3QgTGlzdCAtIFBhdGNod29yazwvdGl0bGU+
DQo8c3R5bGUgaWQ9ImNzcy10YWJsZS1zZWxlY3QiIHR5cGU9InRleHQvY3NzIj4NCiAgIHRkIHsg
cGFkZGluZzogMnB0OyB9DQogIDwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBzdHlsZT0idGV4dC1h
bGlnbjpsZWZ0OyBkaXJlY3Rpb246bHRyOyI+DQo8ZGl2PkknbSBjb25maWRlbnQgdGhhdCB0aGUg
YmVsb3cgcmVncmVzc2lvbiBpcyBub3QgYSByZWdyZXNzaW9uIHRoYXQgcmVzdWx0ZWQgZnJvbSB0
aGUgY29kZSBjaGFuZ2Ugb2YgdGhpcyBzZXJpZXMuPC9kaXY+DQo8ZGl2PlRoZSBjaGFuZ2VzIGkg
bWFkZSByZW1vdmVzIGRlYnVnIG1lc3NhZ2VzIHRoYXQgYXJlIG9ubHkgZXhlY3V0ZWQgYXQgdGhl
IEd1Qy1BRFMgcHJlcGFyYXRpb24gdGltZTwvZGl2Pg0KPGRpdj5hbmQgaXMgbmV2ZXIgYmVpbmcg
ZXhlY3V0ZWQgYXQgcnVudGltZS4gQWxzbywgdGhlIGNvZGUgY2hhbmdlcyBoYWQgbm90aGluZyB0
byBkbyB3aXRoIHBvd2VyIG1hbmFnZW1lbnQ8L2Rpdj4NCjxkaXY+b3IgYW55IGxvY2tpbmcuPC9k
aXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj4uLi5hbGFuPC9kaXY+DQo8ZGl2Pjxicj4NCjwv
ZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+T24gU2F0LCAyMDIyLTA1LTA3IGF0IDA1OjI1
ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6PC9kaXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBz
dHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7IGJvcmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3Bh
ZGRpbmctbGVmdDoxZXgiPg0KPGI+UGF0Y2ggRGV0YWlsczwvYj4NCjx0YWJsZT4NCjx0Ym9keT4N
Cjx0cj4NCjx0ZD48Yj5TZXJpZXM6PC9iPjwvdGQ+DQo8dGQ+UmVtb3ZlIHVubmVjZXNzYXJ5IEd1
QyBlcnIgY2FwdHVyZSBub2lzZTwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkPjxiPlVSTDo8L2I+PC90
ZD4NCjx0ZD48YSBocmVmPSJodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzEwMzcwOS8iPmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTAzNzA5
LzwvYT48L3RkPg0KPC90cj4NCjx0cj4NCjx0ZD48Yj5TdGF0ZTo8L2I+PC90ZD4NCjx0ZD5mYWls
dXJlPC90ZD4NCjwvdHI+DQo8dHI+DQo8dGQ+PGI+RGV0YWlsczo8L2I+PC90ZD4NCjx0ZD48YSBo
cmVmPSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MDM3MDl2MS9pbmRleC5odG1sIj5odHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMDM3MDl2MS9pbmRleC5odG1sPC9hPjwvdGQ+DQo8L3RyPg0KPC90Ym9k
eT4NCjwvdGFibGU+DQo8aDE+Q0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTE2MjAg
LSZndDsgUGF0Y2h3b3JrXzEwMzcwOXYxPC9oMT4NCjxoMj5TdW1tYXJ5PC9oMj4NCjxwPjxzdHJv
bmc+RkFJTFVSRTwvc3Ryb25nPjwvcD4NCjxwPlNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWlu
ZyB3aXRoIFBhdGNod29ya18xMDM3MDl2MSBhYnNvbHV0ZWx5IG5lZWQgdG8gYmU8YnI+DQp2ZXJp
ZmllZCBtYW51YWxseS48L3A+DQo8cD5JZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMg
aGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXM8YnI+DQppbnRyb2R1Y2VkIGluIFBh
dGNod29ya18xMDM3MDl2MSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRo
ZW08YnI+DQp0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVk
dWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS48L3A+DQo8cD5FeHRlcm5hbCBVUkw6IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwMzcwOXYxL2luZGV4
Lmh0bWw8L3A+DQo8aDI+UGFydGljaXBhdGluZyBob3N0cyAoNDcgLSZndDsgMzQpPC9oMj4NCjxw
Pk1pc3NpbmcgKDEzKTogYmF0LWFkbHMtNSBiYXQtZGcxLTYgYmF0LWRnMS01IGJhdC1kZzItOCBi
YXQtZGcyLTkgZmktYnN3LWN5YW4gYmF0LWFkbHAtNiBmaS1rYmwtZ3VjIGJhdC1hZGxuLTEgYmF0
LXJwbHMtMSBiYXQtcnBscy0yIGJhdC1qc2wtMiBiYXQtanNsLTENCjwvcD4NCjxoMj5Qb3NzaWJs
ZSBuZXcgaXNzdWVzPC9oMj4NCjxwPkhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBt
YXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEwMzcwOXYxOjwvcD4NCjxoMz5J
R1QgY2hhbmdlczwvaDM+DQo8aDQ+UG9zc2libGUgcmVncmVzc2lvbnM8L2g0Pg0KPHVsPg0KPGxp
PmlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbGF0ZV9ndF9wbToNCjx1bD4NCjxsaT5maS1iZHctZ3Z0
ZHZtOiBOT1RSVU4gLSZndDsgPGEgaHJlZj0iaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTAzNzA5djEvZmktYmR3LWd2dGR2bS9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlQGxhdGVfZ3RfcG0uaHRtbCI+DQpETUVTRy1GQUlMPC9hPjwvbGk+PC91bD4NCjwv
bGk+PC91bD4NCjwvYmxvY2txdW90ZT4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0
bWw+DQo=

--_000_aaa25af2c1ad01bf90f33aaa305d63a40533ab93camelintelcom_--
