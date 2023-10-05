Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C43267B9C96
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 12:47:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EC1210E1E7;
	Thu,  5 Oct 2023 10:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AC610E1E7
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 10:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696502825; x=1728038825;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h+8GutZk9vAj1sAVcNFnrWSx9gOdQR29b2UTx1w1h6s=;
 b=d5QqDpAcPQCBlhhzKBSrT0eq6uLut9rkymM/AHBbsddxQuvhbKOkEq3H
 LjaoUUt4hs2wbPALMD6oj/RaLTU4bI+yhk10RCzBPJbwcODhg0HMiveyS
 gRR+4886zas6O+QvfOLq6JJnn0oxc4s+M9yDub/1tCZt9d0yIc25f2vLK
 JgEvuyQjmt6/7z8bcZt4o93vEX9dxeryuUS7/NQoxioDboton/8WDb2Yf
 bNMhsKzSTHr4WhmRY6pvYNYelFAFWYXm31ce3rSJVt09ZG3/Rdn1I2Rxa
 KeWWZq4VFnX/z7+GlLiemnqxVjuDlRlWM3nLm0EjdwJQXWlnNCY7Psq+L A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363746334"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="363746334"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 03:47:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="728409427"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="728409427"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 03:47:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 03:47:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 03:47:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 03:47:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 03:47:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NdaLsLOUhK6J+FGiC6gqWGUusISh6mjzz6vppLfeeZqmCbGFBUtNr9k+vX73RZ8ASWsN/8WvGdxiAXpkunZHnLMgy2B3gqGC1nyqztXsF4+9b6yLxQ85e6+kODYJrlNB//3bXE+G27AlydEhDuzqz2zMoFZBdKmw8u9YipHehiiHZGcgnVxQIvhYSOwH1SS6DDYHT6T3zxIh7Gv6P0K5dh0g6YyLtSsDO2N9F2U2181eY9FXcl2+CCtSvMZIHpUnbGJoXPUXizuK6CylNK8dIJY2hMMBEGMsOr3/FJlYrUBRgIAXZXPyDYghkP95vy4y4NTFsQtBrkN/t8NMHxLBuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h+8GutZk9vAj1sAVcNFnrWSx9gOdQR29b2UTx1w1h6s=;
 b=oCbk1Hf5XvgG8bF0Jp0YwTzBJGwKEky01gh0qC7Khz0l8+yHJb7ewVSa1L1r/PwJBOMVFZTKtnuoz6VR9uCpBijXpKSpcvr03RbfeLQsAbLR86MsF/hBtGaYD4BQNA6Vt/l1QoNh3yv0M8yrp7AEi5FK2SG9tFVSVaU/V3RWN421lRmqnv/1KOj49Vh2maBh4lsDmWQZhk8AQAW0AFUbgCXtjNB96H434J15/7pUdllkZIWVhu+WPIaI3gmyfX8zwQTDXG6tZeCvvV+jxuiuuLnGWWjSt5tpSgVyMIlaIjUmkumPHXjy8hKQGfoqLkxrcltHtBTMSurPcP1RyCgpHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB6932.namprd11.prod.outlook.com (2603:10b6:510:207::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.34; Thu, 5 Oct
 2023 10:47:00 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6813.017; Thu, 5 Oct 2023
 10:47:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/ddi: Fix i2c_adapter assignment
Thread-Index: AQHZ91d7tKKexFiC3UuFGnLSTwqrhLA68cEAgAAMrQCAAATUkA==
Date: Thu, 5 Oct 2023 10:47:00 +0000
Message-ID: <SN7PR11MB675007B0F362B990AB128D5EE3CAA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231005064257.570671-1-suraj.kandpal@intel.com>
 <ZR6E9jqTJzVWFwqi@intel.com> <87r0m9cqjr.fsf@intel.com>
In-Reply-To: <87r0m9cqjr.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB6932:EE_
x-ms-office365-filtering-correlation-id: 8182cb87-7d71-4e5e-b327-08dbc5906753
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iUloMqvF9VQizPwIn3GYLbhQEm24d5WNnty3U7kWfw1MNTuOO3RmZg8CqpveGJCL9fuJXmQeU8ZgKYa/JD8M5wvoyLn+aSibiDxX5IrvxQL0K/MsC7F/ysGJDZI4RSQhlerJliqwMan3rUNkrT1alRBxV+bBcYn3mP1YfmqI9xcQtcyYuD29GuOqbCWDsya2ZmCfFE5GLwXsxkciBaRMXkzWso60Jp4t3zq7yPGKfxIR5IrHWENFvEfkL8jcIdXsRA2rtI8rb1GdY9wdZYT3eZhjexrAHDmnTROtOG7v9HFYK4nfDS5QLENbaCL7/m6SajPkjsomTGr7fBFITpT3YIz+njTycutNKq6Nf1ja0TXkZweTkJ5Zjev/5HsBRJeOFHvarNYef8mp5qZCxHDovGjIEJDVq5gm0lubEEElXPx5Ul3ZLuh5kuK2acDp/Q5nk9JTs9xXM9lu1tunvx4uubrXIC4cACKGp0Yj3xF2Xy/QT3m8jnIevgEwgHwRdnvMPv3oyAHdXcCFSg+mRbusTTaCx0AULclNfOT37CfxglydutymzFd2H2neN+tRgScqK0jJyPIIOTQSKzdezW2PVQI7RiDOa5udp6P9asxFNzPEyGcDi8ShgUEM34q93Hi8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(136003)(39860400002)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(9686003)(6506007)(7696005)(71200400001)(55016003)(38070700005)(33656002)(82960400001)(86362001)(38100700002)(122000001)(26005)(2906002)(478600001)(83380400001)(4326008)(8676002)(52536014)(8936002)(316002)(41300700001)(5660300002)(110136005)(66946007)(64756008)(66574015)(66556008)(66476007)(66446008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RkZJVUEya0dkcVZkMm1GS3pkSWU1Nm4rY1lsS1NSTWF2TEJFME5PTU95MCtP?=
 =?utf-8?B?QVZUSjdkK0h4UElqYmluSEJoRjhVNFhjcGZGY1Z5RFp6QmFCMEd3TFg4MWp0?=
 =?utf-8?B?UzdIdFF4V3FRSkh2UVptWUxoYzR4WllOYlFydmNtUDhPcnp5eFhUV2lmTUp5?=
 =?utf-8?B?bDU0ckpidE5RZVpwZ0hBdGluYWRZUnZjTDdlVEIwRVlhczluQWJpbWJXOVlY?=
 =?utf-8?B?RjdBSjBkVjRaeTFycE81SkJuNk9kTkpIakdjeCtzOUpNY0svMmhuWGJqa1Zs?=
 =?utf-8?B?NkJJWjA4cTU0M0dQSmtXRGJGQkhOQ1kvWWNPL2dyUzQ1YVNXK3ZzdXNRdDl5?=
 =?utf-8?B?TUZmMjBzTEx2d1oyZXZFTkMrQS9wSzdwZjBueWVvaTZRaWZUN25sNDJjVmx5?=
 =?utf-8?B?WjhXellHVldKcEV1STJiRmo0Mjc3ckQ3TkwxNG1IamUva09zSnQ5dFhXb0p6?=
 =?utf-8?B?R0hBRmNTTGxHYXlpT2FuYURzWE9MYjlJVDFIdnY1SXcyUm5ZWXFWK1IrNktk?=
 =?utf-8?B?NEtOTXliQ0JKOHZYb1VFZmVRY3ZDSmtuVkMxWmYzeXNmdSs2cytVRmZBWGxm?=
 =?utf-8?B?R2FwaUN1WXYwRmNWcW9LaW5LT2VCeHFNTXpoaS96ZUt3VDJnVG5nK2dlS05Z?=
 =?utf-8?B?SE0vTitLUmVzNVpZbWhiVXZ3TzRNc0lVWnU1UUtTdXpVZ0YydElqL0RBemJD?=
 =?utf-8?B?elJhQVhEempHcDhjNGVzR1Faa3ZuTVpwem96ZjlRSE8rRE5kUjRjNHVyUHlw?=
 =?utf-8?B?ZTFJWTNlQ3Vua2I0bHVmSm1HalVtR0lQUUlKT2dOaldTVnp6UGpEQmZVU2Qx?=
 =?utf-8?B?NDFFTEpneGIzYWVQRldhNFhFT25iRHFFZHNoZlgwMllnQ2xWa2Nnd0cwQ1dK?=
 =?utf-8?B?dmJnSEVVcmhPZzNYUDdXanpkWGtLTnA1SmZRVk1aUUh5WXltQ0xhTlFpcThG?=
 =?utf-8?B?WnVrbTZjOEUyQ3YxZlZzN1NYK2ZPVE9TRTBaK2V0cVlsOTRVOGY4d2gyNTRL?=
 =?utf-8?B?YjMvMTNNeVBCSXR3d2NzcHpsRm9sM2lqVUxKdmVYcHAwdDh0eUs2eVIyOWh6?=
 =?utf-8?B?YzlPNGtlL2xSTFJ5Z0RQeW12eFBudkV3cVh4U2JiUUM5YmRMazdIMm9vVWM5?=
 =?utf-8?B?REo5cUE0RU9CZG9EZk03R0dpYVNBbFFJaHNiNXU3S1dTRHJ2dDcvb1V6cXRH?=
 =?utf-8?B?dG5nVVl2dCt4amNNakp6ODhnRlRXVTloWTNYc3VWeS9MVW5YQ1dUekpMdFlh?=
 =?utf-8?B?YnJOZi9xbmtFSlNRMS9FMFFXNFNTRjRTbVg3WFNXdDZmM3IySkhsaHpLdStn?=
 =?utf-8?B?RE5LaW9KWmk1S3QwVVRjY2h1NTFPSDhlT3RXQ0Z2TityZTdza1VxS1J6SEFX?=
 =?utf-8?B?WmdCemxMZHB2dVM3TmdOWStQZUVVTjk1WGNsby8yK1UrdjZ6ajZtbC9nSjdY?=
 =?utf-8?B?WHdrYXhxUktUK3NOV0trbS91czdwemlZbWFRMFZ0L0swU1hrRit1N2Q5bkFR?=
 =?utf-8?B?QnRya2dCMVFreVV6dnhqNFZRd1hDRmFvTGNnNkZQNVFzeFpkd3dpYkY2ZklV?=
 =?utf-8?B?alpvaTJ1WjVHcllkTUdqSVR5eUFrNmJwV2VSdHppK2U1aWhyYjdnaUFKOHp1?=
 =?utf-8?B?S2E2aFhVUWFpdDg2Mkp1a0JYOEpIOVBkMG9MRm1BTmxodXB2OHJiQkQyeHpM?=
 =?utf-8?B?QWltRUxCVmNsdUJFRjhpNnZ4YkVkZXdSdjFFOXpmUUFEWXRLRG0vRWNoaEt6?=
 =?utf-8?B?NlkzdWs3U2prREttNEUwVFhtQWRjTm53ejc3RGMwOU90OWlDRlhTWjZEdFdx?=
 =?utf-8?B?aWxEKzdkMnRsejVRTEVFYUhRUkptWDlUK0MzYkdsWVRBU2JOVGdieTZzbWth?=
 =?utf-8?B?d09xTVpZTHdEMHhmVGhXWms2ZjBZNC9aVzBRcXpqVWhmTHdSeWU3UHVVaDRu?=
 =?utf-8?B?OWtpTDJuS2VIM25nY1lTUGNhOE9MUHg3K1Vrc3JxM1R6SVE3MWtPcUllTmhD?=
 =?utf-8?B?ZW05SERuZHBWK0JtWStScStQQVdUK1ZkRjBkSm5kcnhYTTA5aXZneUt2RVB4?=
 =?utf-8?B?M3pjcEFtcnJWTDZFdjFmVmsxM1Rqclo3RHRVdVgwN2Q3NnF5dDF1R0d0WWxI?=
 =?utf-8?Q?0wAEPgNldVMkUIDz2KxXqfBA1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8182cb87-7d71-4e5e-b327-08dbc5906753
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 10:47:00.2395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lVexuJcWsEtfcv3h/CZ9FmwHjuDw8zZqu4RS0PKFGgUZD9O8Fc7tojmuviD8gB95OS9wO+54deKAcX+5pV9tSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6932
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ddi: Fix i2c_adapter assignment
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

PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9kZGk6IEZpeCBpMmNf
YWRhcHRlciBhc3NpZ25tZW50DQo+IA0KPiBPbiBUaHUsIDA1IE9jdCAyMDIzLCBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gPiBPbiBUaHUs
IE9jdCAwNSwgMjAyMyBhdCAxMjoxMjo1OFBNICswNTMwLCBTdXJhaiBLYW5kcGFsIHdyb3RlOg0K
PiA+PiBpMmNfYWRhcHRlciBpcyBiZWluZyBhc3NpZ25lZCB1c2luZyBpbnRlbF9jb25uZWN0b3Ig
ZXZlbiBiZWZvcmUgdGhlDQo+ID4+IE5VTEwgY2hlY2sgb2NjdXJzIGFuZCBldmVuIHRob3VnaCBp
dCBzaG91bGRuJ3QgYmUgYSBwcm9ibGVtIGxldHMganVzdA0KPiA+PiBjbGVhbiB0aGlzIHVwIGFz
IGxvZ2ljYWxseSBpdCBkb2VzIG5vdCBtYWtlIHNlbnNlIHRvIGNoZWNrIHRoZQ0KPiA+PiBjb25u
ZWN0b3IgZm9yIE5VTEwgYnV0IGRlcmVmZXJlbmNlIGl0IGJlZm9yZSB0aGF0Lg0KPiA+Pg0KPiA+
PiBGaXhlczogZTA0NmQxNTYyNDkxICgiZHJtL2k5MTUvaGRtaTogVXNlIGNvbm5lY3Rvci0+ZGRj
IGV2ZXJ3aGVyZSIpDQo+ID4+DQo+ID4+IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWwgPHN1
cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiA+PiAtLS0NCj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA0ICsrKy0NCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4+IGluZGV4IDQ2NjhkZTQ1ZDZmZS4u
NmI2NThmYWYxZmMzIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMNCj4gPj4gQEAgLTQzMjYsNyArNDMyNiw3IEBAIHN0YXRpYyBpbnQgaW50ZWxf
aGRtaV9yZXNldF9saW5rKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+PiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFz
ZS5kZXYpOw0KPiA+PiAgCXN0cnVjdCBpbnRlbF9oZG1pICpoZG1pID0gZW5jX3RvX2ludGVsX2hk
bWkoZW5jb2Rlcik7DQo+ID4+ICAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0g
aGRtaS0+YXR0YWNoZWRfY29ubmVjdG9yOw0KPiA+PiAtCXN0cnVjdCBpMmNfYWRhcHRlciAqZGRj
ID0gY29ubmVjdG9yLT5iYXNlLmRkYzsNCj4gPj4gKwlzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmRkYzsN
Cj4gPj4gIAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZTsNCj4gPj4gIAlz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsNCj4gPj4gIAlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YzsNCj4gPj4gQEAgLTQzMzYsNiArNDMzNiw4IEBAIHN0YXRpYyBpbnQgaW50ZWxf
aGRtaV9yZXNldF9saW5rKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+PiAg
CWlmICghY29ubmVjdG9yIHx8IGNvbm5lY3Rvci0+YmFzZS5zdGF0dXMgIT0NCj4gY29ubmVjdG9y
X3N0YXR1c19jb25uZWN0ZWQpDQo+ID4+ICAJCXJldHVybiAwOw0KPiA+DQo+ID4gVGhlIGNvbm5l
Y3RvciBpcyBuZXZlciBOVUxMIGhlcmUuIFNvIHRoZSBjaGVjayBpcyBqdXN0IG5vbnNlbnNlLg0K
PiANCj4gWWVhaCBJJ2QgcmF0aGVyIHJlbW92ZSB0aGF0LiBMZWF2aW5nIGl0IGluIG1ha2VzIHBl
b3BsZSAoYW5kIHN0YXRpYyBhbmFseXplcnMsDQo+IGFwcHJlbnRseSkgdGhpbmsgaXQgY291bGQg
YmUgTlVMTCwgYW5kIHRoYXQgbGVhZHMgdG8gbW9yZSB3aGF0IGlmcy4NCj4gDQo+IEJSLA0KPiBK
YW5pLg0KPiANCg0KTWFrZXMgc2Vuc2Ugd2lsbCByZW1vdmUgdGhlIGNvbm5lY3RvciBjaGVjayBp
bnN0ZWFkIG9mIG1vdmluZyB0aGUgYXNzaWdubWVudCBhcm91bmQNCg0KUmVnYXJkcywNClN1cmFq
IEthbmRwYWwNCg0KPiA+DQo+ID4+DQo+ID4+ICsJZGRjID0gY29ubmVjdG9yLT5iYXNlLmRkYzsN
Cj4gPj4gKw0KPiA+PiAgCXJldCA9IGRybV9tb2Rlc2V0X2xvY2soJmRldl9wcml2LQ0KPiA+ZHJt
Lm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgsDQo+ID4+ICAJCQkgICAgICAgY3R4KTsNCj4g
Pj4gIAlpZiAocmV0KQ0KPiA+PiAtLQ0KPiA+PiAyLjI1LjENCj4gDQo+IC0tDQo+IEphbmkgTmlr
dWxhLCBJbnRlbA0K
