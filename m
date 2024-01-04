Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E604F824795
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 18:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E8510E0A7;
	Thu,  4 Jan 2024 17:39:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C82210E0A7
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 17:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704389959; x=1735925959;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Cqk+2F/NQFRpc3sfasGdCqkhQYkrHHQtJu+xkhIfWyg=;
 b=j64e18Pm2IqEObZVPX+0UALwbAEkHT16keB5Z5bppGlMyXNZ9ZdmYbZh
 7+MO77wouHXRx/o6u9kRjNOaxIPSkqW8g6IHzZyN7zY65wUidVpZ7WkeW
 eWE4VPjQIquJJK2iL0dpoEFZSaJ8G51ETfhOFmvx3OytFhEvAvHRdlGHU
 TeDt8VL3zyiuog7Xg+b770hIMphF7XmpWHmQkYLlfwQpyvGWEWzaHYaTz
 Z0rpxpNaHJ5eL0MNtKj4PkTcxVWctRv1g+VRgwhn0w4D7JdQpWmC2tLfr
 y4nQrkWYVI6mMAhi+HyVt7NmlynJVHhanhBRK68FsXttZy0S1WHysiwpS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4424858"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4424858"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:39:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="780491173"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="780491173"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 09:39:18 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 09:39:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 09:39:18 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 09:39:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hWrpOGtM/F6YmsVVetJ6XE+H2TAOfpwxSfTMIIArMDIGdOwYYorbxrjdxBq5c98h/QHpQYOI6unsqWt2tkvUe9zmZI4fl/XBSjrmSod2I4iEVIyUBOzopoWchdjtJHbrzonGaxVeYOYljWdaW5JyPU14n0a8fX4Tgvd0v/2vAAWJh7bfOEQlQvIS8ARN0fXk6OZ6/+w/56nZ5t3c7MMnNhQ3IA9d2QQa9EtUwbnPFPKVLnaGyKZFgfVo00rpDVC/BXyS6Cai9ueAn0hJs0KHUOg+tKzL5Y+4E2Ze3RY7iv6Sy18o+XPb/yulsrk1hdBlnvuDqPwxjzSsu9tjdZ1pOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cqk+2F/NQFRpc3sfasGdCqkhQYkrHHQtJu+xkhIfWyg=;
 b=H9yznGKQI0WX1ovZgnLHDLC468fwQ7tGO7TbB0MBIomqWVD0g3qXJVkukkYupYjaKuW1kfruhiUtCPWjDnTUf8XtjX8g1FpkRRdRj2a1rFEf6zTEQxXjvXg4AM9QfTXZ1PpkFe/hdG1BdcXQyjwaqsEzU9o7F7M+4fMNDX8NDYlQhOnbEMJpXK3X79sIZ9PR7GngySsmT1+oDvkyp9WVE+GfJrCiKuavEJqNcJogIw5G20hnM3Ad/4YSQ2fD5LbxUrgc2jRdZI1y/Dw9k/6DnI3VRy8udgK71FDL1zs7kJvWQGnsG/Erm6Bw6fX7HA5E3vyQ1/U3EvuyqC5DxbOG7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CH3PR11MB7764.namprd11.prod.outlook.com (2603:10b6:610:145::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.13; Thu, 4 Jan
 2024 17:39:16 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::da85:3d5:65fd:4a21]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::da85:3d5:65fd:4a21%7]) with mapi id 15.20.7159.013; Thu, 4 Jan 2024
 17:39:16 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UmU6IOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIFJlc29sdmUgc3VzcGVu?=
 =?utf-8?B?ZC1yZXN1bWUgcmFjaW5nIHdpdGggR3VDIGRlc3Ryb3ktY29udGV4dC13b3Jr?=
 =?utf-8?Q?er_(rev13)?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVzb2x2ZSBzdXNwZW5kLXJl?=
 =?utf-8?B?c3VtZSByYWNpbmcgd2l0aCBHdUMgZGVzdHJveS1jb250ZXh0LXdvcmtlciAo?=
 =?utf-8?Q?rev13)?=
