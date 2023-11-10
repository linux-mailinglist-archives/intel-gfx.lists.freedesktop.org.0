Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C269F7E7DB8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 17:20:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB61D10E119;
	Fri, 10 Nov 2023 16:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA84310E119
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 16:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699633237; x=1731169237;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HjeW9kX5P1jPVOoA6K/ULMxwCUqHjq1vq2EHYuKaf5k=;
 b=DQ85gZwRvY2/9xgkh9RvvQWcq5I4aCwo5LcyA0rU6b8gEPiFFPFruVja
 /Iut/9rLAKb5u132jyKb+Py42YnlxuZ7J2NFEkAH/VeZdKs+VoPxaXuwr
 AAf6QeHmCe0GXrOuLSUkSkXuQXV9d55PP/W4ffdtNJl/rH4hnhvs7qNxP
 OsEadg4rSkE9fc6UuhNR9TE9TVoOs08TwtM4/aLk0qBAXYHkbzn4yDv25
 uMmkv90TB2yP7hGBPKR507/QfBwxNEVWth4i0oMrKPwOf/9zcGRDCNPEZ
 ZgLuGb+St2raG3o5kXXYIP3o2ZiOuuGdjLzXPUfvTQqv68/17Qgolufw9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="370407104"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="370407104"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 08:20:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="1095223538"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="1095223538"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Nov 2023 08:20:36 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 10 Nov 2023 08:20:36 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 10 Nov 2023 08:20:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 10 Nov 2023 08:20:36 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 10 Nov 2023 08:20:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJLiTdCApOhJt38e9B60YXL6kioEDityQJmdPrzbu06W7Q/C/E+FK506ETXHNBpsJZMhGM+zSABR8LlbDpHcIFxxEgDE6OqcIfjuWV7A8CerYKyUkVNHhNJd1tbSbEFNhoX+ZogXYKwspT4XR9EUDgzOq2Y6DMCLIZzjo1gU61pplJuVxkOqER15rjSlD0XfxGGokxvKE/0/yn+l/DIki9GGkHimt9xg7XBdWg4iWzAeh+w4GclIQ2qZchNGWRLBndOrGvOf6RQHwH1duKIN21ek/eX0g49a3b6pqRg1pZrQEcVyIlydn6skWn48OWqs0TSYKpDgJ0bwOAxPVGEJcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HjeW9kX5P1jPVOoA6K/ULMxwCUqHjq1vq2EHYuKaf5k=;
 b=hKvqFgHuuoZiA+ws5S5phq2FMWiOQV9ulK0mDcpASEnWIzPbKGCUK9CdMUyorBzB715r//NYLPfcQ8Y8Lpa9iYjGTtImJQ0gFRXAWorXymaAoyqqzf+8r6ox5WeGf4748p2cFZ/FUmsMeTxdF+MMzs4kQvXpF6X0ojtVMuUyLLl6/if0sObMYpkA7UOM8j/JRVyeQtYSPIbB5G0hKwZXeu+WixnKRJYzzTiIVfAtuedWS8VPD2X/75vMTaKwxTr+8GOWrYX/Xtg2QouGcd9dXMCR0qNKtJ6cR0xAYfHpOwK0O6Ke03hELqKIP6VRIhOmWPLueXpb8DugWMJmHlRE+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SJ1PR11MB6276.namprd11.prod.outlook.com (2603:10b6:a03:455::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.28; Fri, 10 Nov 2023 16:20:33 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::a98b:5c7d:8396:267b]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::a98b:5c7d:8396:267b%4]) with mapi id 15.20.6977.020; Fri, 10 Nov 2023
 16:20:33 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: VDRU VDRU <user.vdr@gmail.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] Getting black screen with stable kernel 6.6
