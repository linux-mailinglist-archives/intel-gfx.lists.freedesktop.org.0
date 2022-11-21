Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F2C632A64
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 18:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FF2B10E30C;
	Mon, 21 Nov 2022 17:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D648810E30C
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 17:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669050466; x=1700586466;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ljse+xlnkRlyVav8M0xcYneGACYO6hnP2tN+xTU5A7U=;
 b=J/BZGuWesYFOZ0VmrFsYNoedyzrRfyBXmMnabOlqdPrhxDHZRlZF9iNh
 ZbH/m0Dy49287DHc/TBQFoPo7AhRGI98enWKNDC3BdO71IKoCmTUKdEIY
 PSzGguyYIZz8ztq8dcvbgo0+sSWMozoFy5h/0VBkRjExf4n9f9CZGdScr
 7iUMoQQ1w/L+UpAts5+g3nmqur31OxF+BszRqBSe3Y/ivKNyEGCebmJD7
 lEkkyiOswrL4nNl56dz4Nw2oCmXx4TfNb+3aGJ2kqKZTTYVehDLXDKkjn
 V5TIV6n+tfB7H6m+f5FmaP8YIM94ewgFSuSYwA8d2F58MeQeeuR00+Ew0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="315430386"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="315430386"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 09:06:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="783517381"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="783517381"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2022 09:06:22 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 09:06:22 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 09:06:22 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 09:06:22 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 09:06:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NvDi1C+ik2/b5z//jB5eEiVafoltt3Q9XyguYmIrmi94U5BsL9+998EejIA458nmIvUjX55YW/DUOBNdJkivJ2qs/O2cbK9w31I6nIt397IolgWBQChwJ6owMSKUTcotkFo4TdlCsB7HWIkEZZUups6O7bRdRhkBS70lTFftuiSyg6eQmYMGI5lBs06xwlLaMexnVsae2VyU8w00NueLf4iOkEf4KSfWCiXJoMpaYxBW7XfyEUD2kmd3KERFx3uEzt+YfI/nD9J+7lUgNER9iopt9N6MelfJ3i6EgD12anZ897Jr1xY78TpK25vL/YX2l/IrmatPFGCD0gZuTH3Drw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ljse+xlnkRlyVav8M0xcYneGACYO6hnP2tN+xTU5A7U=;
 b=iXpr5SCtuUqvDvEKgvk0XX4a085oqUefuhhR1ZnQmhlXZbG19umKT61LO3nEvMhEy9Dk2uXQnR8Lb5cu0e9Ej9Mj7gtNsTAokEmTk62put7FWXRHkIfZk4DU9lwcxXTyBBwdM2lh8Pu97KjZEj+MslUdYwFRzmogdAMq/A2zloldQucKjHlEmPeNV0sLDqh/r1K3U++fp8bXtyo3Tj3hvI9DRduqNOXmv8icEN7ylqUr75tm6Lbi52xx+o4gmMDcXzlmtslUyZtWf274eeyFWIHxpg4qBAtzwVWkN8RpIfq+rTr4Csgfe0jdECSQcrdhtJ3vyNL7QV+c3DEuMLONNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DS0PR11MB7632.namprd11.prod.outlook.com (2603:10b6:8:14f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.15; Mon, 21 Nov 2022 17:06:20 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%8]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 17:06:20 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "tvrtko.ursulin@linux.intel.com"
 <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
Thread-Index: AQHY+huC07hRuiUUpkeQbbJYwqcxJq5DR+AAgABuNACABZGagIAAW/IA
Date: Mon, 21 Nov 2022 17:06:20 +0000
Message-ID: <290576457f95e680fa29842fccc585cf1aae8cd9.camel@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
 <Y3ZbLA2nenwp29u/@intel.com>
 <0067b884a5787ea4fbf5d6dffc5e7d4219a23585.camel@intel.com>
 <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
