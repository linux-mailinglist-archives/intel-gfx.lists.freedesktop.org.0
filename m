Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5247586FA34
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 07:44:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A3610FD4F;
	Mon,  4 Mar 2024 06:44:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VywvoxoV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DDD110FD4F
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 06:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709534682; x=1741070682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QfECYg+yA7u56NNBjENRYfJqIgl+i4AMBzxdFLYaaXI=;
 b=VywvoxoVDBAdqAvGyUMtONJB8hHHnVqgBXpDhwua2ZP/uBFBayNDiewI
 dY7ruy6kecILnN4+pJBdcF9QRgdgO7aLJXYA1yLQHbaK+guLc48W9MyjW
 Kkhgx1IwsxgQ54m7vFom3zH7bOheqgSvAo3lcIC/xwG3JpcAFpY1zyuZl
 94To2VvZXe7F9PDOfRNAEc6EDjRrW2lwkoIKjtmEnmtzMS4yz4fhgTlIN
 8W4N8qls52+6xAkc1mWeyqtp5eleRgydIAaM4eri/K6cB5jI93V+cyeIo
 Id7Ea6pRHX63VvHcxsTtsIlyEdpwkcbkySm2pi8V5bUMlotwB6fCh84PN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="21548212"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="21548212"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 22:44:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="9457826"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Mar 2024 22:44:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 3 Mar 2024 22:44:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 3 Mar 2024 22:44:38 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 3 Mar 2024 22:44:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TnDzoGLM0Orh66L8HlRQpw1r78sqymjYsC7uHD77I4ir8ULq/hbIOaa3giS5z63by1kzTN6xt/vLQC42CF9YyrIm/bdeci+M9AaHV4zblYi/LxjasEqhEW1SszgwUJKPU0OsG+zNEKPcrCNfaAyWwRjvJvSB5qLOrh6MPHgDdC//kIF3lHJ0FaEdfnnUFwYF/CI0RjJXV/xnVMl+xrT4jQws7dQSZ3d2p2fEcaVsmsxnqjIu2OlQULM7M0Lq92BMvOvONeDbQd7uBo262Iy5ykZvFaP4nrZ3JcJ4TfDkcpgKAGwa81wpU9hosjOAkKw1flSeuagRZwk2EshBOOnOAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QfECYg+yA7u56NNBjENRYfJqIgl+i4AMBzxdFLYaaXI=;
 b=TWSdYHuu1m3Disd7jW2dZhGuB7SXI6usOC6S3rR87bBqWAzDyxPWp4jkQroE+r3/zhfR488AP2ttwYgV+d39Ui1B3IZuWNxMIsBvz2OukVCB0GaeDM4AcctrvWCAm5Kf9JBXoNnWqBcssJqmHpjPlF/z3FBANihs2x9HHsgpa6luqHv+3qZtLvLqlXU59XwokD6Sp35Mvt4nwfsh0gNaSgP8VB9IxLcZL+T5OKzCuW0V5/gBlsr8vQUmYnCfBNEwQ0qyZGD/sK0LZZ3ai+oP4K38Pfsc0f0sVL9IQBmSyIwJ7Fy522zXa3egWGSk8KgQ0nUFS2HyEL8QxvsU6xAySg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SA1PR11MB5921.namprd11.prod.outlook.com (2603:10b6:806:22a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Mon, 4 Mar
 2024 06:44:36 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833%4]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 06:44:35 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Subject: RE: [PATCH v2 8/8] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Thread-Topic: [PATCH v2 8/8] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Thread-Index: AQHaa/1LydGP3dV7TUKY6YxTkRrvObEnJmWQ
Date: Mon, 4 Mar 2024 06:44:35 +0000
Message-ID: <PH7PR11MB8252F3058EB670059A0123A489232@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20240301143600.1334-9-ville.syrjala@linux.intel.com>
 <20240301172346.4393-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240301172346.4393-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SA1PR11MB5921:EE_