Thread-Index: AQHaE+aMYfjUGmWnyEiGdpdAPyAckLBzu7kA
Date: Fri, 10 Nov 2023 16:20:33 +0000
Message-ID: <DM8PR11MB565504177D595CA4B3BC1DB4E0AEA@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <CAA7C2qgoUsXQDDFvK-kwqXVAxT7eXgQzY1eyTEzW+T+gncQXNg@mail.gmail.com>
In-Reply-To: <CAA7C2qgoUsXQDDFvK-kwqXVAxT7eXgQzY1eyTEzW+T+gncQXNg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SJ1PR11MB6276:EE_
x-ms-office365-filtering-correlation-id: ac4a4bd3-5a5b-43a0-cc46-08dbe208f6c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2ArLlNoeqNaisEU6EIGn8N6FHxGC7SF7gAEaaNs+leSWUG+qX97kob+YuvJF5LJpj+ouH8wZ4SEGFZJBX5533adbsNT5fbGTdflzQnB3fYejiQt3jL8yXtqIk0ueN5xqnwmYY75uHKnUR//M0aZmQhLfAvtu3YzRms+oAL1sxlIhdkNLPQH2k5IEKdoSZvDbepUOVUp/u02k3MElC2wqbFyU128Ez++ej3b8L6czVHYHdpUDRAplOShhcXJpYkyu0GN064gDn6JeWniXz8619Pwh+vIFbjbhyG7jlc2W3heyqjOxkQ8b+PDAVCp4V13jbDvFawFhkfkOoaJvp0Jjnc/OiROmnCvou59k62U910Nopi26Dpa5WKXcxyo1bbIz6AS87Lgu+6AOY/86Tr68roUrHJlB7kb83gklNNcTvtWDBXLtq+xAAMHLWeP2Usftb9nyPAN+WavDcDW9TI3Liiqst5x8yhbzrZ4DCsnXdbYCOtutR50+g+eLdl9s0URSc+CT84l1CIJGVVue68XqXANN+iQQTH1vBvGNNahsBzLIYfFVsooQ29fZNdbJpGwYCaw10Bub3nCmB72Q6Gl+YKCXZ58NzEneYiKkpWt/EFU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(346002)(136003)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(38100700002)(55016003)(7696005)(71200400001)(6506007)(53546011)(83380400001)(82960400001)(122000001)(9686003)(86362001)(41300700001)(66556008)(76116006)(2906002)(66946007)(8936002)(33656002)(5660300002)(8676002)(52536014)(110136005)(316002)(66446008)(966005)(64756008)(26005)(66476007)(478600001)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEJmZzNjMUpBV2h2NE5SY1V4cFJaV0JCK1UxZDZubkVST2lnL2JUb1NrNk93?=
 =?utf-8?B?Uk1vYnRmSzk1SDlqcFRUcmNyMzVyRUg2bjRJNGE4Nmw1VTF2MkhTMXlwU2Js?=
 =?utf-8?B?dFg4aTJzV3l6K2hjK3YrVGRWWmRibmQ4RGUyREFudFZnWkZyT3VqNlBSMXRJ?=
 =?utf-8?B?blJtREpwRjRYcjUrV0ltQmtvZGFoYkVmT2kxYkh1ZWoxQzRsQWtFRTFVSzFm?=
 =?utf-8?B?VUMxbm5oK2t6cUcyejZ1YWhuczd6Z0NtL29nNjVtSlJzS2E3VGtvbmY2bzRr?=
 =?utf-8?B?REJ5Z2lERHc0VXBjZC9FUlN1OXZ4Z3U5WmtTaDJSRmpWVW9hR1djSktnWTFz?=
 =?utf-8?B?czZXQjNXenF0eUhKRnJJTU9PcWtCYlVuZ3ZxQlVLT212UnBQb0srOHF0ZXJz?=
 =?utf-8?B?ZFVCOGE2RmMwblBIRmUyQjR3K2xOV2FYVWUxMmJkWjE1NGtjc1JubE9WSUV5?=
 =?utf-8?B?VVpoZTB6UkpWVE53eHV0Nkx3dzNuaVFHamJvQy9QMGJkc0dldGxDdXJCR0NZ?=
 =?utf-8?B?Rkx3TkVWY2VXM0pRK01lWUFoSVdheXpETmFWUWNTajFRWEhDdWlZWVpMeU9V?=
 =?utf-8?B?WURnT1pkWWZCVVVWZVdnand6aHEycVdjUFNybzQ1UkRQSEVJa1p0QnhwNHpo?=
 =?utf-8?B?RkJsWVFUNnZ4WHQ1cmVrelR4cHhYT3B0RE9kckJRUlF6ci9XM0ZFSi84dTkz?=
 =?utf-8?B?aGFvN2JNRTZ3WVFkMEZNK25kQ3k0U0VrcytSTjV5ZEZIVjkrMGJsbk9obFZV?=
 =?utf-8?B?UTVNYkY4enk4QVlacmdlM01WdWVRY0xWR0dWUndlb2EySW5tVUcvbUN1aXNl?=
 =?utf-8?B?TDFzbVZ6YVZWK3RIRXlzVzZMSzR6ZVQvM0lhVjFZVlNqUThCWHpxaDZhLzlO?=
 =?utf-8?B?UVFVZEc3a2IzczdOK05MTlNucnYyc0VjUUEzVjBOYklkYU9DWmIwVnNCWDVT?=
 =?utf-8?B?dS92ZloweS9PblF6LzhSM05IK3l1K2tpV3ZjaTl5ZWZWTkJRU0ROR3VvTU5S?=
 =?utf-8?B?UjVXd29PRFJFY1dLMWVzeXp1QldSZzZKdXVvdWZ1dHQzdCtHRmJmSDN6Qy9t?=
 =?utf-8?B?NVd3ZEV6N1hNK0RONk51d0xoNG5MZ09jTnRLNVpvZTRBU09iN3BydmUrYkkw?=
 =?utf-8?B?NFl3UWZRSXdsQjBVdWdCVDlORVoxY1h0Zkt4dnlmZnV4ZzNnME5JMTJ6Umo2?=
 =?utf-8?B?dDE4d3Z2OHFqd2VQNHkyMnJPOE5zY2dWL1Z2VnU1ME04ekczczkvK3VKYW1i?=
 =?utf-8?B?TWpLdHdpL3pLQThZTkpyMTBnWHJlZDZ1S1JRTEZpNTdOWTI3RDFQNUdCMmpX?=
 =?utf-8?B?VWY3RDlRN29nNHhCSGE2YVR5dTV4WTJ1bzVsTFNpL1J2Y2FvVlVjeTdka292?=
 =?utf-8?B?Z29ndXlvY1MyamFVTVd4aTlkZks1bnkyQ2JzZmpnSkZEWkUrM1R5T0pxR1NH?=
 =?utf-8?B?RGkybnBWV3hoa0dKZ2NIZUwwVWNNSFlDcGxKbnpZbldsVktpV2t3d0VZSktP?=
 =?utf-8?B?K0JOa2J0c3RHN2NUOWFqQUlRVDYzeTR6RmhPZXBnbm1iVmRVVzRTYXE2NGI3?=
 =?utf-8?B?cE1KVnZ2OWppeXMySGQ5dFY1U0lqbEpYQzNieWNQQURSd2ZqaGEzWW5pcXlo?=
 =?utf-8?B?NTZxVW9RV0lVZzF3VUIzSmpPU01BdTdwbjkxNytSMVAzRG5vL3V0VEU1c3hh?=
 =?utf-8?B?SXVJazRjV2d4MElyL29ERGtOdVRLR2JRdndNcFp0VmFIeFV1UCtXRG4ybGNB?=
 =?utf-8?B?Y3NadDd4K08yUXJyZzRhcmtsUGFIOHFzdEhRdk5JbnowWFlVRGJOaHUrS0hR?=
 =?utf-8?B?UzdVZU1sNXFDYnNjeVNBbS80UlVUdnNmUVdNakJ6b3FHYnRXM3ViZGFnTUhM?=
 =?utf-8?B?L1JBS1c3Zm02T3BibEE4Vyt2K1UxUkFDVWhTTmtnSUc4dmJ3KzVwYVgzZHR6?=
 =?utf-8?B?Tk9lZ2c1bVVWVkdHakRKYlVRRlJQdnk4OFBUc2k1bTJkVkRVRCtWYit4QnUx?=
 =?utf-8?B?VXQ0UjVSck11azV1cXU2MHlTWEo4QVhRYk1vSENJVWdvZVdLakFnSHpGQmhw?=
 =?utf-8?B?ZHdYNkpNemgrNEVmeWxPdGxwQjhEaUtQZnZFVjdnSjkxNUxYekxaMVAwS285?=
 =?utf-8?Q?Nm4UCn20hcXoM55KOcLslXXTG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac4a4bd3-5a5b-43a0-cc46-08dbe208f6c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2023 16:20:33.0404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7bueVq/wSAh28jIt+5Ex/yQxVNqBbLJer41254Y+DFSOo7ElaYrg87/Ew0JXE6FiDNdeOPvpit/Bt193smdOTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6276
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Getting black screen with stable kernel 6.6
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