Thread-Index: AQHaPvzVBqCXrn5P6E6gOW/pqz7nj7DJ6+QA
Date: Thu, 4 Jan 2024 17:39:16 +0000
Message-ID: <3e75cd48e9bd1a4d4dff72653d8892f587acdea0.camel@intel.com>
References: <20231228045558.536585-1-alan.previn.teres.alexis@intel.com>
 <170436584364.20567.12631074825231636622@5338d5abeb45>
In-Reply-To: <170436584364.20567.12631074825231636622@5338d5abeb45>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.50.0-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CH3PR11MB7764:EE_
x-ms-office365-filtering-correlation-id: 885ce77c-11ca-4c6d-0922-08dc0d4c12d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XkItMyI9m2Z6iDWBJHdDbrco6dr8arcUIp//K9qdj6uF+iXhU1Jq9lVRr6mU589EUh0TpRs5lo4GRDGFeTmGTcjV0akdnYa8OYFNbEx9yZnkOXRxlbmdjwqFGb2Rh743zg6JWn2qqlWWqbTxUN1NrftJmHJt9tDTyRnO2shsZti8veoMNo8YIg2SbTZuTJyo/3OplJpCsKCtoppwLp3uF4/tM/3vlSepLh+u5e+hB95s0/NBC8uQf3fqrryEvsuoDCcHI/aE22OMGkfOnfM10XdBpYR2sFDaSI2/cOkfqRshu/ZktRH7DYZL4UAkbOAPc3DlRwTMDmsymjGM1GVyxgSXlITaa5fzNCJGMgQnlxQymaECgDmq8iOyK6lUg8VQ0OkLjOeyfcuKTbXskRoJDzKF6s69UJ09YH1VPvvw3XvG6p88Z8659Pv2ow0bE/ihdF2feEUbJTlrnoG5kERmaP37+JTIgMdAeS/h4PzBedh2FG0eUIwxZWBU4NlwVRMgyAtdbQeFa3jKPh8b06SYDreNwrrOZ4QJIryT3mS9mdNL0ym7v17ZxsffTxsXc7nwET586AACJIoNK67q80EFg08qt/SsgoNZrHcmnCVdWTc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(346002)(376002)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(36756003)(6512007)(66476007)(6486002)(6916009)(76116006)(64756008)(86362001)(66946007)(6506007)(38070700009)(66446008)(122000001)(38100700002)(82960400001)(66556008)(83380400001)(26005)(2616005)(2906002)(41300700001)(15650500001)(5660300002)(4744005)(71200400001)(966005)(478600001)(91956017)(8936002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHJlU0xHRU8zdkxCbFcrWTArbHYzMGlBOTJNYTY5YkpabFFHVkRvU0xPbjFi?=
 =?utf-8?B?M2FGeTExYTU0RlhpZ05FNVRHYUd0SmlTWFIwOTcxMWZsbkJNTmJ4SEczR3pF?=
 =?utf-8?B?SVpwbzVSRUFDMndodHJLWWpJMm0wSVJoUlVxMFp5cFQ0Y25YOHFFcjJrdzhR?=
 =?utf-8?B?V25KUGp2Ykp2ZnU3N2hieFA0SXVTdjdVSlpKZ0VXRGg1L0pHdnBJSG4xODhS?=
 =?utf-8?B?VU12QWhucnVoWjFLL0M5MTBLd3RkZUtFaEQ2dXcxNFVTanhtSVJ1dmtDTE5Y?=
 =?utf-8?B?eVZrZUVSaDZEUG1JOFNiNnh1SGswRGo0bUwxS3JUbGFXUVlHTUdnYmNBNXhz?=
 =?utf-8?B?WWNhcDJhTlU5KzJheDBITjZIanQyZllsNUlObzY0RWNhWUM0TTdCcGxjbHQz?=
 =?utf-8?B?b3VPNlRwYlRqY0kvYlRqT3ZvbEN3NDdzWnJmb3dzWGVVaDk2cVp6dU1kcUlZ?=
 =?utf-8?B?cXJVT25vWGh3L25NblJ5Q0NRQTlFZVVyeEhYbkhLRzhvaVIxYkN5Sms4Smpi?=
 =?utf-8?B?WkV2Tm9xNUNET04vdzNHUjBRUG5EaVN3bEZpLzVNUlNRZWNVUWQxYlEwWlZs?=
 =?utf-8?B?UFAxUExMQzZnaHVLeVkvRURxRlkxVDdKcnFNV2Fhd0lpci8xME1NbktZMnY1?=
 =?utf-8?B?Snl6c2FubUpUS3VKd3lrcTJwYzFRei9YS0VhSDFPVDY1TGYzZmZ4SHhLa0Ru?=
 =?utf-8?B?d2RCcDF1YXZ4YThlbGg0ek1oVHZHNytMRHZML09CbDgxTllVSjNQUExaMDBq?=
 =?utf-8?B?cVY1d29kYUw0V2VpVS9sSE51bDRhZmgzNVJXTVc2TEZFTmo1UXV2YVI1QTBh?=
 =?utf-8?B?NUtjSlhGSVBLUGw1cFhOdGlxSGJIRHZuV3Q3ZnVLVnhPSDRSanovMFBNak1F?=
 =?utf-8?B?NWxrWFU3cVBKN1Y0ekovQ1JmZXhDSFZlbHdMTU1WWWIxallRWTkxam1FcnBV?=
 =?utf-8?B?MnNJdTdQNTRtaUJvUVpMQWpqMHJBKzFrbEFXQ1BJNm5Tb25ieE10UXpmWEE4?=
 =?utf-8?B?R1kycGtEd24rcWZuejYycnBEYk1OeUNGVW82TDB0WW56UGRaSHU2VFM4THZI?=
 =?utf-8?B?cXk1aTNzaW5ib1VtSldzcTM2TzZPdndXSWJTTnpTVlc0MGxNZngwQS9Eazg2?=
 =?utf-8?B?R3RkREtRVGJ6cFoxNzErRzV3ZHAzQnM2VCsrK3pKWnFEcUVXVmtpeVpQcnJt?=
 =?utf-8?B?WDB1WnpJcktSdU55RVh1a293WTJFSVhpcVk3bHNZNWkxNjJVWDRZd0M0Wk5x?=
 =?utf-8?B?WTlSVnV0OHZjN1ltSFpzRURaRXFLZk9KUSs3ZkJMU0JwZ2RmT0R1dGNoL2RO?=
 =?utf-8?B?OFFkME1MMjloUXptdzI2Nmk2S21CZ1M0aGRyeS9NTWlnSmxtUXo3NnpocDBq?=
 =?utf-8?B?UkZOM2tzWGdPWlZERmRCbGVaelhlZE5DTnBzQVBOZjlUZC9iQXNOWGd3bHVs?=
 =?utf-8?B?NzkyTDMzQm9FdnVBSXN5cWJSa2Q5RXJXbFVuV1VaRjQ4UXZrS1g4ODF4SVdx?=
 =?utf-8?B?WFFUbGVGd2twUHNqNzFVSzNOMkVFdHc1Y3B4dzArc0lhUkNRL3VoY3g5bXMx?=
 =?utf-8?B?QVNGOTBkdCtXUzk1a1M3WnVMUjZzMUdXK2I5WU8yeTZUanRscFV4elVGb0Js?=
 =?utf-8?B?eHJGeXFwU3JRZUlHRVR1QkhRMTc5c0x0U09XaFJaWmR4djhuQmZsVWk3M2lD?=
 =?utf-8?B?MG1QWlQ1RU8vTHhyYUVleTdqeUJKdWxuL1Z5YlBPaWlWMG5qUkNIZXZoR3Fv?=
 =?utf-8?B?bGJqWmQ4L00wUW51M2h2MEVUMnVoRmJ5VStWSEo4ejdTZ1E5bkc2WTgzcTRH?=
 =?utf-8?B?dmJNY0o2aUZrZTZoMFZxd3M1L1JtcnRhaUdzMkdGMWVZUGRBVmRPbmJRNlQw?=
 =?utf-8?B?WXl3Z2o5VDc0WVY4QmI3UlRnbjREQ1hhRmpSV3JacDdPemFUUWRaZytIcVJN?=
 =?utf-8?B?dEpyRkVkUm9nV1EzVnhReWFFbDlEeVhXN1QvSTJIaGE0MXFTcTgwUTNZVWhk?=
 =?utf-8?B?dTlwaUFQNnN2em5ualhSei9Fa0h4STZhcEFRMzNvbFBoSXlwWFN2NmlKZitk?=
 =?utf-8?B?VFFZcjE2M0lIY0xWazUyMnA4OFdtRDNNTlExRlpiTFR1MHJyNHlicFZqUzc4?=
 =?utf-8?B?eVc3NFBPN1VKN3BIOXVBMWM3YVBzRGtyc2lEbjJNQThROVp0UUwwSHRUeFJi?=
 =?utf-8?Q?bnFKagGczYAzGQNfZBRVqjQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C7726DEA36458E43A2DD85023C77022F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 885ce77c-11ca-4c6d-0922-08dc0d4c12d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2024 17:39:16.3521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8BfijDWEHFVyucdxSlk2LVDuHYgU0JVwvIdaHc4gFVsxXix8ZB9W8XG6hkgCdfSdgFzrAEttOanMg3AR9skAf/aTMTnMs8Ec2c0MqPf2QXXGXDkkBdbOxyL596tBbTMo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7764
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjU3ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOiBSZXNvbHZlIHN1c3BlbmQtcmVzdW1lIHJhY2luZyB3aXRo
IEd1QyBkZXN0cm95LWNvbnRleHQtd29ya2VyIChyZXYxMykNCj4gVVJMOiAgICBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEyMTkxNi8NCj4gU3RhdGU6ICBmYWlsdXJl
DQo+IERldGFpbHM6ICAgICAgICBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMjE5MTZ2MTMvaW5kZXguaHRtbA0KPiBDSSBCdWcgTG9nIC0gY2hhbmdl
cyBmcm9tIENJX0RSTV8xNDA3Nl9mdWxsIC0+IFBhdGNod29ya18xMjE5MTZ2MTNfZnVsbA0KPiBT
dW1tYXJ5DQo+IA0KPiBGQUlMVVJFDQphbGFuOnNuaXANCg0KDQo+IEhlcmUgYXJlIHRoZSB1bmtu
b3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEy
MTkxNnYxM19mdWxsOg0KPiANCj4gSUdUIGNoYW5nZXMNCj4gUG9zc2libGUgcmVncmVzc2lvbnMN
Cj4gDQo+ICAgKiAgIGlndEBnZW1fZWlvQHdhaXQtd2VkZ2UtaW1tZWRpYXRlOg0KPiAgICAgICog
ICBzaGFyZC1tdGxwOiBQQVNTPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzE0MDc2L3NoYXJkLW10bHAtMy9pZ3RAZ2VtX2Vpb0B3YWl0LXdlZGdlLWltbWVk
aWF0ZS5odG1sPiAtPiBBQk9SVDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMjE5MTZ2MTMvc2hhcmQtbXRscC00L2lndEBnZW1fZWlvQHdhaXQtd2Vk
Z2UtaW1tZWRpYXRlLmh0bWw+DQo+IA0KYWxhbjogZnJvbSB0aGUgY29kZSBhbmQgZG1lc2csIHRo
aXMgaXMgdW5yZWxhdGVkIHRvIGd1YyBjb250ZXh0IGRlc3RydWN0aW9uIGZsb3dzLg0KSXRzIHJl
YWRpbmcgYW4gTUNSIHJlZ2lzdGVyIHRoYXQgdGltZXMgb3V0LiBBZGRpdGlvbmFsbHksIGkgYmVs
aWV2ZSB0aGlzIGVycm9yIGlzIG9jY3VyaW5nIGR1cmluZyBwb3N0LXJlc2V0LWluaXQgZmxvd3Mu
DQpTbyBpdHMgZGVmaW5pdGVseSBub3QgZG9pbmcgYW55IGNvbnRleHQgZGVzdHJ1Y3Rpb24gYXQg
dGhpcyBwb2ludCAoYXMgcmVzZXQgd291bGQgaGF2ZSBoYXBwZW5uZWQgc29vbmVyKS4NCj4gS25v
d24gaXNzdWVzDQo+IA0KDQo=
