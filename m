Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3157F82BED5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 12:03:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FEE610EACB;
	Fri, 12 Jan 2024 11:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A21FE10EACE
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 11:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705057398; x=1736593398;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eWM04UExFQwC4kKZzGT5AmtF/csNLItl3xI8pgW/MYg=;
 b=dMXtAsbpVxstB0tEbwafw3I45LtPhCEWexM4hmAErcj+0gr5QmGqe9UK
 joX8GiUvpm20WNa5E+ZaIuQWE6ovgodHFTMpsCpz8il1hdMVBcI1w32sI
 sszlyRKI+2wGB2X3En3a9vzLd400fBL7bPh/fz9byvN2xR8l+22EHG3aO
 NN6iOjp4pbpV0z2xYrwtvPAOesu/VcsDlV4XOoO2N/qrtG3Bq5Gzd7HIL
 DtACfWitToTBupvrnGAd1ShEfN/2gy6dyF+Z7VGCb3EejF5ZsfSUbHpdl
 b3KTX3X+kCgLtYGCjpBuWhfxNQnTnsTS7e/FZIIKne+jgB5dQ7+tix6sB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="396285430"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="396285430"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 03:03:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="853262123"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="853262123"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 03:03:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 03:03:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 03:03:16 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 03:03:16 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 03:03:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Umhae7fJuwFbcigoKN2EhdiVkaW424NeYJd1U3AHPHs6Ya9UcAQn+rgDWvqj2IqsguSDakxyMeoiWTVWhVVQOTUBrjatfRXJ/0Pwm6HPNZUuqqzhLsSJO6IX9cTzvuarhrziScQA8ZsoyWAXZ3+DQTaCvwJ0yTMncUZKKZ/1KmKFS2G4tnQd54Dgb3UeXGPE9wL5PuQX0QdU80RoDFIcW+A1YZZOEBx8bokKxcf+I2rGYe+TlkgS843sp7VByqtSIeWdloplILi2KyDkw49SV4estTNGFXXhU/e+BqLi25cSybcNJ/5d2fibt15dbMO1KNa3TKzwgGUypWqIS+DtVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eWM04UExFQwC4kKZzGT5AmtF/csNLItl3xI8pgW/MYg=;
 b=OvSV70LUQMWMLyatUtN21Xn0OLJ+JD8ZFoyZc+PkrfI809bTss8zGDeGBwBN/ApcFcdyE7u5uSUM1Ds8sCXCeC2ymwIjkXIdd/DkDBJn5OtZxZvtSB0jppVh7DANrnugr4XmlkaslEmUbUiJI0TKtwSS9ABmMLvfGP/ueJ+IU4/Uo4R6iO4vTrvo4vcG5GlwxkYeDSXXtuy7hCQNv8PF3ouDheCNYhmKdgrSF32HkTKMtsw/bqmQNoDqrWgZ7gvic8H9vojQaf5fbZfUHfBN6Cgknlv5zyVTA0gfOPFKw9Nh5UW2R7AUtkS3kdz9duKSUyRSCaSbJNFwmiL1jwSy7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA2PR11MB4970.namprd11.prod.outlook.com (2603:10b6:806:11f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.21; Fri, 12 Jan
 2024 11:03:09 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74%4]) with mapi id 15.20.7181.019; Fri, 12 Jan 2024
 11:03:09 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 05/13] drm/i915/psr: Rename has_psr2 as has_sel_update
Thread-Topic: [PATCH v2 05/13] drm/i915/psr: Rename has_psr2 as has_sel_update
Thread-Index: AQHaQ8bpOVD1KqrwukGxkTOqwo0+aLDWA6cA
Date: Fri, 12 Jan 2024 11:03:09 +0000
Message-ID: <PH7PR11MB5981D372A4EEE2A36C393A24F96F2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
 <20240110131304.2470006-6-jouni.hogander@intel.com>