x-ms-office365-filtering-correlation-id: 7bac928b-94b3-45bf-4eb4-08dc3c168e7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A7z0KXc9xYxtFpBH5PrxJ2wqe7tcf2PTzG3Q1PRlqN/i/QaXb/IlDUeQmNNQ2d+icmDJCSdQ1SB4DkHqrC9PZ6cwBFrQJtSwuezsPxKZK9y6riad/pI+fiMJWA+0ouYvYplwXsWd29rB7buhVKrhq+pfUFLZ1D8NO5QTPEQ0VhuOLrEuan5apZlDxcWQzdD7Turk2N6iU6UsDtIIusL1Rrp7TmpDPOA95WqVBf5VUYYeRqqA6a+6k6XVO3WaEnHNlm3Ht7hTi9pbkpsm0Y+JrEG9P2+UwX2IlzLHeatrMB4CJV27y3pUZboucsJIAhsvIDMHQt5JElQmaaOUZeQ0xRh73FRC/Md3TdpN8NGOwnp/J/7hkMrYz/BdEXDHFuH56iFTEAcvpfAMmQwKIgkyQLkUmxG5A22yhregAcDB0luVLCzJK00TCuV/8+4JuN/DFcGUdi3sLBKjfy2W8m0JITdOSE8bpOgL3nHPKzV0qvvdNOSi51IjNx5G33/pB7VI6FneWsfiDzFWJCXgrkBvOEwx4Z7TMhv/eHkoV7Kr1HaIH3+Uq5OFn/fR5x5CXsSAMX6lJy9JZ1I9eyUlZZMZ1qNeIrmEfk+q489teEir5rpzDJmorx7EAeafFZis1dqChcEb7aD1ieIm4KLkDpYzcxPuaCNf0gE9KHFiVz80n3Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVE0ZVdkcEhCU3VDNFR1L3ROY0ZzcUFpSGFRRHFsbktwQUxWdzBOVE1IOURq?=
 =?utf-8?B?Y09wV0Z2RGx4d3hJUGkzZlkzR2FtVXZERUw5d25CTGdndThkcEpIdjU1bkF2?=
 =?utf-8?B?TmNQTVNiWHhnWndXaUpkclZBYUVYVmFBc2luTzZHWFlrek1reDI5V1RqUi8x?=
 =?utf-8?B?RUp4NzB5dWV4RGhrZm8vSkVyY2NsQzBpOWUycm1YYmRxVHNtTGhtTVdRNUVy?=
 =?utf-8?B?b2FMNmt6dWVVRzgrM3RRM0pXWUdxMzdGSU53ekRwOWlnbEg4aWdISGZIM055?=
 =?utf-8?B?eXpmeDB3czJpd2lxOWh6WEJGSHVPdXJOdGVrVWZZTkJlQklRYjNucnFyVmNk?=
 =?utf-8?B?QldBQmFIdDNaU2o3QmZUYXl3TEk1cG9VcW5iamhuZGttaDhVY2wvV0gvYjNO?=
 =?utf-8?B?NlVueXBnMklqQ0NWUzBQVmVCbmxwaGlTTGRxTWhhQ2RWajRyakp2YitiRVc5?=
 =?utf-8?B?YWxwUXZEeDJTaEN1TmJjczBySk16bmxSVkZnSk1BLzVhNi92clB4K25wY1Z0?=
 =?utf-8?B?cDFVNWRwV3JvSi9HYWdHZDlQaThNbnN2QUZOUEdjZnZkaHRCb2pIS1VPNW52?=
 =?utf-8?B?M1Qxb1ZpTzZnbFBDcnIyS3AwWDUzamlTL21hRExNOHQ4S2VDSlZFQlBJc3M0?=
 =?utf-8?B?amdweU4yRFA0YTV4bnAyMzB6VmViT0FFU1NwWkE3cU1lLzJQNHdVSmkzbnVm?=
 =?utf-8?B?ZWNLdTZFZ1BoeTZ0YU1oMGxSbklBd2M4UHF6WU1TUVF1WUtnV0N6M0ozTVVN?=
 =?utf-8?B?dXMyREVOazBWY056TUhxYlhLejI2cmJwemhua3B1QWEvVTNPLzUyVTlGR0tl?=
 =?utf-8?B?V0t4cDFuYThLelRUS2I4WXphVnJHMlpQZTVXNnQxY3BlWEx3NVFnMjBPdGJm?=
 =?utf-8?B?OFhOR3E5dGZ1U2E1dmFJWUFucHAxQXZLSDJWT1Q3QlVVYkZhTlV4Nm9GWjR6?=
 =?utf-8?B?UGMxWktiYVhMSXo2OWZEYkorYThMajBiMytpUTQ0UGJRdkxOR2pXWXl1bHFJ?=
 =?utf-8?B?bHN6SjNnR3lXZTZwdjJlQVNrRld6YW5pK2dqemI0d1dqMUlUQnE5UW13bTZB?=
 =?utf-8?B?eXg2cm5PMFhMa0JZSXJZclhId2Q3QnBEZ2FXRk5nSE93dzVWT1hFaEZKaFlV?=
 =?utf-8?B?WFgzSFhWRnJaeDVobmtjRkoveXpGei9IWmlhS29PL1JiZytnUGJnVnlYQUp1?=
 =?utf-8?B?c3I2QWxnQm0zeDVhbmhHY05idEVaTklmcjJ4cmNrdnIwMU1kZjNkUGFQTDI2?=
 =?utf-8?B?QmlLci9qTlBTZy9UQkRHWHUyZ3U4d3NXdU0yNmI1UFN0RExLNVlRVnB6cGt0?=
 =?utf-8?B?VGlsQ2VUaWZnWUZFdmRWcTVPT1dqdW5LMWFpWi9WNGJJOXBnYkhxYW83Wno4?=
 =?utf-8?B?QnlPaVdKeW5adGlHTlVGODNaM0dQYjNxeWVmREh2YTgyV2xWYmovZ3FPZS9W?=
 =?utf-8?B?Vms2Zm1HTDUxby9lby80M0tKNTNnMXBVVmk3VElleUhuaDNkdWRzb1gvNkQ1?=
 =?utf-8?B?TlpQQjdTTUQwM0FmVGlhYkRUb0IyTE9hejRrZ2s2UEpaTXRyTUQ5Z3ZsUE5r?=
 =?utf-8?B?U3VuaGxhbGVCSzBpbVBtTmxiVnJPcGRIbzlhWno1OFpVNjNQc1R4TDAxOVVN?=
 =?utf-8?B?TU9lWk9uTkRvMGRuWGk0WlBYUjlac3FydHJuRTFlSEs0QnVnMzRuT3lXbmh1?=
 =?utf-8?B?ZEc5a2xaSWhXYktMQm1DaGJVVlZ6aC9kV09LZ3VEVjRaTUN3REM2Z2lUaHZ3?=
 =?utf-8?B?QmVMRzE2Z3cwcnhxVWRBRE9zaFRud2M0Wk1kNWpFaUtMYlBhS2d0Z2xxSXJw?=
 =?utf-8?B?d2hueWZqaDUzYks5bmMwaWl2SzhZMnpDSG90RHdVOXZtVFloWHJselM0VVNa?=
 =?utf-8?B?emlsVlVSWkxBRXZNUGJIQVBhMllERVZlck1CMDlJSGpXS2RQaEh0clhzM2o1?=
 =?utf-8?B?NGF0R2FBeEVudDRUTUJIck1MUG5tUjRjTHZramduSWhzZ3EvYldXbXc5Y0xr?=
 =?utf-8?B?aE4wTkRXRkRKYWVXcWE4WHdFV0hDQkZKc0V6WFhxZ3RMc21DSDQ4b21GZzJo?=
 =?utf-8?B?b3JwRW5pd0laL29QMTRIR0RCeTZqN0FIQnN5Z2g1cXFtUVRqOUxNdm1mby81?=
 =?utf-8?Q?mR+44t3xd/qB7ntk5rwzQFfps?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bac928b-94b3-45bf-4eb4-08dc3c168e7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2024 06:44:35.7180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QwegMXLJ9Nmp69tm4pBIs9Jg04FYhjT6x80g54tIxlndGfkLcqj+BZByG1ODLvxo3u5674H7OJbzjFGHdoVQif15hwgB0bAxou2/p01jWnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5921
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

