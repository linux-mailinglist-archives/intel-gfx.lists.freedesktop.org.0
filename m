Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C136B5B414D
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 23:10:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D428C10E1B3;
	Fri,  9 Sep 2022 21:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A4D10E16E;
 Fri,  9 Sep 2022 21:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662757848; x=1694293848;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vtW3gJZS+98sZTOT/cBW7tXGAo8dy4qf8swCxBBq40w=;
 b=JJucupCRVUC66T56OmLv/0QFcrrC6ObCCusmjf3E3uz6bEkUfym6jCxp
 62m+XJrClz+Q57ZU3W6B0KW5MqsNLwjGal0lXYxdpRaENBzv8hWTw0/s+
 Xe7Qf43AeA7jLVAcrBXBfA6gHk1a0cwAciFuqYMVZx84y/vsahmcCuvZc
 I/+qs0x8KBHrWLZ7Yqoh8CNCFkpsb6zi0V3VMH+2kQ5wHn0EuRhKISfzE
 tRtUdmTkiuzePjmMhTcAdsKF+S/VKuRtLnqv3m95zaYTCYLjMM1Q+XL7/
 Fzg1w7Fg5SSTksz76iX843Xk1aYN/uas8ZociRR6ku+4C62texpJhL7iY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="323786935"
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="323786935"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 14:10:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="943914934"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 09 Sep 2022 14:10:48 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 14:10:48 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 14:10:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 14:10:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 14:10:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DL6wz++nM2tYF/syUJeGrAmjmQZBtwdLFSbR2lsHw6wvp72JpApTWMLIPBjrhHFM0lVYBkfSP6VKMiF3jejvLxikYbS1dUUkTJH01yL+7/3HEHabSLg89BGR4yomt2rq3hgbB8pNDNR5wHUmmQPafOvIkYExaIC67z+GnDPQ0F1hymp1EunHYpgh//WBTRmou8f2oauUGhfdE6DnjUEhuniCWCFWwEDayZdjkl7NGrzhmfAWLQiU+o3KZmTKGViE4TbHlrjbaSEr/92fcGrjD1uH89XGB02DAWXPS2NXxdYJJzP3i3VSZQlq+D+uaKKOffYcLrBIYnuLABBw2HMN7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vtW3gJZS+98sZTOT/cBW7tXGAo8dy4qf8swCxBBq40w=;
 b=D1eO+oRYuH1demV8TrjUoi9bYStTdAw/R/dhVMl/GOh2FTNtU5wQzJtIU5Rzz5Vh9dGmpCCl41jCJ4yYk7YWx9g7cgFcj3aUKyihSv7+SwJ07i5eF6+CemJSWgUy4OHoCIx5yWOoad7X3DqikukiQrh8Fgk0o5LilDEyPuzSzOMsjtSPb+KIqZcAYzWV7h3Wr3UBhXhh1boolmSgBfnNH7BtWhPxdv32F8EuGuVEa4HepX7MDWNxpBakHO+FTPzDbJ8Vv2dN4BKEYRQ/9GZpSsLpeqtwXFwVo31EVaK73wBXJNzYac4hyeMYdnM7AdA1v09yfQFwIdUkHYSbisx28Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA1PR11MB7016.namprd11.prod.outlook.com (2603:10b6:806:2b6::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.20; Fri, 9 Sep 2022 21:10:45 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%5]) with mapi id 15.20.5612.014; Fri, 9 Sep 2022
 21:10:45 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 11/15] drm/i915/huc: track delayed HuC load with a
 fence
Thread-Index: AQHYw+F+ar3aHrhvmkqxNjmqeG3Vsa3XmfUA
Date: Fri, 9 Sep 2022 21:10:45 +0000
Message-ID: <3057a02d4b919fcda998e31f2394281bef08f78e.camel@intel.com>
References: <20220909001612.728451-1-daniele.ceraolospurio@intel.com>
 <20220909001612.728451-12-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220909001612.728451-12-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA1PR11MB7016:EE_