In-Reply-To: <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DS0PR11MB7632:EE_
x-ms-office365-filtering-correlation-id: aae9d7a4-905a-4ba3-32df-08dacbe2b617
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qoT+FEGcqEhJ2LCBCx0N5DmD7OFO2E3dDuMyLG2gc1tHRod9D79qN/ConTjMXJJt6NZh34FZMUgiHvbw5OG4BnltW264bDpdULtKQBLWmy05n7jNfFVXtiFqLl3gUoj2nQLMdUURmb/RvdK2lBDICRzEd+6BMFs1qiHQmypr5yJG7Nyv1YWnSutReVjqEm6ilZbxinuLBUMqiOKJ2IaMAoYSrgl47AWG0JKocKO1tg3yLwhL4rsPZp0QBCC58FaNToXfqm+o4/GYlT7B0+TikHoXF6Rwm/QnNAZkUejDS3maYri/elkCuJjRtAsMUhjPDJ5D/GZowaEQEEDPyMt4cxZPYep6Xd1w/y2dMiN9nmp7CkoGyrC7I9VFGQBQ9udDmlNzRxM+JDJZ8Pde+zs75XrRrNgdgEzvW58HsGo1wwlZ5OgIohLhewlLho8HYMr3KE8TQQQiZmYsQJAkwFrGR9h18H9jb1GdDJMESXlXQY1IoEg8KY2SrXao+PkeWP6qRQFbNBpsgoMNOIHq6WgpDY55fF3jJVt7ZI8IqoJcIM41HfVvWMUd/CzcWXEiT3qyNXlP7tCR9AfrScGkwrXS6zfNlggD+MREMfs4d8DPObR0YPas6I/GKiq2LZf8tPlD8ko17F8JfJzgwsPouPjb4KsYBtVo+R8qQPkh9+Zg1SC3brYBnN4RtNqNJf6G+2dIIbVjKbbkYqK4UI6EkVQNig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(396003)(39860400002)(136003)(451199015)(2906002)(38070700005)(2616005)(186003)(26005)(478600001)(76116006)(66946007)(66556008)(6512007)(6506007)(4326008)(5660300002)(316002)(38100700002)(64756008)(8676002)(53546011)(66476007)(66446008)(91956017)(36756003)(8936002)(6486002)(122000001)(83380400001)(82960400001)(86362001)(41300700001)(110136005)(4001150100001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cW44NXFLdk1WTTJXc250d0E1MTZVbGhIUDlaNjJENUZVTlBwSlBzbEhQNi9S?=
 =?utf-8?B?bThkZ3dzT3Fxb1NvMkYxUTBEeDk2RzZvSGszbjJSL3dyUFFka2ZSQ2VRWXh0?=
 =?utf-8?B?Z3FSdHIzcmhPTlFzekhDeVJ4eStSMy90STZhR3d5bWEwbGpaL2tXMVZxUG04?=
 =?utf-8?B?eFA4VnBvVm1ya2JwVllHTGNNMWZwelIyMUZQbUQ1SjVqdUM4aUUyc3RlMU5p?=
 =?utf-8?B?a05NVjloZUJ5S3d6d0NVcFdWNWtWV1g2MHRTOHl0WUo5aWFXMjJXMUVJUitQ?=
 =?utf-8?B?N0pTN0YvOXR4d0ZsVnVoczhSTUtGcVU4MGdzLzRZK2w0ZVlaaHIxblNKcXFO?=
 =?utf-8?B?eXhZeWY4V2EvbTRlK3NnWlFRVnJtdzVqUnZYNkNTOWZtNnNlMTQyM3RHQThQ?=
 =?utf-8?B?dXQ3Q1FHMTlkQnVCYnRXME1OTmxRejg5UnFWNTBsZFM3MXkwbWJLTW1NLzg2?=
 =?utf-8?B?b0VoV3d2RG9YT1h6RkFVd0UvZkN5N0l1eEl3T1k2aTZVNzhxRGp0UWx5VVF2?=
 =?utf-8?B?K1p1LzRob2o2OWNzNUFIQnVKY3phTE01ZnFCUGdZUUJEUXdYcVBTM2puSjZs?=
 =?utf-8?B?LzIxR2VqRWtBdmZpc0VNRlZQSG1TRmZkZVR5YnZsVU43VkFNWEFsSkN5Qnc5?=
 =?utf-8?B?VnpOSzNtTHVnVU96eTNJNU8zVlljdXd1WlRPVDBnSG8vQ2VqZm11UVhUZkFn?=
 =?utf-8?B?VEpPR0F3ZTJiRlMvS2lyT1dxbVYzZHp5UXBBRVl3Uk1uNlVwak5TT0ZDSDBU?=
 =?utf-8?B?NE5kYWVYWU5OZjR1T0FiOU8yT2tFUnprdmpiNkJMblByS2E4UE9RNm9pdUhk?=
 =?utf-8?B?WHUxa3F0ZXM3OWdoVkdQSEZ6eUpQQWExckJIcVoweExVTkh5N1V5Yk53RFdp?=
 =?utf-8?B?aE1kcCthdXpMYUtpcFlGV3JDMktFWWJhcjVUeitUMFUvK1MzL1BubStid3JZ?=
 =?utf-8?B?TGlScEhVcEtNSkpCUy9GN0l4M21OdTNDZEN1NWFxSC9ybGhqcEVDVkxPdDQ0?=
 =?utf-8?B?czFJRGJuK3ZKaXkvYm1NTHRiL1hFZTBMeEZ1NW1FMVFjaGxOWHZMMzVOeFhT?=
 =?utf-8?B?V0ZHS3RXeWVZVmhUUjdiVnovWDNUL0o0YzhuQ1MxVmlDYXRyckRIMHZwZUsr?=
 =?utf-8?B?cDVhVHBtc24xNWo2LzFFUWxhS1VtQS9LeG1kZ1BZWmxuWlJSZm9nVVBzWXhT?=
 =?utf-8?B?b1RPSXVsSUxjckNCOXdRTTR5YjRITmE1WjdDaDBGcGNyOXVKMHZqU0hBMWFl?=
 =?utf-8?B?U3BrMXFmWjJHdW9Hc25xVEFvbzJYTlhXSGgrbWdpLzY1QUx0MHVsUHlhVUN2?=
 =?utf-8?B?cU96M0JhMkhoQm1GRXZzdmRQajNUbEp4WGRtOU1DS1prRmd0R2d0VEEyU2gr?=
 =?utf-8?B?UXJFeCtsRUhKdGFReVVhZlFJKzhpNlEwVmVvZVh3QlFHMzZnYzQzOXFJdVVl?=
 =?utf-8?B?VlB6L3hWTktIMWxQUzdaNTd1SUdIVC9rczkxVU0rb0QvQmwvRmovZTVFb3NB?=
 =?utf-8?B?dmE0LzRCdlkyN3JiT1E2cklIMUN1b3FxeVNISVAyMXpuZUE3ZzgwM0ZvUElB?=
 =?utf-8?B?WVppREdCUXhOQ3d0K3BoQU02eVAvNTNGYVFkTFNTbGdXeXNMazFoM3VWRE9U?=
 =?utf-8?B?U0ppS1JDS3lwWmg1M0Y1ODJLY1MzQ2QrTjVLRXppWTlNdW1RWjVhOE9tb0Zk?=
 =?utf-8?B?OGd4TDhROC9qMEkrRXloQlBNcVNJbGdCckUvZFdvWGxNeko1d0djRE1qRHVw?=
 =?utf-8?B?S2N3Y21KcTYva0dTdGlaaGpKMlN2VlJpN1BLenFrRTVKSEcwLzJOUXVQN1M1?=
 =?utf-8?B?V3ZQVUhzMVZncXllbzdBWVdaSWZDdDJrdnVqVFVjbzBPZjhHaW1sN0FWb0J6?=
 =?utf-8?B?Wm1KMDMvSjhXNzJhYmhJQVU0RHlhMVpReFZoNTRtaW9qTkVlWTVnRkRKZS9D?=
 =?utf-8?B?VVRaTWQ2ak5ZTUR5ZGJnbFBwNmpxVUR6Q3hmdmUrWWF3MzRGbUsvS29nallU?=
 =?utf-8?B?T1NwVVk2ZFlNejVZYmljZk9Ca1BNbjNoL1YyeGI1ZXcrOXprNnY4dE5PdzFt?=
 =?utf-8?B?cDI2T3UramlCZkQ1L0pneXQraWd0TFBzay9BV1d1UThZYmcyYm44c3BscVVj?=
 =?utf-8?B?bXI5Lzl3ZUdCNzQ0OENQUzVaWC91cmZaYkU0NHl3OFZuNGlhL0ZFa0pJQTBV?=
 =?utf-8?Q?nwIwDA6bpkBncNR9vxUXgbY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <58C1F22FBFA5A74AA10DCA72B5B6B15A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aae9d7a4-905a-4ba3-32df-08dacbe2b617
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 17:06:20.3742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OzSrVP2Jiha/TMnpkcTsOeFSA8WX1LgN0jDe8FSMNyUxzoMKyZDe6hrCS/pok4mPdFM46oF+kEXsUaVvRlPE4Jzq7gMGu+cSJdzCoEVQmZg0BViJT4ILlxfto9dcL+YV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7632
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

DQoNCk9uIE1vbiwgMjAyMi0xMS0yMSBhdCAxMTozOSArMDAwMCwgVHZydGtvIFVyc3VsaW4gd3Jv
dGU6DQo+IE9uIDE3LzExLzIwMjIgMjI6MzQsIFRlcmVzIEFsZXhpcywgQWxhbiBQcmV2aW4gd3Jv
dGU6DQo+ID4gT24gVGh1LCAyMDIyLTExLTE3IGF0IDExOjAyIC0wNTAwLCBWaXZpLCBSb2RyaWdv
IHdyb3RlOg0KPiA+ID4gT24gV2VkLCBOb3YgMTYsIDIwMjIgYXQgMDQ6MzA6MTNQTSAtMDgwMCwg
QWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gPiA+IEluIHByZXBhcmF0aW9uIGZvciBmdXR1cmUgTVRM
LVBYUCBmZWF0dXJlIHN1cHBvcnQsIFBYUCBjb250cm9sDQo+ID4gPiA+IGNvbnRleHQgc2hvdWxk
IG9ubHkgdmFsaWQgb24gdGhlIGNvcnJlY3QgZ3QgdGlsZS4gRGVwZW5kaW5nIG9uIHRoZQ0KPiA+
ID4gPiBkZXZpY2UtaW5mbyB0aGlzIGRlcGVuZHMgb24gd2hpY2ggdGlsZSBvd25zIHRoZSBWRUJP
WCBhbmQgS0NSLg0KPiA+ID4gPiBQWFAgaXMgc3RpbGwgYSBnbG9iYWwgZmVhdHVyZSB0aG91Z2gg
KGRlc3BpdGUgaXRzIGNvbnRyb2wtY29udGV4dA0KPiA+ID4gPiBsb2NhdGVkIGluIHRoZSBvd25p
bmcgR1Qgc3RydWN0dXJlKS4gQWRkaXRpb25hbGx5LCB3ZSBmaW5kDQo+ID4gPiA+IHRoYXQgdGhl
IEhBU19QWFAgbWFjcm8gaXMgb25seSB1c2VkIHdpdGhpbiB0aGUgcHhwIG1vZHVsZSwNCj4gPiA+
ID4gDQo+ID4gPiA+IFRoYXQgc2FpZCwgbGV0cyBkcm9wIHRoYXQgSEFTX1BYUCBtYWNybyBhbHRv
Z2V0aGVyIGFuZCByZXBsYWNlIGl0DQo+ID4gPiA+IHdpdGggYSBtb3JlIGZpdHRpbmcgbmFtZWQg
aW50ZWxfZ3RweHBfaXNfc3VwcG9ydGVkIGFuZCBoZWxwZXJzDQo+ID4gPiA+IHNvIHRoYXQgUFhQ
IGluaXQvZmluaSBjYW4gdXNlIHRvIHZlcmlmeSBpZiB0aGUgcmVmZXJlbmNlZCBndCBzdXBwb3J0
cw0KPiA+ID4gPiBQWFAgb3IgdGVlbGluay4NCj4gPiA+IA0KPiA+ID4gWWVwLCBJIHVuZGVyc3Rh
bmQgeW91IGFzIEknbSBub3QgZmFuIG9mIHRoZXNlIG1hY3Jvcywgc3BlY2lhbGx5DQo+ID4gPiBz
aW5nbGUgdXNhZ2UuIEJ1dCB3ZSBuZWVkIHRvIGNvbnNpZGVyIHRoYXQgd2UgaGF2ZSBtdWx0aXBs
ZSBkZXBlbmRlbmNpZXMNCj4gPiA+IHRoZXJlIGFuZCBvdGhlciBjYXNlcyBsaWtlIHRoaXMgaW4g
dGhlIGRyaXZlci4uLiBXZWxsLCBidXQgSSdtIG5vdA0KPiA+ID4gb3Bwb3NpbmcsIGJ1dCBwcm9i
YWJseSBiZXR0ZXIgdG8gZmlyc3QgZ2V0IHJpZCBvZiB0aGUgbWFjcm8sDQo+ID4gPiB0aGVuIGNo
YW5nZSB0aGUgYmVoYXZpb3Igb2YgdGhlIGZ1bmN0aW9uIG9uIHRoZSBuZXh0IHBhdGNoLg0KPiA+
ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiBBZGQgVE9ETyBmb3IgTWV0ZW9ybGFrZSB0aGF0IHdpbGwg
Y29tZSBpbiBmdXR1cmUgc2VyaWVzLg0KPiA+ID4gDQo+ID4gPiBUaGlzIHJlZmFjdG9yIHBhdGNo
IHNob3VsZCBiZSBzdGFuZGFsb25lLCB3aXRob3V0IHBvcHV0aW5nIGl0IHdpdGgNCj4gPiA+IHRo
ZSBjaGFuZ2VzIHRoYXQgZGlkbid0IGNhbWUgeWV0IHRvIHRoaXMgcG9pbnQuDQo+ID4gPiANCj4g
PiBTdXJlIGkgY2FuIGZvbGxvdyB0aGlzIHJ1bGUsIGJ1dCBpdCB3b3VsZCB0aGVuIHJhaXNlIHRo
ZSBxdWVzdGlvbiBvZiAibm90aGlnbiBpcyByZWFsbHkgY2hhbmdpbmcgYW55d2hlcmUgZm9yIE1U
TCwgd2h5DQo+ID4gYXJlIHdlIGRvaW5nIHRoaXMiIHRoYXRzIHdoeSBpIHdhbnRlZCB0byBhZGQg
dGhhdCBwbGFjZWhvbGRlci4gSSBzZWUgIlRPRE8icyBhcmUgYSBjb21tb24gdGhpbmcgaW4gdGhl
IGRyaXZlciBmb3IgbGFyZ2VyDQo+ID4gZmVhdHVyZXMgdGhhdCBjYW50IGFsbCBiZSBlbmFibGVk
IGF0IG9uY2UuIFJlc3BlY3RmdWxseSBhbmQgaHVtYmx5LCBpcyB0aGVyZSBzb21lIGRvY3VtZW50
ZWQgcnVsZT8gQ2FuIHlvdSBzaG93IGl0IHRvDQo+ID4gbWU/DQo+IA0KPiBTZXBhcmF0aW5nIHJl
ZmFjdG9yaW5nIGZyb20gZnVuY3Rpb25hbCBjaGFuZ2VzIGlzIG9uZSBvZiB0aGUgbW9zdCBiYXNp
YyANCj4gcHJpbmNpcGxlcyB3ZSBmb2xsb3cgKGFuZCBub3QganVzdCB1cykgYW5kIHRoZXJlIHNo
b3VsZCBuZXZlciBiZSANCj4gcHVzaGJhY2sgb24gdGhlIGZvcm1lciBkdWUgbGFjayBvZiBmdW5j
dGlvbmFsIGNoYW5nZXMuDQo+IA0KPiBPbiB0aGUgYmFzaWMgbGV2ZWwgZm9sbG93aW5nIHRoaXMg
Z3VpZGVsaW5lIG1ha2VzIGl0IHRyaXZpYWwgdG8gcmV2aWV3IA0KPiB0aGUgcmVmYWN0b3Jpbmcg
cGF0Y2gsIGFuZCBpbiB0aGUgdmFzdCBtYWpvcml0eSBvZiBjYXNlcyBtdWNoIGVhc2llciB0byAN
Cj4gcmV2aWV3IHRoZSBmdW5jdGlvbmFsIGNoYW5nZSBwYXRjaCBhcyB3ZWxsLg0KPiANCj4gQW5k
IGVhc3kgdG8gcmV2aWV3IG1lYW5zIGhhcHB5IHJldmlld2VycywgZmFzdGVyIHR1cm5hcm91bmQg
dGltZSAoZWFzaWVyIA0KPiB0byBjYXJyeSBhIHJlYmFzZSksIGhhcHBpZXIgYXV0aG9ycywgZWFz
aWVyIHJldmVydHMgd2hlbiB0aGluZ3MgZ28gYmFkIA0KPiAob25seSBzbWFsbCBmdW5jdGlvbmFs
IHBhdGNoIG5lZWRzIHRvIGJlIHJldmVydGVkKSwgc29tZXRpbWVzIGV2ZW4gDQo+IGVhc2llciBi
YWNrcG9ydGluZyBpZiBjb2RlIGRpdmVyZ2VkIGEgbG90Lg0KPiANCj4gT2gsIGFuZCBpdCBldmVu
IGhhcyBwb3RlbnRpYWwgdG8gZGVjcmVhc2UgaW50ZXJuYWwgdGVjaG5pY2FsIGRlYnQuIE9mdGVu
IA0KPiB5b3UgY2FuIHB1c2ggcmVmYWN0b3JpbmcgdXBzdHJlYW0gYW5kIGtlZXAgYSBzbWFsbGVy
IGRlbHRhIGJlaGluZCB0aGUgDQo+IGNsb3NlZCBkb29ycywgd2hlbiB0aGF0IGlzIHJlcXVpcmVk
Lg0KPiANCj4gPiA+IA0KT2theSBnb3QgaXQgLSB3aWxsIHJlbW92ZSB0aGF0IGNvbW1lbnQgYW5k
IGFtbWVuZCB0aGUgY29tbWl0IG1zZyB0byBlbXBoYXNpcyB0aGF0IHRoaXMgcGF0Y2ggaXMgZm9y
IHJlZmFjdG9yaW5nLg0K