In-Reply-To: <20240110131304.2470006-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA2PR11MB4970:EE_
x-ms-office365-filtering-correlation-id: a972cb3f-caef-4f06-acba-08dc135e0fb5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G8t/rroJQT2oJ33lqDo1S8gAf/1wN4CeMjZgjYQDQUmfs5g1Gw5NRggHSwt+LGDgdigOVzN28A4ycN0zjsvczj5IbkkQ+tgoAR15l/o3cy17wBQXgWvRudd1ml3p4DqHpsNpoSoSquwnbc1nJj/MN2BFhcf3LBrnPjePCzX0QXq14ZuwNOC4XI8bvpvAPGrrJYzP/qUKtWSG/p0mx6vljpkNtIn4vALfbXbmxCZW2vI/e6Cnq84zanyMNxc+rAv6W5+9CKLaEmq/1ro276hLBLv4JnvlMJdrsIWoN/SIR4XsJ+VKKLYvi8umC5BXXurV/e0HirQ8foE5IXRgjEyYlMywLvri8PHXqt6KcOmuIbhwxmfVVqhHRmylPlWqM3dDmEAwbkXNSvM0wvEmxoFOcA/fs/HDzzIGChr5mOeO+xPKcVyVlQ/GcMCRzJPE6iGcBma6pwxncfVnV7dmncjJ1uG+stmcweKVIsmLkj1FkUNDLs8LIpKj8Qvj0ppxexYB3FCK8FiZEzgKjaMwJgGsPMMnbz7W0fwX3DmgEtcdd6yLjibepjmVGaIqidZcqCb8MEe/h7ZoKpaX1kUGUl3Wj924h+9+DoXGD0w/gpPEFLBMKsxKVXc11SprASllxxvM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(346002)(39860400002)(396003)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(52536014)(2906002)(5660300002)(33656002)(478600001)(86362001)(82960400001)(71200400001)(38070700009)(38100700002)(55236004)(26005)(9686003)(53546011)(66574015)(83380400001)(122000001)(41300700001)(7696005)(66446008)(6506007)(66946007)(316002)(110136005)(66556008)(66476007)(64756008)(8936002)(8676002)(76116006)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDlPVGRPWFMrbWRFK2hJR1NTOHdPNWRIY3ROT0o5ajBMWGhnVEdxTlJsRFZR?=
 =?utf-8?B?WWxDcGR5VXI0V3ROWFlTZDZZNk1HSDRWOHRpaVlNdVU2Qk5FclQyMVJydzZj?=
 =?utf-8?B?R0NGNEFCdURhNXgwelgyYnk1bTl5TWdLUHFDc2hTaFI3WGUzT2ZKb2NhNjhY?=
 =?utf-8?B?YUh2RlFKcVBWRml5c2tadXpJcHViUG1EOUMrUTgzSjV1VUVVZUp3RVVidkFL?=
 =?utf-8?B?YlR3em55enZUVW9tZ2pRTStSQ0xJNnZQMWlHdDU4STRkUzV6WWx1YWF6dVF0?=
 =?utf-8?B?cVl4SWNlMGcrNU5hRUd0WU9ETFI2ZDBmZ1R6WEdMWDkvbUpFb0lpdVFYcjQv?=
 =?utf-8?B?ZFBpMTJZSXdGZ3JjQStKaHdaUFR0aisxd3hWOFZNSTlwQmdQazVtdCtSVU5E?=
 =?utf-8?B?Tld2NWpidEdPbXd4UzBkZzFqV1lFVzN4a1lkdzZ0OUZtZEc3RFVIOGF1K0E1?=
 =?utf-8?B?RXNBeDU1Y3JMV3Z1ajVXVEdYS3FXQllCTDMwTlI0czFJZ0ZiN0RlSGd4ZFFs?=
 =?utf-8?B?T3haK0MwK21tSk1VYzRVWlg5dkdNVHo0NnFyNFJFKzEwOWJqOWRTY3R3Ritl?=
 =?utf-8?B?a3NvQW8wRUpkRGxEWUxpVTllQUNVTlduYkg4c0xnY1NvRit6Z0M3VHlzWTBE?=
 =?utf-8?B?K0NEWG9qYmZGS0lZL3dZbFZLWDMwbmtrNWQ5V3hGNHdLdmx6bC91NlpWNnNo?=
 =?utf-8?B?VzZPTy9WR3NqTnFyMHRPZm45VjdJVFU3MXVNWDJmYVBuVzQrUE9lYlFQYlJh?=
 =?utf-8?B?TlhPbXlTelNab1RabDJZUWp5aVdmcVpxSnhSRGNmWlFwVnJKNlRrNG1HNzlv?=
 =?utf-8?B?QXlDODJQM04wNHg0TU5kY3lPZit6cGJXMDNQWVVRSGdZb2RVRWd0SEdjMjBi?=
 =?utf-8?B?UHF3U3lKSHluSXVrcVRZakZnL1Q1V0E3aklUOFhFU0xSRHpuMjRMZnF4ck9J?=
 =?utf-8?B?TGFTa3c2dUUyWlNoR3I3UjgrbHZFRzJ2T1dpY2JrZ3hFVTg4NFlOY2dDSllR?=
 =?utf-8?B?aUdQOHAxYVdRSllMSVBHVDRvb3A3TG9GV1lleE90NHFiTTlrY3RrUmVidlg1?=
 =?utf-8?B?TDcvSnJsZjBOQ1UyQVR0bXl2MkZTZmQxMExHMGVwS2pxMTVQRndrREpKRjVS?=
 =?utf-8?B?UWJRYkxwRHNkS3ZRSnNaY1hrQ1JrRTVYbTdaeGRGNldkTHNyUnZ6YnU5bU1w?=
 =?utf-8?B?UzV6OFNaUWNiZnJrS3BNSll2cExSVEVMSXpTQnVnb1VFalpxcyswQ2FYMlJz?=
 =?utf-8?B?TC92MWtDZTRGRTludWpuNXFrWHJKbWtXY2pkMmRuOXIxV2FYRktNVTBFMVBQ?=
 =?utf-8?B?MjR5Q3JHMFF6b2trdkZQRnNZM05JQTVVWjBXVFlTQ0NSVUZrZ2FZaVUvYk4x?=
 =?utf-8?B?dEhHWUFDT1BocnNOWUx2NERJOWtaVnZMUGNXUUUxeGlDKy85TlVyVG42U3dG?=
 =?utf-8?B?MnE1SnNtTFE3cTNCMTVIRjhJd0prWFY0WU5MTmVGWkEzckNkSExISGNLSnU2?=
 =?utf-8?B?UlZBQjNnUUFzL1M1YW11N2NGL3B6U1k4VDRpK2ZTMnZVM2ZCU1lwbVFsemoy?=
 =?utf-8?B?QTJ6L0didExHU0dqUGxwYWNOaEJ4TjBVaFlraWNoTjlpWWpjRzRZZS81aEFK?=
 =?utf-8?B?N2lXU0R2V1g3VmxCWndONjQrRHQzWEVXeGs3SlNhcEpZWUo2bk0yMEVhUkdY?=
 =?utf-8?B?ZG5WWU54VEhyc1BtMlMwUVVTcXc3UUNhRTVHOS9GckpmNzI5ejVOM2VBUVB4?=
 =?utf-8?B?SmdueU5OcG94SGs2UEJQYVRIMFdJdmR3UzVibUM4c0tKeE5OelZrZDA5MjEx?=
 =?utf-8?B?WkliT2sxM0djRTFEZml1WlA5Q0ljVTZYSDlDSlJlOHVnNkx5ajBJNS9ISjBI?=
 =?utf-8?B?V1ZiNHJDN2ozTTlOZkxyWFJmcEFlWFdCKzVQVzBsYTFvVzRWd3EwUnU1bDZU?=
 =?utf-8?B?a09YbWlDNG55RHNBcDRGWUdpOEtQRk80dXhxSCt4eXBrYi9sclRFdC9LbTRM?=
 =?utf-8?B?aWhhSkJwbVZQTEFqbjByei92TmtlYnRsc3g2Q2JkR0lKbkJKWHpLTC9MWE11?=
 =?utf-8?B?cnBBcFV4QkF6U3JKYkNaRTBKT21FL2lidG9LOVhNQ2w4UXpVeXIxQkc3enB6?=
 =?utf-8?Q?7yQO1Tp4szCtvMoI+GH0/UnAa?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a972cb3f-caef-4f06-acba-08dc135e0fb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 11:03:09.0667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ifUR5P9Yq1LNW6v2GVXF9g5jIz/cvNlkXAaJzwmXj6NK0eHlyVGed9wgc1TAiip1YXWNhClVguLPPpZEStV37A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4970
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5IDEwLCAyMDI0IDY6NDMgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENI
IHYyIDA1LzEzXSBkcm0vaTkxNS9wc3I6IFJlbmFtZSBoYXNfcHNyMiBhcw0KPiBoYXNfc2VsX3Vw
ZGF0ZQ0KPiANCj4gV2UgYXJlIGdvaW5nIHRvIHJldXNlIGhhc19wc3IyIGZvciBwYW5lbF9yZXBs
YXkgYXMgd2VsbC4gUmVuYW1lIGl0IGFzDQo+IGhhc19zZWxfdXBkYXRlIHRvIGF2b2lkIGNvbmZ1
c2lvbi4NCg0KQ2hhbmdlcyBsb29rcyBnb29kIHRvIG1lLi4NCk9ubHkgbml0cGljazogVGhlIGRv
Y3VtZW50YXRpb24gcGF0Y2ggZGVzY3JpYmluZyBhYm91dCBwc3IvcGFuZWwtcmVwbGF5L3NlbGVj
dGl2ZS11cGRhdGUgZmxhZ3MgbWF5YmUgZ29vZCB0byBwdXQgYmVmb3JlIHRoaXMgcGF0Y2guDQpS
ZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQogDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNf
c3RhdGVfZHVtcC5jIHwgNSArKystLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgICAgICAgICB8IDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgfCAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgICAgICAgIHwgMiArLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyAgICAgICAgICAgICB8IDIgKy0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgICAgICAgICAgfCA4ICsr
KystLS0tDQo+ICA2IGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3J0Y19zdGF0ZV9kdW1wLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NydGNfc3RhdGVfZHVtcC5jDQo+IGluZGV4IDQ5ZmQxMDBlYzk4YS4uNWVkYmM5YjNkNzY2
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNf
c3RhdGVfZHVtcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3J0Y19zdGF0ZV9kdW1wLmMNCj4gQEAgLTI2Niw5ICsyNjYsMTAgQEAgdm9pZCBpbnRlbF9jcnRj
X3N0YXRlX2R1bXAoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmln
LA0KPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAic2RwIHNwbGl0OiAlc1xuIiwNCj4gIAkJ
CSAgICBzdHJfZW5hYmxlZF9kaXNhYmxlZChwaXBlX2NvbmZpZy0NCj4gPnNkcF9zcGxpdF9lbmFi
bGUpKTsNCj4gDQo+IC0JCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJwc3I6ICVzLCBwc3IyOiAl
cywgcGFuZWwgcmVwbGF5Og0KPiAlcywgc2VsZWN0aXZlIGZldGNoOiAlc1xuIiwNCj4gKwkJZHJt
X2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gKwkJCSAgICAicHNyOiAlcywgc2VsZWN0aXZlIHVwZGF0
ZTogJXMsIHBhbmVsIHJlcGxheTogJXMsDQo+IHNlbGVjdGl2ZQ0KPiArZmV0Y2g6ICVzXG4iLA0K
PiAgCQkJICAgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVfY29uZmlnLT5oYXNfcHNyKSwNCj4g
LQkJCSAgICBzdHJfZW5hYmxlZF9kaXNhYmxlZChwaXBlX2NvbmZpZy0+aGFzX3BzcjIpLA0KPiAr
CQkJICAgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVfY29uZmlnLQ0KPiA+aGFzX3NlbF91cGRh
dGUpLA0KPiAgCQkJICAgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVfY29uZmlnLQ0KPiA+aGFz
X3BhbmVsX3JlcGxheSksDQo+ICAJCQkgICAgc3RyX2VuYWJsZWRfZGlzYWJsZWQocGlwZV9jb25m
aWctDQo+ID5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpKTsNCj4gIAl9DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGM1ZGU0NTYxZjQ1
OC4uNDMzMjc2ZjI0YWU0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNTIxNSw3ICs1MjE1LDcgQEAgaW50ZWxfcGlwZV9jb25m
aWdfY29tcGFyZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25m
aWcsDQo+IA0KPiAgCQlpZiAoY3VycmVudF9jb25maWctPmFjdGl2ZV9wbGFuZXMpIHsNCj4gIAkJ
CVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19wc3IpOw0KPiAtCQkJUElQRV9DT05GX0NIRUNLX0JP
T0woaGFzX3BzcjIpOw0KPiArCQkJUElQRV9DT05GX0NIRUNLX0JPT0woaGFzX3NlbF91cGRhdGUp
Ow0KPiAgCQkJUElQRV9DT05GX0NIRUNLX0JPT0woZW5hYmxlX3BzcjJfc2VsX2ZldGNoKTsNCj4g
IAkJCVBJUEVfQ09ORl9DSEVDS19JKGRjM2NvX2V4aXRsaW5lKTsNCj4gIAkJfQ0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0K
PiBpbmRleCA2MzQwZmFiZDA0NWMuLjhmZGFiMmYwYzU0NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTEy
MTEsNyArMTIxMSw3IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsNCj4gDQo+ICAJLyogUFNS
IGlzIHN1cHBvcnRlZCBidXQgbWlnaHQgbm90IGJlIGVuYWJsZWQgZHVlIHRoZSBsYWNrIG9mIGVu
YWJsZWQNCj4gcGxhbmVzICovDQo+ICAJYm9vbCBoYXNfcHNyOw0KPiAtCWJvb2wgaGFzX3BzcjI7
DQo+ICsJYm9vbCBoYXNfc2VsX3VwZGF0ZTsNCj4gIAlib29sIGVuYWJsZV9wc3IyX3NlbF9mZXRj
aDsNCj4gIAlib29sIGVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldDsNCj4gIAlib29sIHJlcV9wc3Iy
X3NkcF9wcmlvcl9zY2FubGluZTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiBpbmRleCA3ZTRiN2Q1NjA2ZDQuLmEyNmRiNDAxMjE3MiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMjYzMyw3ICsyNjMzLDcg
QEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfY29tcHV0ZV92c2Nfc2RwKHN0cnVjdA0KPiBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ICAJaWYgKGludGVsX2RwX25lZWRzX3ZzY19zZHAoY3J0Y19zdGF0ZSwg
Y29ubl9zdGF0ZSkpIHsNCj4gIAkJaW50ZWxfZHBfY29tcHV0ZV92c2NfY29sb3JpbWV0cnkoY3J0
Y19zdGF0ZSwgY29ubl9zdGF0ZSwNCj4gIAkJCQkJCSB2c2MpOw0KPiAtCX0gZWxzZSBpZiAoY3J0
Y19zdGF0ZS0+aGFzX3BzcjIpIHsNCj4gKwl9IGVsc2UgaWYgKGNydGNfc3RhdGUtPmhhc19wc3Ig
JiYgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpIHsNCj4gIAkJLyoNCj4gIAkJICogW1BTUjIg
d2l0aG91dCBjb2xvcmltZXRyeV0NCj4gIAkJICogUHJlcGFyZSBWU0MgSGVhZGVyIGZvciBTVSBh
cyBwZXIgZURQIDEuNCBzcGVjLCBUYWJsZSA2LTExDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCBmMTdhMWFmYjQ5MjkuLjY0N2RkMWI1NjA3MyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC0x
MjM1LDcgKzEyMzUsNyBAQCBzdGF0aWMgaW50IGludGVsX2ZiY19jaGVja19wbGFuZShzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkgKiBSZWNvbW1lbmRhdGlvbiBpcyB0
byBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQNCj4gIAkgKiBCc3BlYzogNTA0MjIgSFNE
OiAxNDAxMDI2MDAwMg0KPiAgCSAqLw0KPiAtCWlmIChJU19ESVNQTEFZX1ZFUihpOTE1LCAxMiwg
MTQpICYmIGNydGNfc3RhdGUtPmhhc19wc3IyKSB7DQo+ICsJaWYgKElTX0RJU1BMQVlfVkVSKGk5
MTUsIDEyLCAxNCkgJiYgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpIHsNCj4gIAkJcGxhbmVf
c3RhdGUtPm5vX2ZiY19yZWFzb24gPSAiUFNSMiBlbmFibGVkIjsNCj4gIAkJcmV0dXJuIDA7DQo+
ICAJfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5k
ZXggODE1N2ExZWFjOGMyLi4zZDAwYjRlMzk2ZGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTQxMyw3ICsxNDEzLDcgQEAgdm9pZCBpbnRl
bF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAlp
ZiAoIShjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5IHx8IGNydGNfc3RhdGUtPmhhc19wc3Ip
KQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtCWNydGNfc3RhdGUtPmhhc19wc3IyID0gaW50ZWxfcHNy
Ml9jb25maWdfdmFsaWQoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiArCWNydGNfc3RhdGUtPmhh
c19zZWxfdXBkYXRlID0gaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoaW50ZWxfZHAsDQo+ICtjcnRj
X3N0YXRlKTsNCj4gIH0NCj4gDQo+ICB2b2lkIGludGVsX3Bzcl9nZXRfY29uZmlnKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLCBAQCAtMTQ0Niw3DQo+ICsxNDQ2LDcgQEAgdm9pZCBpbnRl
bF9wc3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJcGlw
ZV9jb25maWctPmhhc19wc3IgPSB0cnVlOw0KPiAgCX0NCj4gDQo+IC0JcGlwZV9jb25maWctPmhh
c19wc3IyID0gaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQ7DQo+ICsJcGlwZV9jb25maWctPmhh
c19zZWxfdXBkYXRlID0gaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQ7DQo+ICAJcGlwZV9jb25m
aWctPmluZm9mcmFtZXMuZW5hYmxlIHw9DQo+IGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShE
UF9TRFBfVlNDKTsNCj4gDQo+ICAJaWYgKCFpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkNCj4g
QEAgLTE2NjEsNyArMTY2MSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2Vk
KHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IA0KPiAgCWRybV9XQVJOX09OKCZkZXZf
cHJpdi0+ZHJtLCBpbnRlbF9kcC0+cHNyLmVuYWJsZWQpOw0KPiANCj4gLQlpbnRlbF9kcC0+cHNy
LnBzcjJfZW5hYmxlZCA9IGNydGNfc3RhdGUtPmhhc19wc3IyOw0KPiArCWludGVsX2RwLT5wc3Iu
cHNyMl9lbmFibGVkID0gY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGU7DQo+ICAJaW50ZWxfZHAt
PnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCA9IGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXk7
DQo+ICAJaW50ZWxfZHAtPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMgPSAwOw0KPiAgCWludGVs
X2RwLT5wc3IucGlwZSA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+cGlw
ZTsNCj4gQEAgLTIzMjgsNyArMjMyOCw3IEBAIHZvaWQgaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRh
dGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCW5lZWRzX3RvX2Rp
c2FibGUgfD0NCj4gaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKTsNCj4g
IAkJbmVlZHNfdG9fZGlzYWJsZSB8PSAhbmV3X2NydGNfc3RhdGUtPmhhc19wc3I7DQo+ICAJCW5l
ZWRzX3RvX2Rpc2FibGUgfD0gIW5ld19jcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzOw0KPiAtCQlu
ZWVkc190b19kaXNhYmxlIHw9IG5ld19jcnRjX3N0YXRlLT5oYXNfcHNyMiAhPSBwc3ItDQo+ID5w
c3IyX2VuYWJsZWQ7DQo+ICsJCW5lZWRzX3RvX2Rpc2FibGUgfD0gbmV3X2NydGNfc3RhdGUtPmhh
c19zZWxfdXBkYXRlICE9DQo+ICtwc3ItPnBzcjJfZW5hYmxlZDsNCj4gIAkJbmVlZHNfdG9fZGlz
YWJsZSB8PSBESVNQTEFZX1ZFUihpOTE1KSA8IDExICYmDQo+ICAJCQluZXdfY3J0Y19zdGF0ZS0+
d21fbGV2ZWxfZGlzYWJsZWQ7DQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