SGksDQpQbGVhc2UgcmVwb3J0IHdpdGggdGhlc2UgaW5zdHJ1Y3Rpb25zOiBodHRwczovL2RybS5w
YWdlcy5mcmVlZGVza3RvcC5vcmcvaW50ZWwtZG9jcy9ob3ctdG8tZmlsZS1pOTE1LWJ1Z3MuaHRt
bCANCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZEUlUN
Cj4gVkRSVQ0KPiBTZW50OiBGcmlkYXksIE5vdmVtYmVyIDEwLCAyMDIzIDQ6NTkgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
R2V0dGluZyBibGFjayBzY3JlZW4gd2l0aCBzdGFibGUga2VybmVsIDYuNg0KPiANCj4gSGksDQo+
IEkndmUgYmVlbiB1c2luZyBrZXJuZWwgNi41LjEwIG9uIERlYmlhbiBTaWQgd2l0aG91dCBpc3N1
ZS4gSSBqdXN0IHRyaWVkIGtlcm5lbCA2LjYsDQo+IChhbmQgY29uc2VxdWVudGx5IDYuNi4xKSBi
dXQgb25seSBnZXQgYSBibGFjayBzY3JlZW4uIFRoZSBzeXN0ZW0gZG9lc24ndCBydW4gYQ0KPiBk
ZXNrdG9wIGVudmlyb25tZW50IGJ1dCBydW5zIGFzIGEgS29kaSBjbGllbnQgdXNpbmcgR0JNIGZv
ciBkaXNwbGF5IG91dHB1dC4gVGhlDQo+IHN5c3RlbSBpcyBhIEJlZWxpbmsgTWluaQ0KPiBTMTIg
UHJvICgxMnRoIGdlbiBBbGRlciBMYWtlIE4xMDAgY3B1IHcvaW50ZWdyYXRlZCBncHUgQWxkZXIg
TGFrZS1OIFtVSEQNCj4gR3JhcGhpY3NdIFs4MDg2OjQ2RDFdKSBjb25uZWN0ZWQgdG8gYW4gTEcg
dHYuDQo+IA0KPiBJJ20gbm90IHN1cmUgaWYgdGhlIGlzc3VlIGlzIHRoZSBpOTE1IGRyaXZlciBp
dHNlbGYgb3Igc29tZXRoaW5nIGVsc2UgdGhhdCB3YXMNCj4gY2hhbmdlZCBiZXR3ZWVuIDYuNS4x
MCBhbmQgNi42IGFuZCBhbSBob3Bpbmcgc29tZW9uZSBtb3JlIGtub3dsZWRnZWFibGUNCj4gY2Fu
IGhlbHAvcG9pbnQgbWUgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbiB0byBmaW5kaW5nIHRoYXQgb3V0
LiBJZiBpdCBpcyBhbiBpOTE1IGRyaXZlcg0KPiBidWcsIEknZCBsaWtlIHRvIGdldCBpdCByZXBv
cnRlZCBjb3JyZWN0bHkuDQo+IA0KPiBJZiB0aGlzIGlzbid0IHRoZSBhcHByb3ByaWF0ZSBwbGFj
ZSBmb3IgcmVwb3J0aW5nIHRoaXMsIHBsZWFzZSBsZXQgbWUga25vdy4NCj4gDQo+IFRoYW5rcywN
Cj4gRGVyZWsNCg==