VGhhbmsgeW91IHZlcnkgbXVjaCBWaWxsZSBhbmQgU3Rhbi4NCldpdGggaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzA2MTkvIGFuZCBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzEzMDQ0OS8gdGVzdGVkIHRoYXQgNksgd29ya3MNClRlc3Rl
ZC1ieTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCg0KPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3Vu
Y2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5cmphbGEN
Cj4gU2VudDogRnJpZGF5LCBNYXJjaCAxLCAyMDI0IDEwOjU0IFBNDQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBMaXNvdnNraXksIFN0YW5pc2xhdiA8c3Rhbmlz
bGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MiA4LzhdIGRybS9p
OTE1OiBIYW5kbGUgam9pbmVkIHBpcGVzIGluc2lkZQ0KPiBoc3dfY3J0Y19kaXNhYmxlKCkNCj4g
DQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IA0KPiBSZW9yZ2FuaXplIHRoZSBjcnRjIGRpc2FibGUgcGF0aCB0byBvbmx5IGRlYWwgd2l0
aCB0aGUgbWFzdGVyDQo+IHBpcGVzL3RyYW5zY29kZXJzIGluIGludGVsX29sZF9jcnRjX3N0YXRl
X2Rpc2FibGVzKCkgYW5kIG9mZmxvYWQgdGhlIGhhbmRsaW5nDQo+IG9mIGpvaW5lZCBwaXBlcyB0
byBoc3dfY3J0Y19kaXNhYmxlKCkuDQo+IFRoaXMgbWFrZXMgdGhlIHdob2xlIHRoaW5nIG11Y2gg
bW9yZSBzZW5zaWJsZSBzaW5jZSB3ZSBjYW4gYWN0dWFsbHkgY29udHJvbA0KPiB0aGUgb3JkZXIg
aW4gd2hpY2ggd2UgZG8gdGhlIHBlci1waXBlIHZzLg0KPiBwZXItdHJhbnNjb2RlciBtb2Rlc2V0
IHN0ZXBzLg0KPiANCj4gdjI6IFBhc3MgdGhlIGNvcnJlY3QgY3J0YyBwb2ludGVyIHRvIC5jcnRj
X2Rpc2FibGUoKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDY2ICsrKysrKysrKysrKy0tLS0tLS0tDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAx
ZGYzOTIzY2MzMGQuLmUwMTUzNjk4MzMwMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTE3OTMsMjkgKzE3OTMsMjcgQEAgc3Rh
dGljIHZvaWQgaHN3X2NydGNfZGlzYWJsZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX21hc3Rlcl9jcnRj
X3N0YXRlID0NCj4gIAkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgbWFz
dGVyX2NydGMpOw0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNSht
YXN0ZXJfY3J0Yy0+YmFzZS5kZXYpOw0KPiArCXU4IHBpcGVfbWFzayA9IGludGVsX2NydGNfam9p
bmVkX3BpcGVfbWFzayhvbGRfbWFzdGVyX2NydGNfc3RhdGUpOw0KPiArCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjOw0KPiANCj4gIAkvKg0KPiAgCSAqIEZJWE1FIGNvbGxhcHNlIGV2ZXJ5dGhpbmcg
dG8gb25lIGhvb2suDQo+ICAJICogTmVlZCBjYXJlIHdpdGggbXN0LT5kZGkgaW50ZXJhY3Rpb25z
Lg0KPiAgCSAqLw0KPiAtCWlmICghaW50ZWxfY3J0Y19pc19iaWdqb2luZXJfc2xhdmUob2xkX21h
c3Rlcl9jcnRjX3N0YXRlKSkgew0KPiAtCQlpbnRlbF9lbmNvZGVyc19kaXNhYmxlKHN0YXRlLCBt
YXN0ZXJfY3J0Yyk7DQo+IC0JCWludGVsX2VuY29kZXJzX3Bvc3RfZGlzYWJsZShzdGF0ZSwgbWFz
dGVyX2NydGMpOw0KPiAtCX0NCj4gLQ0KPiAtCWludGVsX2Rpc2FibGVfc2hhcmVkX2RwbGwob2xk
X21hc3Rlcl9jcnRjX3N0YXRlKTsNCj4gKwlpbnRlbF9lbmNvZGVyc19kaXNhYmxlKHN0YXRlLCBt
YXN0ZXJfY3J0Yyk7DQo+ICsJaW50ZWxfZW5jb2RlcnNfcG9zdF9kaXNhYmxlKHN0YXRlLCBtYXN0
ZXJfY3J0Yyk7DQo+IA0KPiAtCWlmICghaW50ZWxfY3J0Y19pc19iaWdqb2luZXJfc2xhdmUob2xk
X21hc3Rlcl9jcnRjX3N0YXRlKSkgew0KPiAtCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqc2xhdmVfY3J0
YzsNCj4gKwlmb3JfZWFjaF9pbnRlbF9jcnRjX2luX3BpcGVfbWFzaygmaTkxNS0+ZHJtLCBjcnRj
LCBwaXBlX21hc2spIHsNCj4gKwkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9j
cnRjX3N0YXRlID0NCj4gKwkJCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUs
IGNydGMpOw0KPiANCj4gLQkJaW50ZWxfZW5jb2RlcnNfcG9zdF9wbGxfZGlzYWJsZShzdGF0ZSwg
bWFzdGVyX2NydGMpOw0KPiArCQlpbnRlbF9kaXNhYmxlX3NoYXJlZF9kcGxsKG9sZF9jcnRjX3N0
YXRlKTsNCj4gKwl9DQo+IA0KPiAtCQlpbnRlbF9kbWNfZGlzYWJsZV9waXBlKGk5MTUsIG1hc3Rl
cl9jcnRjLT5waXBlKTsNCj4gKwlpbnRlbF9lbmNvZGVyc19wb3N0X3BsbF9kaXNhYmxlKHN0YXRl
LCBtYXN0ZXJfY3J0Yyk7DQo+IA0KPiAtCQlmb3JfZWFjaF9pbnRlbF9jcnRjX2luX3BpcGVfbWFz
aygmaTkxNS0+ZHJtLCBzbGF2ZV9jcnRjLA0KPiAtDQo+IGludGVsX2NydGNfYmlnam9pbmVyX3Ns
YXZlX3BpcGVzKG9sZF9tYXN0ZXJfY3J0Y19zdGF0ZSkpDQo+IC0JCQlpbnRlbF9kbWNfZGlzYWJs
ZV9waXBlKGk5MTUsIHNsYXZlX2NydGMtPnBpcGUpOw0KPiAtCX0NCj4gKwlmb3JfZWFjaF9pbnRl
bF9jcnRjX2luX3BpcGVfbWFzaygmaTkxNS0+ZHJtLCBjcnRjLCBwaXBlX21hc2spDQo+ICsJCWlu
dGVsX2RtY19kaXNhYmxlX3BpcGUoaTkxNSwgY3J0Yy0+cGlwZSk7DQo+ICB9DQo+IA0KPiAgc3Rh
dGljIHZvaWQgaTl4eF9wZml0X2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkgQEAgLQ0KPiA2NzUzLDI0ICs2NzUxLDMzIEBAIHN0YXRpYyB2b2lkIGludGVs
X3VwZGF0ZV9jcnRjKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gKnN0YXRlLCAgfQ0KPiAN
Cj4gIHN0YXRpYyB2b2lkIGludGVsX29sZF9jcnRjX3N0YXRlX2Rpc2FibGVzKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAtCQkJCQkgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQ0KPiArCQkJCQkgIHN0cnVjdCBpbnRlbF9jcnRjICptYXN0ZXJfY3J0YykNCj4gIHsNCj4gIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRl
dik7DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlID0N
Cj4gLQkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsJ
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9tYXN0ZXJfY3J0Y19zdGF0ZSA9DQo+
ICsJCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIG1hc3Rlcl9jcnRjKTsN
Cj4gKwl1OCBwaXBlX21hc2sgPSBpbnRlbF9jcnRjX2pvaW5lZF9waXBlX21hc2sob2xkX21hc3Rl
cl9jcnRjX3N0YXRlKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gDQo+ICAJLyoN
Cj4gIAkgKiBXZSBuZWVkIHRvIGRpc2FibGUgcGlwZSBDUkMgYmVmb3JlIGRpc2FibGluZyB0aGUg
cGlwZSwNCj4gIAkgKiBvciB3ZSByYWNlIGFnYWluc3QgdmJsYW5rIG9mZi4NCj4gIAkgKi8NCj4g
LQlpbnRlbF9jcnRjX2Rpc2FibGVfcGlwZV9jcmMoY3J0Yyk7DQo+ICsJZm9yX2VhY2hfaW50ZWxf
Y3J0Y19pbl9waXBlX21hc2soJmRldl9wcml2LT5kcm0sIGNydGMsIHBpcGVfbWFzaykNCj4gKwkJ
aW50ZWxfY3J0Y19kaXNhYmxlX3BpcGVfY3JjKGNydGMpOw0KPiANCj4gLQlkZXZfcHJpdi0+ZGlz
cGxheS5mdW5jcy5kaXNwbGF5LT5jcnRjX2Rpc2FibGUoc3RhdGUsIGNydGMpOw0KPiAtCWNydGMt
PmFjdGl2ZSA9IGZhbHNlOw0KPiAtCWludGVsX2ZiY19kaXNhYmxlKGNydGMpOw0KPiArCWRldl9w
cml2LT5kaXNwbGF5LmZ1bmNzLmRpc3BsYXktPmNydGNfZGlzYWJsZShzdGF0ZSwgbWFzdGVyX2Ny
dGMpOw0KPiANCj4gLQlpZiAoIW5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUpDQo+IC0JCWludGVs
X2luaXRpYWxfd2F0ZXJtYXJrcyhzdGF0ZSwgY3J0Yyk7DQo+ICsJZm9yX2VhY2hfaW50ZWxfY3J0
Y19pbl9waXBlX21hc2soJmRldl9wcml2LT5kcm0sIGNydGMsIHBpcGVfbWFzaykNCj4gew0KPiAr
CQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQ0KPiArCQkJ
aW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsNCj4gKwkJ
Y3J0Yy0+YWN0aXZlID0gZmFsc2U7DQo+ICsJCWludGVsX2ZiY19kaXNhYmxlKGNydGMpOw0KPiAr
DQo+ICsJCWlmICghbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gKwkJCWludGVsX2luaXRp
YWxfd2F0ZXJtYXJrcyhzdGF0ZSwgY3J0Yyk7DQo+ICsJfQ0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2
b2lkIGludGVsX2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQ0KPiBAQCAtNjgxMCwxOSArNjgxNywyMSBAQCBzdGF0aWMgdm9pZA0KPiBpbnRl
bF9jb21taXRfbW9kZXNldF9kaXNhYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkNCj4gIAkJaWYgKChkaXNhYmxlX3BpcGVzICYgQklUKGNydGMtPnBpcGUpKSA9PSAwKQ0KPiAg
CQkJY29udGludWU7DQo+IA0KPiArCQlpZiAoaW50ZWxfY3J0Y19pc19iaWdqb2luZXJfc2xhdmUo
b2xkX2NydGNfc3RhdGUpKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4gIAkJLyogSW4gY2FzZSBv
ZiBUcmFuc2NvZGVyIHBvcnQgU3luYyBtYXN0ZXIgc2xhdmUgQ1JUQ3MgY2FuIGJlDQo+ICAJCSAq
IGFzc2lnbmVkIGluIGFueSBvcmRlciBhbmQgd2UgbmVlZCB0byBtYWtlIHN1cmUgdGhhdA0KPiAg
CQkgKiBzbGF2ZSBDUlRDcyBhcmUgZGlzYWJsZWQgZmlyc3QgYW5kIHRoZW4gbWFzdGVyIENSVEMg
c2luY2UNCj4gIAkJICogU2xhdmUgdmJsYW5rcyBhcmUgbWFza2VkIHRpbGwgTWFzdGVyIFZibGFu
a3MuDQo+ICAJCSAqLw0KPiAgCQlpZiAoIWlzX3RyYW5zX3BvcnRfc3luY19zbGF2ZShvbGRfY3J0
Y19zdGF0ZSkgJiYNCj4gLQkJICAgICFpbnRlbF9kcF9tc3RfaXNfc2xhdmVfdHJhbnMob2xkX2Ny
dGNfc3RhdGUpICYmDQo+IC0JCSAgICAhaW50ZWxfY3J0Y19pc19iaWdqb2luZXJfc2xhdmUob2xk
X2NydGNfc3RhdGUpKQ0KPiArCQkgICAgIWludGVsX2RwX21zdF9pc19zbGF2ZV90cmFucyhvbGRf
Y3J0Y19zdGF0ZSkpDQo+ICAJCQljb250aW51ZTsNCj4gDQo+ICAJCWludGVsX29sZF9jcnRjX3N0
YXRlX2Rpc2FibGVzKHN0YXRlLCBjcnRjKTsNCj4gDQo+IC0JCWRpc2FibGVfcGlwZXMgJj0gfkJJ
VChjcnRjLT5waXBlKTsNCj4gKwkJZGlzYWJsZV9waXBlcyAmPQ0KPiB+aW50ZWxfY3J0Y19qb2lu
ZWRfcGlwZV9tYXNrKG9sZF9jcnRjX3N0YXRlKTsNCj4gIAl9DQo+IA0KPiAgCS8qIERpc2FibGUg
ZXZlcnl0aGluZyBlbHNlIGxlZnQgb24gKi8NCj4gQEAgLTY4MzAsOSArNjgzOSwxMiBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9jb21taXRfbW9kZXNldF9kaXNhYmxlcyhzdHJ1Y3QNCj4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSkNCj4gIAkJaWYgKChkaXNhYmxlX3BpcGVzICYgQklUKGNydGMtPnBp
cGUpKSA9PSAwKQ0KPiAgCQkJY29udGludWU7DQo+IA0KPiArCQlpZiAoaW50ZWxfY3J0Y19pc19i
aWdqb2luZXJfc2xhdmUob2xkX2NydGNfc3RhdGUpKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4g
IAkJaW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoc3RhdGUsIGNydGMpOw0KPiANCj4gLQkJ
ZGlzYWJsZV9waXBlcyAmPSB+QklUKGNydGMtPnBpcGUpOw0KPiArCQlkaXNhYmxlX3BpcGVzICY9
DQo+IH5pbnRlbF9jcnRjX2pvaW5lZF9waXBlX21hc2sob2xkX2NydGNfc3RhdGUpOw0KPiAgCX0N
Cj4gDQo+ICAJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgZGlzYWJsZV9waXBlcyk7DQo+IC0tDQo+
IDIuNDMuMA0KDQo=
