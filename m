Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1649F6CFC97
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 09:22:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B6010ECFB;
	Thu, 30 Mar 2023 07:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51EE810E17D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 07:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680160948; x=1711696948;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=H5vNS9TWEtid1b8klIoV3L8ZA/1sCBLThxnWhwus5zg=;
 b=NiZA8pY5xMBBBnvRUHyE4huFXOHZnWtQ03/OelMPDMKcbxkSbchHqB2m
 rAk+Jp9A0Pm5FWC/xes+r8icrBxAO7lQ+QD8mQsl+g22csgoi1jZSqSVz
 KDr9KIXgtMLB0O/uUVVlC9vCigFgmCox49wyA/TRnwvP3EMQs5g/slVzs
 Len7z0419vgWK8EuLwndkX91lzIzSiFKTEvj2a1aYtgG7aF2BxqVhV2Cu
 jrNfYduPGtD6TxLmgSO21B8ASaLvNLjoMLD5pcLHv9s5fy3GsQogRt8KK
 Is09CiVLZ8R3jHt/z/BEOhdzsZdR/iBPfqBJI0koGfQm0/gmB8+g3wGil A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="320742471"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="320742471"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 00:22:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="687130198"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="687130198"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 30 Mar 2023 00:22:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 00:22:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 00:22:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 00:22:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CY+RdrXcMsdzoQHvqkV1jDQmv/z8U4baCmtpb47glpeNu34liUDLjSPxp9a72SIP006a0zfja6mjfnA575oEnsNoS/K496z1Kk+xBVm5DaEbVjQaLJhcDPgjyBiaL/9w9Ms5Yg2+L5VzXEUUOyqTNG1VK2Rxv8Y51EzESvFgyMri9NNF62FbDXE+hv1+F2uQyEUlgMtNj/HjdUsyEeoPrrabLhPUMBrtZxc1q85wNrrN6B9Es26+RbSuSViIhGTscYfJ1RhWJxJrxARSJDdX2lwLnTEUzf9K1K5LhWXSsIZjbCJ9S36l6ycxIk7Qwia5oi5Sd3+Ss5vDv41dqA+QnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H5vNS9TWEtid1b8klIoV3L8ZA/1sCBLThxnWhwus5zg=;
 b=lvrWG6IPPf8wm++e0uL/0a+My28YlbXISB9yRVtRbNwXpaEcJAfYVCMX4STUdzFHkaGzgCr16vH1SchvE6KabgBbglGdpZbGNpm7XousNvqOE/ZdXWT3dXoFavof4AXQ0LbyyE3samlriyfSTxy12wNGrNL8j/V0tTz4+KtJqVEpFdszmnz70otKW+uIzxmmPrvxOSuvli6Uivkx+pdWM6cpgIXR6nwUwyJUyZWjcj4xfFqE+ReOqhydmqIhNtC/fpC3h4+AfoDBCv4//l7+n7R1/nYROZ9AbI3VFae9Pg/tqQZ1qjtbfixbOtcVidYzoPSQ5L60xh9bKvYabnIyQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB7078.namprd11.prod.outlook.com (2603:10b6:303:219::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.35; Thu, 30 Mar
 2023 07:22:22 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6222.032; Thu, 30 Mar 2023
 07:22:22 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915: Explain the magic numbers for AUX
 SYNC/precharge length
Thread-Index: AQHZYmNazm2E09y59kec65HlG5qe7K8S6/EA
Date: Thu, 30 Mar 2023 07:22:22 +0000
Message-ID: <7c2249f6bd665f994a79f373cc18d0df61f61838.camel@intel.com>
References: <20230329172434.18744-1-ville.syrjala@linux.intel.com>
 <20230329172434.18744-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230329172434.18744-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB7078:EE_