x-ms-office365-filtering-correlation-id: 8aded7bd-7b2f-4d31-7a37-08da92a7c2c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ynEbJ3mp+svL3DcA6J5s+O7PgLP5PjgMdJ7DiDHt3X3X1qUfsOWCjFSpo8qhBSVmdbHXVeJiZ6/HXn6qhxxXPB/PD8BjLi/9zjNW37asrt9hyWACIeZxGRt2ZQgkF5ivZQzCeB+QWVYlcmuq0ifii50btGQnnq13bpvAtCBKu91WIEPsWR2OrtHstIfOP7p3djlI1ra4LuIvZoAgg3iL3ANupeX0m2lZV9R0cDnDYbQrl2JfxYEuzqf9YFSgSNMlkxC85bDR4lwcrj7nv1ESUw3wLsWonSYgqQCIHks+Xbwvq0m+RE2T0foCVvqYfr6IuL+ZP7sKW1DkjKTv+cGFp8/nrTrqK02NJiwZB270k3X4CRRrGZZ+iVVFjpQF/qVKMf170PeyDMni/2kDFt62nMfq1D+v/59PuVm+Dlxzj4VO+7fq1I17aFsS+6bVf3KOtVdDZLEM2I0fedUzn/rL238PhgL0h/YDCeOod1WrdJrUt9ulnyPWvx9uPhT8J2qZY9/vke+BmVan/qfz2a4xeXzRbhIDq3j3RnIs8OoRjZzLFlF761jrLNCMlx/8pjhV83yAB4kvTWLddT+oqGEFpgds0fXfJMrjX1fB0Nlqa8tv52MAo4+OZbQRHwZ8QyalzsLAVJrIHlJY46vUKoNCgwBF/I0mQULbM3ymiVPgks07AeojXnvNAfeEWVWAl+J7575nPuxnIuJC+8swOm/I3MyjyuO/aol6d1zbASE6PQrNTncZhbgPqKYmRJruROygo6qoTZJadodEBmh/RRb+Rg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(376002)(396003)(39860400002)(346002)(30864003)(5660300002)(66476007)(82960400001)(2906002)(110136005)(64756008)(316002)(8676002)(8936002)(91956017)(4326008)(450100002)(76116006)(66446008)(66946007)(66556008)(38070700005)(36756003)(86362001)(122000001)(38100700002)(6512007)(6486002)(83380400001)(26005)(6506007)(41300700001)(186003)(2616005)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2h5UjJ5My9wSFNMaUIwc2Z1eDIxZ0szV0NXenlZOVlvUTZScXkwdkhyaGE3?=
 =?utf-8?B?dk9oenNNTGVNdjlBOWs4NDRna21JN0NPMXY3dXVzSlpJUTU5VzVnd0xVaWxX?=
 =?utf-8?B?OW9CNC9qTEh3YVlXOFBvRzVoMVJRdG9wMzQzMHpFU1E2L3FQUkxrNlN6M0Jn?=
 =?utf-8?B?cktURm80WnpKN3BSaHlzMWVVQUtNb2xscUxQaFJDZ2ZDdVJRN3QwOW5JWERY?=
 =?utf-8?B?QzB6T2VBTDc4dHJQSXpma0VrZFh1cnYrcVlPWW9mOG1iN0tseE9ZNzNEZHk5?=
 =?utf-8?B?VW9jVVBXMnJPS1dxa3BYNktLK1hNbGdIRkxCMkp1cFA0SzNYcmNwZGZYU1lt?=
 =?utf-8?B?TkwvY1JpK3lwQkJxVEY1dXhDa1VMVXd4Q2VUNzc0alRQcVp2YnFiSk5FSmFH?=
 =?utf-8?B?dFQrZEJKVXUrbktSVmhMaXlKbUpvWms1NXJ4VmR4YWUrMG1DZUd2ZVA5OU1r?=
 =?utf-8?B?ZWRBN29qVzFCczA3TFZ2RENvc3I0ME1tQVo5ZzhlTis5cUZnS1BjYmNDYy9R?=
 =?utf-8?B?WktDVzBGdjl2LzN1ZnlsNVQvZmZvLzVwVGpsQ2xQVkFXcUhSTlV1VHBvUVdx?=
 =?utf-8?B?Vk9kcXBYVEZUY25tZnp3dmN6MnpLb2VYWFUwRWNMYVZLTXdyQWQ2NFB0WnBm?=
 =?utf-8?B?Y014eVZyd1pkY1c5SUZKNXBvcDZVVVZlYkZvS1RBaWxtNmhDclM1anNIU3Jm?=
 =?utf-8?B?cHNsN2JJTTAra0huZFcxaEtWOFZDR3VIUmxMRmlZOXhXUmtPR1Q5dTlxaGNi?=
 =?utf-8?B?NzBRZUJhMDlKRkl1aUVhWXBDaWRLTmt6T05NYUVyaHVGMTBRSUtoZDF1UEY1?=
 =?utf-8?B?aTd5d3EwWnBIVXJGUnBHa1B1V1pFMEpvSCtGTUYvN2VTMXVpcktwNGJJRm82?=
 =?utf-8?B?L0FCNmFQWDlWWHFjMVNVKyt6RmdtMzJBT1BjVTlPSjJKbFRVd2d2WSs0OWNI?=
 =?utf-8?B?Z0krcWJGcThVWjd3TDd5Ymg3U0JnNmhtVTNVZWdydDdjQnRUY3VrODhNNXlt?=
 =?utf-8?B?VTd4YWtZTENDeHJUK0pPS1ZCYjBCMzRLeGx6ZXQrZlNwS204Vlk1VE95ZTJB?=
 =?utf-8?B?cXhLZk5yTHc2UE1aMkVTZ1FVM2lHeUlYUVRsQ01KbE84UnRIQnU2QW1xUHB2?=
 =?utf-8?B?SG12RUlabHo2eVl5Zm9VYzVqWGxyb3c0QVBWTzEyeEtBMktsR0dHdUJDeXAy?=
 =?utf-8?B?RlU3ajd6YkRQbU9YV0YvbURmZmxibFdNSENsMFBDSU5mMHhQYXZMZTlOc0FR?=
 =?utf-8?B?YXA0NlRhbHpDY1dMa3BlVm0rS3RWSmx5WHhMall2R1ByZFBiTjV4SGpYQVRq?=
 =?utf-8?B?VW5Bdmt5VGtBeHcvNVUrMDJoaXpQbmpNZ0I1S29QWkIwR2NiSUhPd2s1eERP?=
 =?utf-8?B?dU42REtXZVlFZzNxcVVwZ2NBSkJMb21MNlpNZkFjWWREQXFZT2Z0M2RaM3B4?=
 =?utf-8?B?MGMwS2pYU3VmZmtlUnd1d0NVMmEydVJUczA2U3BFR1J1RkFrM3Raam45UnFr?=
 =?utf-8?B?SkV2b3IwVG1HWTFmWWRhUFRDajNsS2NoM25FWGJWbis2SHRRaVdZS2FpN3Bx?=
 =?utf-8?B?L1E3WGdvVjR4MmQzdzJlWUQ5bUxhVEt3R1BPeEZYTStOcDF6UGVaaitGb2Zs?=
 =?utf-8?B?M3hmZEJ3bEVkQm9MUi9pclE2UnhEVDlIeEI2Qkk3SFFsRUo1bEVFMHpiSlZt?=
 =?utf-8?B?SFVKTTVkZ3Y1dnAxS0F3aUxZQjUwbXdSVzFOTnFPRko3NWV6ZFFIT1U4a0I4?=
 =?utf-8?B?MFhobGFoa000ZkdlanVBQXQwMExWVExSRFdMVnQ5TUowTzN2ZFl2WUt3NmVt?=
 =?utf-8?B?aWE0dG4vdjZ6a05kYUJIZEttQWFCNGI0eDRESGFLU2I5RThxaitvMGl5eG95?=
 =?utf-8?B?S25reVNodkFrbmhVcUJkR0M4MXRxZVllWDJWeWZXV3NFWk9LMUxKNjNyNE0r?=
 =?utf-8?B?MnZBdlR5T0JoRmQ0ZytsbTErMUc0aFZaY1c0RnoxSzZVakZxd1lITHYwK251?=
 =?utf-8?B?MnpDczEyWHRFSmRxMVErTktDL0w2SSt5OXBPQTMrMTFzUE5ZZ0s5bUw3elJl?=
 =?utf-8?B?V3AwL3FBTlk2NVVzcHF2YTlqS2diTTM4K1J6Rk5xMFk1VGs5UUZaVUFFb0hH?=
 =?utf-8?B?aWNBN3dTUElKakJkSGZVUTkyMzRTK2hyczcrbE1zVWFoTWlIVis5NE1YNkY4?=
 =?utf-8?Q?VfFvZHxMXmgVL4XJ+SrfpjO0SyfKo80/B+lJDD+9y1SX?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <22061A0A671FCF48896880F9C8D3BB91@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aded7bd-7b2f-4d31-7a37-08da92a7c2c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 21:10:45.1302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t5X/x5XnzN6757N65dHsah6Z8sAkBMHoKfGfOAWBLYHBfBk4UHobIL/eBOtPgHhgezcHbIF093ooqtwN43qEzN5zSBPR5Sx7fd3goiuSWekFl50/TmHjwB6iiSx8adyW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7016
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 11/15] drm/i915/huc: track delayed HuC
 load with a fence
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwu
Y29tPg0KDQpPbiBUaHUsIDIwMjItMDktMDggYXQgMTc6MTYgLTA3MDAsIENlcmFvbG8gU3B1cmlv
LCBEYW5pZWxlIHdyb3RlOg0KPiBHaXZlbiB0aGF0IEh1QyBsb2FkIGlzIGRlbGF5ZWQgb24gREcy
LCB0aGlzIHBhdGNoIGFkZHMgc3VwcG9ydCBmb3IgYSBmZW5jZQ0KPiB0aGF0IGNhbiBiZSB1c2Vk
IHRvIHdhaXQgZm9yIGxvYWQgY29tcGxldGlvbi4gTm8gd2FpdGVycyBhcmUgYWRkZWQgaW4gdGhp
cw0KPiBwYXRjaCAodGhleSdyZSBjb21pbmcgdXAgaW4gdGhlIG5leHQgb25lKSwgdG8ga2VlcCB0
aGUgZm9jdXMgb2YgdGhlDQo+IHBhdGNoIG9uIHRoZSB0cmFja2luZyBsb2dpYy4NCj4gDQo+IFRo
ZSBmdWxsIEh1QyBsb2FkaW5nIGZsb3cgb24gYm9vdCBERzIgaXMgYXMgZm9sbG93czoNCj4gMSkg
aTkxNSBleHBvcnRzIHRoZSBHU0MgYXMgYW4gYXV4IGRldmljZTsNCj4gMikgdGhlIG1laS1nc2Mg
ZHJpdmVyIGlzIGxvYWRlZCBvbiB0aGUgYXV4IGRldmljZTsNCj4gMykgdGhlIG1laS1weHAgY29t
cG9uZW50IGlzIGxvYWRlZDsNCj4gNCkgbWVpLXB4cCBjYWxscyBiYWNrIGludG8gaTkxNSBhbmQg
d2UgbG9hZCB0aGUgSHVDLg0KPiANCj4gQmV0d2VlbiBzdGVwcyAxIGFuZCAyIHRoZXJlIGNhbiBi
ZSBzZXZlcmFsIHNlY29uZHMgb2YgZ2FwLCBtYWlubHkgZHVlIHRvDQo+IHRoZSBrZXJuZWwgZG9p
bmcgb3RoZXIgd29yayBkdXJpbmcgdGhlIGJvb3QuDQo+IFRoZSByZXN1bWUgZmxvdyBpcyBzbGln
aHRseSBkaWZmZXJlbnQsIGJlY2F1c2Ugd2UgZG9uJ3QgbmVlZCB0bw0KPiByZS1leHBvc2Ugb3Ig
cmUtcHJvYmUgdGhlIGF1eCBkZXZpY2UsIHNvIHdlIGdvIGRpcmVjdGx5IHRvIHN0ZXAgMyBvbmNl
DQo+IGk5MTUgYW5kIG1laS1nc2MgaGF2ZSBjb21wbGV0ZWQgdGhlaXIgcmVzdW1lIGZsb3cuDQo+
IA0KPiBIZXJlJ3MgYW4gZXhhbXBsZSBvZiB0aGUgYm9vdCB0aW1pbmcsIGNhcHR1cmVkIHdpdGgg
c29tZSBsb2dzIGFkZGVkIHRvDQo+IGk5MTU6DQo+IA0KPiBbICAgMTcuOTA4MzA3XSBbZHJtXSBh
ZGRpbmcgR1NDIGRldmljZQ0KPiBbICAgMTcuOTE1NzE3XSBbZHJtXSBpOTE1IHByb2JlIGRvbmUN
Cj4gWyAgIDIyLjI4MjkxN10gW2RybV0gbWVpLWdzYyBib3VuZA0KPiBbICAgMjIuOTM4MTUzXSBb
ZHJtXSBIdUMgYXV0aGVudGljYXRlZA0KPiANCj4gQWxzbyB0byBub3RlIGlzIHRoYXQgaWYgc29t
ZXRoaW5nIGdvZXMgd3JvbmcgZHVyaW5nIEdTQyBIVyBpbml0IHRoZQ0KPiBtZWktZ3NjIGRyaXZl
ciB3aWxsIHN0aWxsIGJpbmQsIGJ1dCBzdGVwcyAzIGFuZCA0IHdpbGwgbm90IGhhcHBlbi4NCj4g
DQo+IFRoZSBzdGF0dXMgdHJhY2tpbmcgaXMgZG9uZSBieSByZWdpc3RlcmluZyBhIGJ1c19ub3Rp
ZmllciB0byByZWNlaXZlIGENCj4gY2FsbGJhY2sgd2hlbiB0aGUgbWVpLWdzYyBkcml2ZXIgYmlu
ZHMsIHdpdGggYSBsYXJnZSBlbm91Z2ggdGltZW91dCB0bw0KPiBhY2NvdW50IGZvciBkZWxheXMu
IE9uY2UgbWVpLWdzYyBpcyBib3VuZCwgd2Ugc3dpdGNoIHRvIGEgc21hbGxlcg0KPiB0aW1lb3V0
IHRvIHdhaXQgZm9yIHRoZSBtZWktcHhwIGNvbXBvbmVudCB0byBsb2FkLg0KPiBUaGUgZmVuY2Ug
aXMgc2lnbmFsbGVkIG9uIEh1QyBsb2FkIGNvbXBsZXRlIG9yIGlmIGFueXRoaW5nIGdvZXMgd3Jv
bmcgaW4NCj4gYW55IG9mIHRoZSB0cmFja2luZyBzdGVwcy4gVGltZW91dCBhcmUgZW5mb3JjZWQg
dmlhIGhydGltZXIgY2FsbGJhY2tzLg0KPiANCj4gdjI6IGZpeCBpbmNsdWRlcyAoSmFuaSkNCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2
aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4gI3YxDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3NjLmMgICAgfCAgMjIgKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF9odWMuYyB8IDE5OSArKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuaCB8ICAyMyArKysNCj4gIDMgZmls
ZXMgY2hhbmdlZCwgMjQxIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3NjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9nc2MuYw0KPiBpbmRleCA3YWY2ZGIzMTk0ZGQuLmY1NDRmNzA0
MDFmOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3NjLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3NjLmMNCj4gQEAgLTE0Miw4
ICsxNDIsMTQgQEAgc3RhdGljIHZvaWQgZ3NjX2Rlc3Ryb3lfb25lKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LA0KPiAgCXN0cnVjdCBpbnRlbF9nc2NfaW50ZiAqaW50ZiA9ICZnc2MtPmlu
dGZbaW50Zl9pZF07DQo+ICANCj4gIAlpZiAoaW50Zi0+YWRldikgew0KPiAtCQlhdXhpbGlhcnlf
ZGV2aWNlX2RlbGV0ZSgmaW50Zi0+YWRldi0+YXV4X2Rldik7DQo+IC0JCWF1eGlsaWFyeV9kZXZp
Y2VfdW5pbml0KCZpbnRmLT5hZGV2LT5hdXhfZGV2KTsNCj4gKwkJc3RydWN0IGF1eGlsaWFyeV9k
ZXZpY2UgKmF1eF9kZXYgPSAmaW50Zi0+YWRldi0+YXV4X2RldjsNCj4gKw0KPiArCQlpZiAoaW50
Zl9pZCA9PSAwKQ0KPiArCQkJaW50ZWxfaHVjX3VucmVnaXN0ZXJfZ3NjX25vdGlmaWVyKCZnc2Nf
dG9fZ3QoZ3NjKS0+dWMuaHVjLA0KPiArCQkJCQkJCSAgYXV4X2Rldi0+ZGV2LmJ1cyk7DQo+ICsN
Cj4gKwkJYXV4aWxpYXJ5X2RldmljZV9kZWxldGUoYXV4X2Rldik7DQo+ICsJCWF1eGlsaWFyeV9k
ZXZpY2VfdW5pbml0KGF1eF9kZXYpOw0KPiAgCQlpbnRmLT5hZGV2ID0gTlVMTDsNCj4gIAl9DQo+
ICANCj4gQEAgLTI0MiwxNCArMjQ4LDI0IEBAIHN0YXRpYyB2b2lkIGdzY19pbml0X29uZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGludGVsX2dzYyAqZ3NjLA0KPiAgCQln
b3RvIGZhaWw7DQo+ICAJfQ0KPiAgDQo+ICsJaW50Zi0+YWRldiA9IGFkZXY7IC8qIG5lZWRlZCBi
eSB0aGUgbm90aWZpZXIgKi8NCj4gKw0KPiArCWlmIChpbnRmX2lkID09IDApDQo+ICsJCWludGVs
X2h1Y19yZWdpc3Rlcl9nc2Nfbm90aWZpZXIoJmdzY190b19ndChnc2MpLT51Yy5odWMsDQo+ICsJ
CQkJCQlhdXhfZGV2LT5kZXYuYnVzKTsNCj4gKw0KPiAgCXJldCA9IGF1eGlsaWFyeV9kZXZpY2Vf
YWRkKGF1eF9kZXYpOw0KPiAgCWlmIChyZXQgPCAwKSB7DQo+ICAJCWRybV9lcnIoJmk5MTUtPmRy
bSwgImdzYyBhdXggYWRkIGZhaWxlZCAlZFxuIiwgcmV0KTsNCj4gKwkJaWYgKGludGZfaWQgPT0g
MCkNCj4gKwkJCWludGVsX2h1Y191bnJlZ2lzdGVyX2dzY19ub3RpZmllcigmZ3NjX3RvX2d0KGdz
YyktPnVjLmh1YywNCj4gKwkJCQkJCQkgIGF1eF9kZXYtPmRldi5idXMpOw0KPiArCQlpbnRmLT5h
ZGV2ID0gTlVMTDsNCj4gKw0KPiAgCQkvKiBhZGV2IHdpbGwgYmUgZnJlZWQgd2l0aCB0aGUgcHV0
X2RldmljZSgpIGFuZCAucmVsZWFzZSBzZXF1ZW5jZSAqLw0KPiAgCQlhdXhpbGlhcnlfZGV2aWNl
X3VuaW5pdChhdXhfZGV2KTsNCj4gIAkJZ290byBmYWlsOw0KPiAgCX0NCj4gLQlpbnRmLT5hZGV2
ID0gYWRldjsNCj4gIA0KPiAgCXJldHVybjsNCj4gIGZhaWw6DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2h1Yy5jDQo+IGluZGV4IGYwMTg4OTMxZDhlNC4uMTNkOTNlNjk3NjZmIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYw0KPiBAQCAtMTAsNiAr
MTAsOSBAQA0KPiAgI2luY2x1ZGUgImludGVsX2h1Yy5oIg0KPiAgI2luY2x1ZGUgImk5MTVfZHJ2
LmgiDQo+ICANCj4gKyNpbmNsdWRlIDxsaW51eC9kZXZpY2UvYnVzLmg+DQo+ICsjaW5jbHVkZSA8
bGludXgvbWVpX2F1eC5oPg0KPiArDQo+ICAvKioNCj4gICAqIERPQzogSHVDDQo+ICAgKg0KPiBA
QCAtNDIsNiArNDUsMTY0IEBADQo+ICAgKiBIdUMtc3BlY2lmaWMgY29tbWFuZHMuDQo+ICAgKi8N
Cj4gIA0KPiArLyoNCj4gKyAqIE1FSS1HU0MgbG9hZCBpcyBhbiBhc3luYyBwcm9jZXNzLiBUaGUg
cHJvYmluZyBvZiB0aGUgZXhwb3NlZCBhdXggZGV2aWNlDQo+ICsgKiAoc2VlIGludGVsX2dzYy5j
KSB1c3VhbGx5IGhhcHBlbnMgYSBmZXcgc2Vjb25kcyBhZnRlciBpOTE1IHByb2JlLCBkZXBlbmRp
bmcNCj4gKyAqIG9uIHdoZW4gdGhlIGtlcm5lbCBzY2hlZHVsZXMgaXQuIFVubGVzcyBzb21ldGhp
bmcgZ29lcyB0ZXJyaWJseSB3cm9uZywgd2UncmUNCj4gKyAqIGd1YXJhbnRlZWQgZm9yIHRoaXMg
dG8gaGFwcGVuIGR1cmluZyBib290LCBzbyB0aGUgYmlnIHRpbWVvdXQgaXMgYSBzYWZldHkgbmV0
DQo+ICsgKiB0aGF0IHdlIG5ldmVyIGV4cGVjdCB0byBuZWVkLg0KPiArICogTUVJLVBYUCArIEh1
QyBsb2FkIHVzdWFsbHkgdGFrZXMgfjMwMG1zLCBidXQgaWYgdGhlIEdTQyBuZWVkcyB0byBiZSBy
ZXN1bWVkDQo+ICsgKiBhbmQvb3IgcmVzZXQsIHRoaXMgY2FuIHRha2UgbG9uZ2VyLg0KPiArICov
DQo+ICsjZGVmaW5lIEdTQ19JTklUX1RJTUVPVVRfTVMgMTAwMDANCj4gKyNkZWZpbmUgUFhQX0lO
SVRfVElNRU9VVF9NUyAyMDAwDQo+ICsNCj4gK3N0YXRpYyBpbnQgc3dfZmVuY2VfZHVtbXlfbm90
aWZ5KHN0cnVjdCBpOTE1X3N3X2ZlbmNlICpzZiwNCj4gKwkJCQkgZW51bSBpOTE1X3N3X2ZlbmNl
X25vdGlmeSBzdGF0ZSkNCj4gK3sNCj4gKwlyZXR1cm4gTk9USUZZX0RPTkU7DQo+ICt9DQo+ICsN
Cj4gK3N0YXRpYyB2b2lkIF9fZGVsYXllZF9odWNfbG9hZF9jb21wbGV0ZShzdHJ1Y3QgaW50ZWxf
aHVjICpodWMpDQo+ICt7DQo+ICsJaWYgKCFpOTE1X3N3X2ZlbmNlX2RvbmUoJmh1Yy0+ZGVsYXll
ZF9sb2FkLmZlbmNlKSkNCj4gKwkJaTkxNV9zd19mZW5jZV9jb21wbGV0ZSgmaHVjLT5kZWxheWVk
X2xvYWQuZmVuY2UpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBkZWxheWVkX2h1Y19sb2Fk
X2NvbXBsZXRlKHN0cnVjdCBpbnRlbF9odWMgKmh1YykNCj4gK3sNCj4gKwlocnRpbWVyX2NhbmNl
bCgmaHVjLT5kZWxheWVkX2xvYWQudGltZXIpOw0KPiArCV9fZGVsYXllZF9odWNfbG9hZF9jb21w
bGV0ZShodWMpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBfX2dzY19pbml0X2Vycm9yKHN0
cnVjdCBpbnRlbF9odWMgKmh1YykNCj4gK3sNCj4gKwlodWMtPmRlbGF5ZWRfbG9hZC5zdGF0dXMg
PSBJTlRFTF9IVUNfREVMQVlFRF9MT0FEX0VSUk9SOw0KPiArCV9fZGVsYXllZF9odWNfbG9hZF9j
b21wbGV0ZShodWMpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBnc2NfaW5pdF9lcnJvcihz
dHJ1Y3QgaW50ZWxfaHVjICpodWMpDQo+ICt7DQo+ICsJaHJ0aW1lcl9jYW5jZWwoJmh1Yy0+ZGVs
YXllZF9sb2FkLnRpbWVyKTsNCj4gKwlfX2dzY19pbml0X2Vycm9yKGh1Yyk7DQo+ICt9DQo+ICsN
Cj4gK3N0YXRpYyB2b2lkIGdzY19pbml0X2RvbmUoc3RydWN0IGludGVsX2h1YyAqaHVjKQ0KPiAr
ew0KPiArCWhydGltZXJfY2FuY2VsKCZodWMtPmRlbGF5ZWRfbG9hZC50aW1lcik7DQo+ICsNCj4g
KwkvKiBNRUktR1NDIGluaXQgaXMgZG9uZSwgbm93IHdlIHdhaXQgZm9yIE1FSS1QWFAgdG8gYmlu
ZCAqLw0KPiArCWh1Yy0+ZGVsYXllZF9sb2FkLnN0YXR1cyA9IElOVEVMX0hVQ19XQUlUSU5HX09O
X1BYUDsNCj4gKwlpZiAoIWk5MTVfc3dfZmVuY2VfZG9uZSgmaHVjLT5kZWxheWVkX2xvYWQuZmVu
Y2UpKQ0KPiArCQlocnRpbWVyX3N0YXJ0KCZodWMtPmRlbGF5ZWRfbG9hZC50aW1lciwNCj4gKwkJ
CSAgICAgIG1zX3RvX2t0aW1lKFBYUF9JTklUX1RJTUVPVVRfTVMpLA0KPiArCQkJICAgICAgSFJU
SU1FUl9NT0RFX1JFTCk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBlbnVtIGhydGltZXJfcmVzdGFy
dCBodWNfZGVsYXllZF9sb2FkX3RpbWVyX2NhbGxiYWNrKHN0cnVjdCBocnRpbWVyICpocnRpbWVy
KQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9odWMgKmh1YyA9IGNvbnRhaW5lcl9vZihocnRpbWVy
LCBzdHJ1Y3QgaW50ZWxfaHVjLCBkZWxheWVkX2xvYWQudGltZXIpOw0KPiArDQo+ICsJaWYgKCFp
bnRlbF9odWNfaXNfYXV0aGVudGljYXRlZChodWMpKSB7DQo+ICsJCWRybV9lcnIoJmh1Y190b19n
dChodWMpLT5pOTE1LT5kcm0sDQo+ICsJCQkidGltZWQgb3V0IHdhaXRpbmcgZm9yIEdTQyBpbml0
IHRvIGxvYWQgSHVDXG4iKTsNCj4gKw0KPiArCQlfX2dzY19pbml0X2Vycm9yKGh1Yyk7DQo+ICsJ
fQ0KPiArDQo+ICsJcmV0dXJuIEhSVElNRVJfTk9SRVNUQVJUOw0KPiArfQ0KPiArDQo+ICtzdGF0
aWMgdm9pZCBodWNfZGVsYXllZF9sb2FkX3N0YXJ0KHN0cnVjdCBpbnRlbF9odWMgKmh1YykNCj4g
K3sNCj4gKwlrdGltZV90IGRlbGF5Ow0KPiArDQo+ICsJR0VNX0JVR19PTihpbnRlbF9odWNfaXNf
YXV0aGVudGljYXRlZChodWMpKTsNCj4gKw0KPiArCS8qDQo+ICsJICogT24gcmVzdW1lIHdlIGRv
bid0IGhhdmUgdG8gd2FpdCBmb3IgTUVJLUdTQyB0byBiZSByZS1wcm9iZWQsIGJ1dCB3ZQ0KPiAr
CSAqIGRvIG5lZWQgdG8gd2FpdCBmb3IgTUVJLVBYUCB0byByZXNldCAmIHJlLWJpbmQNCj4gKwkg
Ki8NCj4gKwlzd2l0Y2ggKGh1Yy0+ZGVsYXllZF9sb2FkLnN0YXR1cykgew0KPiArCWNhc2UgSU5U
RUxfSFVDX1dBSVRJTkdfT05fR1NDOg0KPiArCQlkZWxheSA9IG1zX3RvX2t0aW1lKEdTQ19JTklU
X1RJTUVPVVRfTVMpOw0KPiArCQlicmVhazsNCj4gKwljYXNlIElOVEVMX0hVQ19XQUlUSU5HX09O
X1BYUDoNCj4gKwkJZGVsYXkgPSBtc190b19rdGltZShQWFBfSU5JVF9USU1FT1VUX01TKTsNCj4g
KwkJYnJlYWs7DQo+ICsJZGVmYXVsdDoNCj4gKwkJZ3NjX2luaXRfZXJyb3IoaHVjKTsNCj4gKwkJ
cmV0dXJuOw0KPiArCX0NCj4gKw0KPiArCS8qDQo+ICsJICogVGhpcyBmZW5jZSBpcyBhbHdheXMg
Y29tcGxldGUgdW5sZXNzIHdlJ3JlIHdhaXRpbmcgZm9yIHRoZQ0KPiArCSAqIEdTQyBkZXZpY2Ug
dG8gY29tZSB1cCB0byBsb2FkIHRoZSBIdUMuIFdlIGFybSB0aGUgZmVuY2UgaGVyZQ0KPiArCSAq
IGFuZCBjb21wbGV0ZSBpdCB3aGVuIHdlIGNvbmZpcm0gdGhhdCB0aGUgSHVDIGlzIGxvYWRlZCBm
cm9tDQo+ICsJICogdGhlIFBYUCBiaW5kIGNhbGxiYWNrLg0KPiArCSAqLw0KPiArCUdFTV9CVUdf
T04oIWk5MTVfc3dfZmVuY2VfZG9uZSgmaHVjLT5kZWxheWVkX2xvYWQuZmVuY2UpKTsNCj4gKwlp
OTE1X3N3X2ZlbmNlX2ZpbmkoJmh1Yy0+ZGVsYXllZF9sb2FkLmZlbmNlKTsNCj4gKwlpOTE1X3N3
X2ZlbmNlX3JlaW5pdCgmaHVjLT5kZWxheWVkX2xvYWQuZmVuY2UpOw0KPiArCWk5MTVfc3dfZmVu
Y2VfYXdhaXQoJmh1Yy0+ZGVsYXllZF9sb2FkLmZlbmNlKTsNCj4gKwlpOTE1X3N3X2ZlbmNlX2Nv
bW1pdCgmaHVjLT5kZWxheWVkX2xvYWQuZmVuY2UpOw0KPiArDQo+ICsJaHJ0aW1lcl9zdGFydCgm
aHVjLT5kZWxheWVkX2xvYWQudGltZXIsIGRlbGF5LCBIUlRJTUVSX01PREVfUkVMKTsNCj4gK30N
Cj4gKw0KPiArc3RhdGljIGludCBnc2Nfbm90aWZpZXIoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpu
YiwgdW5zaWduZWQgbG9uZyBhY3Rpb24sIHZvaWQgKmRhdGEpDQo+ICt7DQo+ICsJc3RydWN0IGRl
dmljZSAqZGV2ID0gZGF0YTsNCj4gKwlzdHJ1Y3QgaW50ZWxfaHVjICpodWMgPSBjb250YWluZXJf
b2YobmIsIHN0cnVjdCBpbnRlbF9odWMsIGRlbGF5ZWRfbG9hZC5uYik7DQo+ICsJc3RydWN0IGlu
dGVsX2dzY19pbnRmICppbnRmID0gJmh1Y190b19ndChodWMpLT5nc2MuaW50ZlswXTsNCj4gKw0K
PiArCWlmICghaW50Zi0+YWRldiB8fCAoJmludGYtPmFkZXYtPmF1eF9kZXYuZGV2ICE9IGRldikp
DQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICsJc3dpdGNoIChhY3Rpb24pIHsNCj4gKwljYXNlIEJV
U19OT1RJRllfQk9VTkRfRFJJVkVSOiAvKiBtZWkgZHJpdmVyIGJvdW5kIHRvIGF1eCBkZXZpY2Ug
Ki8NCj4gKwkJZ3NjX2luaXRfZG9uZShodWMpOw0KPiArCQlicmVhazsNCj4gKw0KPiArCWNhc2Ug
QlVTX05PVElGWV9EUklWRVJfTk9UX0JPVU5EOiAvKiBtZWkgZHJpdmVyIGZhaWxzIHRvIGJlIGJv
dW5kICovDQo+ICsJY2FzZSBCVVNfTk9USUZZX1VOQklORF9EUklWRVI6IC8qIG1laSBkcml2ZXIg
YWJvdXQgdG8gYmUgdW5ib3VuZCAqLw0KPiArCQlkcm1faW5mbygmaHVjX3RvX2d0KGh1YyktPmk5
MTUtPmRybSwNCj4gKwkJCSAibWVpIGRyaXZlciBub3QgYm91bmQsIGRpc2FibGluZyBIdUMgbG9h
ZFxuIik7DQo+ICsJCWdzY19pbml0X2Vycm9yKGh1Yyk7DQo+ICsJCWJyZWFrOw0KPiArCX0NCj4g
Kw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICt2b2lkIGludGVsX2h1Y19yZWdpc3Rlcl9n
c2Nfbm90aWZpZXIoc3RydWN0IGludGVsX2h1YyAqaHVjLCBzdHJ1Y3QgYnVzX3R5cGUgKmJ1cykN
Cj4gK3sNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJaWYgKCFpbnRlbF9odWNfaXNfbG9hZGVkX2J5
X2dzYyhodWMpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlodWMtPmRlbGF5ZWRfbG9hZC5uYi5u
b3RpZmllcl9jYWxsID0gZ3NjX25vdGlmaWVyOw0KPiArCXJldCA9IGJ1c19yZWdpc3Rlcl9ub3Rp
ZmllcihidXMsICZodWMtPmRlbGF5ZWRfbG9hZC5uYik7DQo+ICsJaWYgKHJldCkgew0KPiArCQlk
cm1fZXJyKCZodWNfdG9fZ3QoaHVjKS0+aTkxNS0+ZHJtLA0KPiArCQkJImZhaWxlZCB0byByZWdp
c3RlciBHU0Mgbm90aWZpZXJcbiIpOw0KPiArCQlodWMtPmRlbGF5ZWRfbG9hZC5uYi5ub3RpZmll
cl9jYWxsID0gTlVMTDsNCj4gKwkJZ3NjX2luaXRfZXJyb3IoaHVjKTsNCj4gKwl9DQo+ICt9DQo+
ICsNCj4gK3ZvaWQgaW50ZWxfaHVjX3VucmVnaXN0ZXJfZ3NjX25vdGlmaWVyKHN0cnVjdCBpbnRl
bF9odWMgKmh1Yywgc3RydWN0IGJ1c190eXBlICpidXMpDQo+ICt7DQo+ICsJaWYgKCFodWMtPmRl
bGF5ZWRfbG9hZC5uYi5ub3RpZmllcl9jYWxsKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlkZWxh
eWVkX2h1Y19sb2FkX2NvbXBsZXRlKGh1Yyk7DQo+ICsNCj4gKwlidXNfdW5yZWdpc3Rlcl9ub3Rp
ZmllcihidXMsICZodWMtPmRlbGF5ZWRfbG9hZC5uYik7DQo+ICsJaHVjLT5kZWxheWVkX2xvYWQu
bmIubm90aWZpZXJfY2FsbCA9IE5VTEw7DQo+ICt9DQo+ICsNCj4gIHZvaWQgaW50ZWxfaHVjX2lu
aXRfZWFybHkoc3RydWN0IGludGVsX2h1YyAqaHVjKQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gaHVjX3RvX2d0KGh1YyktPmk5MTU7DQo+IEBAIC01Nyw2ICsyMTgs
MTcgQEAgdm9pZCBpbnRlbF9odWNfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfaHVjICpodWMpDQo+
ICAJCWh1Yy0+c3RhdHVzLm1hc2sgPSBIVUNfRldfVkVSSUZJRUQ7DQo+ICAJCWh1Yy0+c3RhdHVz
LnZhbHVlID0gSFVDX0ZXX1ZFUklGSUVEOw0KPiAgCX0NCj4gKw0KPiArCS8qDQo+ICsJICogSW5p
dGlhbGl6ZSBmZW5jZSB0byBiZSBjb21wbGV0ZSBhcyB0aGlzIGlzIGV4cGVjdGVkIHRvIGJlIGNv
bXBsZXRlDQo+ICsJICogdW5sZXNzIHRoZXJlIGlzIGEgZGVsYXllZCBIdUMgcmVsb2FkIGluIHBy
b2dyZXNzLg0KPiArCSAqLw0KPiArCWk5MTVfc3dfZmVuY2VfaW5pdCgmaHVjLT5kZWxheWVkX2xv
YWQuZmVuY2UsDQo+ICsJCQkgICBzd19mZW5jZV9kdW1teV9ub3RpZnkpOw0KPiArCWk5MTVfc3df
ZmVuY2VfY29tbWl0KCZodWMtPmRlbGF5ZWRfbG9hZC5mZW5jZSk7DQo+ICsNCj4gKwlocnRpbWVy
X2luaXQoJmh1Yy0+ZGVsYXllZF9sb2FkLnRpbWVyLCBDTE9DS19NT05PVE9OSUMsIEhSVElNRVJf
TU9ERV9SRUwpOw0KPiArCWh1Yy0+ZGVsYXllZF9sb2FkLnRpbWVyLmZ1bmN0aW9uID0gaHVjX2Rl
bGF5ZWRfbG9hZF90aW1lcl9jYWxsYmFjazsNCj4gIH0NCj4gIA0KPiAgI2RlZmluZSBIVUNfTE9B
RF9NT0RFX1NUUklORyh4KSAoeCA/ICJHU0MiIDogImxlZ2FjeSIpDQo+IEBAIC0xMjIsOSArMjk0
LDI1IEBAIHZvaWQgaW50ZWxfaHVjX2Zpbmkoc3RydWN0IGludGVsX2h1YyAqaHVjKQ0KPiAgCWlm
ICghaW50ZWxfdWNfZndfaXNfbG9hZGFibGUoJmh1Yy0+ZncpKQ0KPiAgCQlyZXR1cm47DQo+ICAN
Cj4gKwlkZWxheWVkX2h1Y19sb2FkX2NvbXBsZXRlKGh1Yyk7DQo+ICsNCj4gKwlpOTE1X3N3X2Zl
bmNlX2ZpbmkoJmh1Yy0+ZGVsYXllZF9sb2FkLmZlbmNlKTsNCj4gIAlpbnRlbF91Y19md19maW5p
KCZodWMtPmZ3KTsNCj4gIH0NCj4gIA0KPiArdm9pZCBpbnRlbF9odWNfc3VzcGVuZChzdHJ1Y3Qg
aW50ZWxfaHVjICpodWMpDQo+ICt7DQo+ICsJaWYgKCFpbnRlbF91Y19md19pc19sb2FkYWJsZSgm
aHVjLT5mdykpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCS8qDQo+ICsJICogaW4gdGhlIHVubGlr
ZWx5IGNhc2UgdGhhdCB3ZSdyZSBzdXNwZW5kaW5nIGJlZm9yZSB0aGUgR1NDIGhhcw0KPiArCSAq
IGNvbXBsZXRlZCBpdHMgbG9hZGluZyBzZXF1ZW5jZSwganVzdCBzdG9wIHdhaXRpbmcuIFdlJ2xs
IHJlc3RhcnQNCj4gKwkgKiBvbiByZXN1bWUuDQo+ICsJICovDQo+ICsJZGVsYXllZF9odWNfbG9h
ZF9jb21wbGV0ZShodWMpOw0KPiArfQ0KPiArDQo+ICBpbnQgaW50ZWxfaHVjX3dhaXRfZm9yX2F1
dGhfY29tcGxldGUoc3RydWN0IGludGVsX2h1YyAqaHVjKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRl
bF9ndCAqZ3QgPSBodWNfdG9fZ3QoaHVjKTsNCj4gQEAgLTEzNiw2ICszMjQsOSBAQCBpbnQgaW50
ZWxfaHVjX3dhaXRfZm9yX2F1dGhfY29tcGxldGUoc3RydWN0IGludGVsX2h1YyAqaHVjKQ0KPiAg
CQkJCQlodWMtPnN0YXR1cy52YWx1ZSwNCj4gIAkJCQkJMiwgNTAsIE5VTEwpOw0KPiAgDQo+ICsJ
LyogbWFyayB0aGUgbG9hZCBwcm9jZXNzIGFzIGNvbXBsZXRlIGV2ZW4gaWYgdGhlIHdhaXQgZmFp
bGVkICovDQo+ICsJZGVsYXllZF9odWNfbG9hZF9jb21wbGV0ZShodWMpOw0KPiArDQo+ICAJaWYg
KHJldCkgew0KPiAgCQlkcm1fZXJyKCZndC0+aTkxNS0+ZHJtLCAiSHVDOiBGaXJtd2FyZSBub3Qg
dmVyaWZpZWQgJWRcbiIsIHJldCk7DQo+ICAJCWludGVsX3VjX2Z3X2NoYW5nZV9zdGF0dXMoJmh1
Yy0+ZncsIElOVEVMX1VDX0ZJUk1XQVJFX0xPQURfRkFJTCk7DQo+IEBAIC0yMzksNiArNDMwLDEy
IEBAIGludCBpbnRlbF9odWNfY2hlY2tfc3RhdHVzKHN0cnVjdCBpbnRlbF9odWMgKmh1YykNCj4g
IAlyZXR1cm4gaW50ZWxfaHVjX2lzX2F1dGhlbnRpY2F0ZWQoaHVjKTsNCj4gIH0NCj4gIA0KPiAr
c3RhdGljIGJvb2wgaHVjX2hhc19kZWxheWVkX2xvYWQoc3RydWN0IGludGVsX2h1YyAqaHVjKQ0K
PiArew0KPiArCXJldHVybiBpbnRlbF9odWNfaXNfbG9hZGVkX2J5X2dzYyhodWMpICYmDQo+ICsJ
ICAgICAgIChodWMtPmRlbGF5ZWRfbG9hZC5zdGF0dXMgIT0gSU5URUxfSFVDX0RFTEFZRURfTE9B
RF9FUlJPUik7DQo+ICt9DQo+ICsNCj4gIHZvaWQgaW50ZWxfaHVjX3VwZGF0ZV9hdXRoX3N0YXR1
cyhzdHJ1Y3QgaW50ZWxfaHVjICpodWMpDQo+ICB7DQo+ICAJaWYgKCFpbnRlbF91Y19md19pc19s
b2FkYWJsZSgmaHVjLT5mdykpDQo+IEBAIC0yNDcsNiArNDQ0LDggQEAgdm9pZCBpbnRlbF9odWNf
dXBkYXRlX2F1dGhfc3RhdHVzKHN0cnVjdCBpbnRlbF9odWMgKmh1YykNCj4gIAlpZiAoaW50ZWxf
aHVjX2lzX2F1dGhlbnRpY2F0ZWQoaHVjKSkNCj4gIAkJaW50ZWxfdWNfZndfY2hhbmdlX3N0YXR1
cygmaHVjLT5mdywNCj4gIAkJCQkJICBJTlRFTF9VQ19GSVJNV0FSRV9SVU5OSU5HKTsNCj4gKwll
bHNlIGlmIChodWNfaGFzX2RlbGF5ZWRfbG9hZChodWMpKQ0KPiArCQlodWNfZGVsYXllZF9sb2Fk
X3N0YXJ0KGh1Yyk7DQo+ICB9DQo+ICANCj4gIC8qKg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9odWMuaA0KPiBpbmRleCA1MWY5ZDk2YTNjYTMuLjkxNWQyODFjMWM3MiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmgNCj4gQEAgLTcsOSArNywyMSBA
QA0KPiAgI2RlZmluZSBfSU5URUxfSFVDX0hfDQo+ICANCj4gICNpbmNsdWRlICJpOTE1X3JlZ19k
ZWZzLmgiDQo+ICsjaW5jbHVkZSAiaTkxNV9zd19mZW5jZS5oIg0KPiAgI2luY2x1ZGUgImludGVs
X3VjX2Z3LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfaHVjX2Z3LmgiDQo+ICANCj4gKyNpbmNsdWRl
IDxsaW51eC9ub3RpZmllci5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L2hydGltZXIuaD4NCj4gKw0K
PiArc3RydWN0IGJ1c190eXBlOw0KPiArDQo+ICtlbnVtIGludGVsX2h1Y19kZWxheWVkX2xvYWRf
c3RhdHVzIHsNCj4gKwlJTlRFTF9IVUNfV0FJVElOR19PTl9HU0MgPSAwLA0KPiArCUlOVEVMX0hV
Q19XQUlUSU5HX09OX1BYUCwNCj4gKwlJTlRFTF9IVUNfREVMQVlFRF9MT0FEX0VSUk9SLA0KPiAr
fTsNCj4gKw0KPiAgc3RydWN0IGludGVsX2h1YyB7DQo+ICAJLyogR2VuZXJpYyB1QyBmaXJtd2Fy
ZSBtYW5hZ2VtZW50ICovDQo+ICAJc3RydWN0IGludGVsX3VjX2Z3IGZ3Ow0KPiBAQCAtMjAsMTcg
KzMyLDI4IEBAIHN0cnVjdCBpbnRlbF9odWMgew0KPiAgCQl1MzIgbWFzazsNCj4gIAkJdTMyIHZh
bHVlOw0KPiAgCX0gc3RhdHVzOw0KPiArDQo+ICsJc3RydWN0IHsNCj4gKwkJc3RydWN0IGk5MTVf
c3dfZmVuY2UgZmVuY2U7DQo+ICsJCXN0cnVjdCBocnRpbWVyIHRpbWVyOw0KPiArCQlzdHJ1Y3Qg
bm90aWZpZXJfYmxvY2sgbmI7DQo+ICsJCWVudW0gaW50ZWxfaHVjX2RlbGF5ZWRfbG9hZF9zdGF0
dXMgc3RhdHVzOw0KPiArCX0gZGVsYXllZF9sb2FkOw0KPiAgfTsNCj4gIA0KPiAgdm9pZCBpbnRl
bF9odWNfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfaHVjICpodWMpOw0KPiAgaW50IGludGVsX2h1
Y19pbml0KHN0cnVjdCBpbnRlbF9odWMgKmh1Yyk7DQo+ICB2b2lkIGludGVsX2h1Y19maW5pKHN0
cnVjdCBpbnRlbF9odWMgKmh1Yyk7DQo+ICt2b2lkIGludGVsX2h1Y19zdXNwZW5kKHN0cnVjdCBp
bnRlbF9odWMgKmh1Yyk7DQo+ICBpbnQgaW50ZWxfaHVjX2F1dGgoc3RydWN0IGludGVsX2h1YyAq
aHVjKTsNCj4gIGludCBpbnRlbF9odWNfd2FpdF9mb3JfYXV0aF9jb21wbGV0ZShzdHJ1Y3QgaW50
ZWxfaHVjICpodWMpOw0KPiAgaW50IGludGVsX2h1Y19jaGVja19zdGF0dXMoc3RydWN0IGludGVs
X2h1YyAqaHVjKTsNCj4gIHZvaWQgaW50ZWxfaHVjX3VwZGF0ZV9hdXRoX3N0YXR1cyhzdHJ1Y3Qg
aW50ZWxfaHVjICpodWMpOw0KPiAgYm9vbCBpbnRlbF9odWNfaXNfYXV0aGVudGljYXRlZChzdHJ1
Y3QgaW50ZWxfaHVjICpodWMpOw0KPiAgDQo+ICt2b2lkIGludGVsX2h1Y19yZWdpc3Rlcl9nc2Nf
bm90aWZpZXIoc3RydWN0IGludGVsX2h1YyAqaHVjLCBzdHJ1Y3QgYnVzX3R5cGUgKmJ1cyk7DQo+
ICt2b2lkIGludGVsX2h1Y191bnJlZ2lzdGVyX2dzY19ub3RpZmllcihzdHJ1Y3QgaW50ZWxfaHVj
ICpodWMsIHN0cnVjdCBidXNfdHlwZSAqYnVzKTsNCj4gKw0KPiAgc3RhdGljIGlubGluZSBpbnQg
aW50ZWxfaHVjX3Nhbml0aXplKHN0cnVjdCBpbnRlbF9odWMgKmh1YykNCj4gIHsNCj4gIAlpbnRl
bF91Y19md19zYW5pdGl6ZSgmaHVjLT5mdyk7DQo+IC0tIA0KPiAyLjM3LjINCj4gDQoNCg==