x-ms-office365-filtering-correlation-id: efe78de0-87d3-4d9e-6120-08db30ef80e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bvGrQaaXGwspKPpGBQANH6ihBRsneQtAKhsZZz/KDFrOD5MH4CX7lc1H+swooaQWT4maunT/Spt2BWgXK53winBvbqDC+ty+8TBjFJo/IYP51AYa+ZAdocXyy9XbQlAK5B7BJQL+8c7cz7pPi4LUXtJRC/yOZPVyKKbSAtnsAD21L9w7jly1N8Gh69huduQBCAmqaXpYrtLpiwTO6fUp6Oo6GHvNMnD1MC0i2R/5DOYW+PbFf6vCW5ci/vy4yMrN/D438BVvUFvOgcx5oYiVwj+iYZNOkgWWLr/h6HvN4t7A6Ts1gIwxMYgp4v2ocyqG7BDZOJXcLesQmE5xTxWUfYWTyoaIVbs7LJ6AAHAPi3uds5MeT0jeDIP17L3eEe4Tf24IBzilSo1K2rF5bgIPBn1MvI/qM5gvB5RZ56Yzs0lpr10wfcuvG4ZcDaF36LcLATtM6MPTucLJfWQy3VLBif2sOKKgoGzcv5o9VirIT1jUgwtENLtSTDUrNLA7cum114FdiJSXzH35g+lNGAWwC1lcg40c4HvsSmjPXsQEN/JFXxSVMQy4kzsoo3+EYaFCGabnCsCXorLRnJsyvkfhtE5rmPReEfd8KXZGtq4M6mf3UbE7RYJGZyX/9qplwPUz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(346002)(136003)(39860400002)(451199021)(5660300002)(83380400001)(2616005)(6506007)(26005)(6512007)(38100700002)(82960400001)(122000001)(86362001)(38070700005)(8936002)(41300700001)(36756003)(316002)(478600001)(71200400001)(91956017)(6486002)(186003)(66946007)(76116006)(66556008)(8676002)(66446008)(64756008)(66476007)(110136005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U0xYbjNHVFhxZzhDcmNSNnhlTmhOejRmc0hOL1ZiN0xzSVFDY2VNZHc1Y1pk?=
 =?utf-8?B?OVZJR2tYVTgzdUxhYUVDU1pndEUwRjZpOHcyOHQ0UjR6cTA1cTI2Z2ZMSVlz?=
 =?utf-8?B?WW94NzMxRzVacXFOaGxrL0I1cDltRDZSRmRaOSs5QXRteWVVVG5PajE4TXB2?=
 =?utf-8?B?YmZNaGRySDY1R3VrTEZvL2lXOHc5Ly8yM0E2aGRLNDZlVHhYZ21zOEF3ZTRv?=
 =?utf-8?B?Qm8zRTJQdW5VNzJxWDFTTUlTM0dJMmRKQmZVOHlyZUF6MDluR1FzTzNMM054?=
 =?utf-8?B?M3lGdHFNTG9VMFNEanNFdk9YZ2xvaTBUSUMvR1h5Qnl3K2tVVVovK3NidVhW?=
 =?utf-8?B?cHV1UDNmaVZXaXhxSS85a1RVenVOQ1huY0xkaFFhRTk3OUJnTVp4bVEwVFdq?=
 =?utf-8?B?ZnBwVjF5WE1QekJJV0htRE8yMEVKWGk5eTJVSG1vTk5UdmxlYjArdlhkeGlJ?=
 =?utf-8?B?R1pLS2pQdFdpRVNyVWNEYXlpSnB5aTRWNWo5akVyTDZFVVI5ZkZ3ZjU1b0Iv?=
 =?utf-8?B?MGl5MzN6Rm1RSThmS0RHRmcvK1dYVlNxbFkwWWJ5SVlnSkNPS09GdG10MTA4?=
 =?utf-8?B?ZnF0UkNVV2hzSUxsVjhqeVN3enRNaThvUVJxMkVkcFJkbEhJS3JJY1Zqbytn?=
 =?utf-8?B?T3h5K1JNd2I1a21qZDJ5SjRXWHZEZGtWY0tUMmZYb0hDN011UDhCVWRJSnJ0?=
 =?utf-8?B?ZlpINDUvOE1JWXRIRFMySks5SzQzVEdJQThOc3ZRbjJ2WFd1Z0NWNVBhaW1J?=
 =?utf-8?B?YVdpMjVFc0h2NGM5Zjg3NlNFSEdaRFVET3VOZ2tCSlY4QzkyWlpCQVF4ZkNu?=
 =?utf-8?B?RW1ndXFTOHBaYjFITkU1eUR6QUZLWGhHVzREZloyMDZVSzNTT2VVWlE5Smdo?=
 =?utf-8?B?VE1sTVVYZWdhQU56ditaU1R6OHBsdFRHTi9JR1NFQXUzUHNqWmFPYkVjZG4r?=
 =?utf-8?B?QzJaaTlOTDk2T0t0T0xSelU4RTQ1MHRWZ3VYOExZZmdHWXkyZkY1aHpCWXVR?=
 =?utf-8?B?eFhpZzhqR1BrVVFiY1JIQ2t3SVBLNGNSOHhYNEFJZWQ2di9nMFpjaENCMnZE?=
 =?utf-8?B?NDNxMDVCb2FQeWQ1S3JtZmo2dSsrblZ3Qjh2K2tCa0srTWUyZmllWnZ0R1J0?=
 =?utf-8?B?NXR1K3U1UGRXUUtFQ3MxaWdlV0xCQ0VRZGUrU3ErTnJPV0NiMFN2d1FKMUFy?=
 =?utf-8?B?TnUrSm9Zcit3ZldMeFBydEJKS052c01jK2JOb0wzd3YrbkU5RGVxN0dpa2ow?=
 =?utf-8?B?Q0Y1T3M5c2RjdVFLN1UwdWlBaExVN2E5bWl3M0FSVVBkajlnYVRuU05VdDhR?=
 =?utf-8?B?ZzRXK01aYm13SHFsZy9HdzJkbFkwYWVGVmpYTERiRjhLenVsMXduM2RyNklu?=
 =?utf-8?B?VEN5a21uZ0cyZTdyZWRHRVU5eXdjdThhdk9WYnc2NE5yUm1rWjlFOFJsemQw?=
 =?utf-8?B?Wm5uZnQ2WEN1aUR5T2huMk9FbDh5Ui9BR2dxMjlhaEx6c3YzN0oxbm1TTTRH?=
 =?utf-8?B?OFpKN3dVZ0xMSGk3V3kzb1JEdjEreUEvdm9YMUdNbHhKelV4VHNwUVdoQkYw?=
 =?utf-8?B?TTFvMCt1Z01JQU9BUHlseHFldEQxM1ZxNHM2ZUI4WVArM08wQTZ6NVlBUVJD?=
 =?utf-8?B?Q01GWDFCRERCTmFrUmJqK1c0SFFzdzhBVEphb0Z4SzlteHNncHc2a0NpU0V2?=
 =?utf-8?B?NG82YU1RWUR3VS9VRHdWMEdVbHF5aURoc2YvS2sxM0V1YlJqN3p0M3lXbDJq?=
 =?utf-8?B?OFBRVzU5MndYOFFtVTgxQUEvamdKemxhRnVabG5Zdlo1UEN2aURlckIzSEhp?=
 =?utf-8?B?QkRVamY5SWdaTHV3cm5vd0w4bHlCMXpmdWVVZ0hCV01hSHkxSHdSWEFTYndq?=
 =?utf-8?B?bWZMR2NxUXdTNkxsSjNDWGl2UU1LWFByc3MwUlRmZFhFWlcyeG45MHpEdGxp?=
 =?utf-8?B?NktkODBiTllJT0xIMTlJU05ROHFFWk1Fb0hQbCtSNHp6SUV0aDFKSzdESkdO?=
 =?utf-8?B?Q1Z6YnVBQThlRlFLZ001bHdtY0tnVlBtZktIdGlRMm1OKzlYdlJHR3hoY1du?=
 =?utf-8?B?SXNUaGZjeHJYVkd3bnZxKzZVY3BUcXpzek1ubkRxQ1hoYlJLZUc4RXFWVUZk?=
 =?utf-8?B?UFNCLzRxbno2dWR0MEtFcjZzUFE1bW9WNmRBdXJDMEJxbXdZSjRxUkp1dHNn?=
 =?utf-8?B?OEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <74E3E4004322CC4F9534C3E3DD157E6C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efe78de0-87d3-4d9e-6120-08db30ef80e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2023 07:22:22.0699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A2PrJiHeIzgzU7z8RdqkSMTai+bzYEOMzpbpfeRvSGdWIF203EzdKEY8/xbsik5BZWm/kt3+mfua9r8v8cOZPQYhcMRbckerVdqd1csF2dE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Explain the magic numbers for
 AUX SYNC/precharge length
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

T24gV2VkLCAyMDIzLTAzLTI5IGF0IDIwOjI0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gUmVwbGFjZSB0aGUgaGFyZGNvZGVkIGZpbmFsIG51bWJlcnMgaW4gdGhlIEFVWCBTWU5DL3By
ZWNoYXJnZQo+IHNldHVwLCBhbmQgZGVyaXZlIHRob3NlIGZyb20gbnVtYmVycyBmcm9tIHRoZSAo
ZSlEUCBzcGVjcy4KPiAKPiBUaGUgbmV3IGZ1bmN0aW9ucyBjYW4gc2VydmUgYXMgdGhlIHNpbmds
ZSBwb2ludCBvZiB0cnV0aCBmb3IKPiB0aGUgbnVtYmVyIG9mIFNZTkMgcHVsc2VzIHdlIHVzZS4K
PiAKPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMg
fCAzMgo+ICsrKysrKysrKysrKysrKysrKystLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfYXV4LmMKPiBpbmRleCBhZDBhYWM3MDcyMTkuLjM3NDQ5MjI5MzM5MiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYwo+IEBA
IC0xMTgsNiArMTE4LDMyIEBAIHN0YXRpYyB1MzIgc2tsX2dldF9hdXhfY2xvY2tfZGl2aWRlcihz
dHJ1Y3QKPiBpbnRlbF9kcCAqaW50ZWxfZHAsIGludCBpbmRleCkKPiDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIGluZGV4ID8gMCA6IDE7Cj4gwqB9Cj4gwqAKPiArc3RhdGljIGludCBpbnRlbF9kcF9h
dXhfc3luY19sZW4odm9pZCkKPiArewo+ICvCoMKgwqDCoMKgwqDCoGludCBwcmVjaGFyZ2UgPSAx
NjsgLyogMTAtMTYgKi8KPiArwqDCoMKgwqDCoMKgwqBpbnQgcHJlYW1ibGUgPSAxNjsKPiArCj4g
K8KgwqDCoMKgwqDCoMKgcmV0dXJuIHByZWNoYXJnZSArIHByZWFtYmxlOwo+ICt9Cj4gKwo+ICtz
dGF0aWMgaW50IGludGVsX2RwX2F1eF9md19zeW5jX2xlbih2b2lkKQo+ICt7Cj4gK8KgwqDCoMKg
wqDCoMKgaW50IHByZWNoYXJnZSA9IDE2OyAvKiAxMC0xNiAqLwo+ICvCoMKgwqDCoMKgwqDCoGlu
dCBwcmVhbWJsZSA9IDg7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBwcmVjaGFyZ2UgKyBw
cmVhbWJsZTsKPiArfQoKV2hhdCBkbyB5b3UgdGhpbmsgaWYgd2UgbW92ZSB0aGlzIGludG8gaW50
ZWxfZHBfYXV4LmggYW5kIHVzZSB0aGF0IHRvCmNhbGN1bGF0ZSBpbyB3YWtlIHRpbWUgYW5kIGZh
c3Qgd2FrZSB0aW1lIGluCmludGVsX3Bzci5jOl9jb21wdXRlX3BzcjJfd2FrZV90aW1lLgoKPiAr
Cj4gK3N0YXRpYyBpbnQgZzR4X2RwX2F1eF9wcmVjaGFyZ2VfbGVuKHZvaWQpCj4gK3sKPiArwqDC
oMKgwqDCoMKgwqBpbnQgcHJlY2hhcmdlX21pbiA9IDEwOwo+ICvCoMKgwqDCoMKgwqDCoGludCBw
cmVhbWJsZSA9IDE2Owo+ICsKPiArwqDCoMKgwqDCoMKgwqAvKiBIVyB3YW50cyB0aGUgbGVuZ3Ro
IG9mIHRoZSBleHRyYSBwcmVjaGFyZ2UgaW4gMnVzIHVuaXRzICovCj4gK8KgwqDCoMKgwqDCoMKg
cmV0dXJuIChpbnRlbF9kcF9hdXhfc3luY19sZW4oKSAtCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHByZWNoYXJnZV9taW4gLSBwcmVhbWJsZSkgLyAyOwo+ICt9Cj4gKwo+IMKgc3Rh
dGljIHUzMiBnNHhfZ2V0X2F1eF9zZW5kX2N0bChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpbnQgc2VuZF9ieXRlcywKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdTMyIGF1eF9jbG9ja19kaXZpZGVyKQo+
IEBAIC0xNDAsNyArMTY2LDcgQEAgc3RhdGljIHUzMiBnNHhfZ2V0X2F1eF9zZW5kX2N0bChzdHJ1
Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHAsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0
aW1lb3V0IHwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERQX0FVWF9DSF9DVExfUkVD
RUlWRV9FUlJPUiB8Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoc2VuZF9ieXRlcyA8
PCBEUF9BVVhfQ0hfQ1RMX01FU1NBR0VfU0laRV9TSElGVCkgfAo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAoMyA8PCBEUF9BVVhfQ0hfQ1RMX1BSRUNIQVJHRV8yVVNfU0hJRlQpIHwKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGc0eF9kcF9hdXhfcHJlY2hhcmdlX2xlbigpIDw8
Cj4gRFBfQVVYX0NIX0NUTF9QUkVDSEFSR0VfMlVTX1NISUZUKSB8Cj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAoYXV4X2Nsb2NrX2RpdmlkZXIgPDwKPiBEUF9BVVhfQ0hfQ1RMX0JJVF9D
TE9DS18yWF9TSElGVCk7Cj4gwqB9Cj4gwqAKPiBAQCAtMTY0LDggKzE5MCw4IEBAIHN0YXRpYyB1
MzIgc2tsX2dldF9hdXhfc2VuZF9jdGwoc3RydWN0IGludGVsX2RwCj4gKmludGVsX2RwLAo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERQX0FVWF9DSF9DVExfVElNRV9PVVRfTUFYIHwKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEUF9BVVhfQ0hfQ1RMX1JFQ0VJVkVfRVJST1IgfAo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChzZW5kX2J5dGVzIDw8IERQX0FVWF9DSF9DVExf
TUVTU0FHRV9TSVpFX1NISUZUKSB8Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEUF9BVVhf
Q0hfQ1RMX0ZXX1NZTkNfUFVMU0VfU0tMKDI0KSB8Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBEUF9BVVhfQ0hfQ1RMX1NZTkNfUFVMU0VfU0tMKDMyKTsKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgCj4gRFBfQVVYX0NIX0NUTF9GV19TWU5DX1BVTFNFX1NLTChpbnRlbF9kcF9hdXhfZndf
c3luY19sZW4oKSkgfAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBfQVVYX0NIX0NUTF9T
WU5DX1BVTFNFX1NLTChpbnRlbF9kcF9hdXhfc3luY19sZW4oKSk7Cj4gwqAKPiDCoMKgwqDCoMKg
wqDCoMKgaWYgKGludGVsX3RjX3BvcnRfaW5fdGJ0X2FsdF9tb2RlKGRpZ19wb3J0KSkKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCB8PSBEUF9BVVhfQ0hfQ1RMX1RCVF9JTzsK
Cg==
