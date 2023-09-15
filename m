Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 946E67A1584
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 07:38:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A091510E159;
	Fri, 15 Sep 2023 05:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA64810E129
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 05:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694756299; x=1726292299;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WY12e0/o8k0auypRaZXzH7YeYCPiIQpXKzl0/K66ZqI=;
 b=P4A97WJS/TYt4dqItaw/ZgUIs58EK50L0SpdbdYvb6aJtJodOukM+AsU
 Ln2qvgzObDUfPpnO2hi3tmPAEJprerDupDXIgsi0sLTwoa+1hs4rS/qCT
 MB1JMF370/bGxZw0xuoQxYuyR7lQ25VPNwlyKDeKAJl0CQyS/r6VGBVqx
 3tWD0ExLwc2e0A7sneNmEC5re/p9cE5f5Z/hFKzPRF4RmNi2avsvhFbU/
 U4mkXfLsnIKgUFDp94coBAlsh5g7FXOGv/tzW8ziJvjQvJXuDFaalLpjz
 3OdQR9RmZdefJRU5jvB8KeA4FLRw86D01gRiv6jTc92Z+sxeN6iL5CJPe A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="364214262"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="364214262"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 22:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="748087200"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="748087200"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 22:38:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 22:38:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 22:38:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 22:38:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=llVJCOpWsxdTl4FlCP8FFUk+YM1LbyTLjwF/4441dUOVqyNSD1w2cckTduHCWR2sOGx0yEmRqSJUnqvMjQD8bACH3iX125YsOSq3MLmNUeoeZQ/kPZ2UVBcW221xooecz04BkZduKjZG46FVTxrqjthqdsZmeBblIT2+gVsAPGvFv6n+nDQvJMRTgkrqWH0JI5wpoO8kdRL7sPIDkzsWv7bGSvA67H24gaxIQOeZ/2TAM+7MM+UJEL6uaL+DV0aW47UM0Ozgm3Q6H6t9rlizhO7l3yRW2DmZ3FfOqcBZvyKpJPhttsx/NRsiM+YT8qRkfP7K6jEJOBNjv9mhScXL3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WY12e0/o8k0auypRaZXzH7YeYCPiIQpXKzl0/K66ZqI=;
 b=oRQZLPCfXcpOAb3R7WX/LBzAPnFYo6etZKDEi7KDStc+E8dzcfMiNoYkQgsPqlJFD5g66WFXDIdsIl+CULXdeyAj9D9jWD/7+o1QwmhTUTV6HlK4xi/38w2fLLxny3hQuNToeCXN5tRfz0NqIUM91vRafTMzOEyEZWHLzr76pwz9yUql2hgAPeH1u7G4FnWgkdNeJPLScf6ZZDo/xqo4thg/7Gb01zlh1tlhGrwKP/R7b+1Jx1aFBscRo+8uAE+UI0g3DGpMd9FmSP6c06OJj4pls8fKR4Lx6afxvEXe+OkAVD6D78hZ0j72TCC3lldLs9q3ULT7AnrE5TAmzcK5TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SA1PR11MB6685.namprd11.prod.outlook.com (2603:10b6:806:258::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 15 Sep
 2023 05:38:17 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%7]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 05:38:16 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 07/12] drm/i915: Relocate is_in_vrr_range()
Thread-Index: AQHZ3NUad5M5z0pIz0qLPPiQohNPRrAbc5gg
Date: Fri, 15 Sep 2023 05:38:16 +0000
Message-ID: <IA1PR11MB6348BDB348EA4E5E240A035CB2F6A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SA1PR11MB6685:EE_
x-ms-office365-filtering-correlation-id: cf649a7b-5c0d-41e0-0d8f-08dbb5adf60e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VOEfnsRpmpkmtmpT7Eka5lVQ02MWgozu6J9Vk1RfA4mSPq+yh5NHoCG10KgOwzLqzs3MOi14YARWnvGLV54JPeakSR7K9zeLsLonhpFUsES23Dz5GgM30xBB0YZMSmmJO1fnP3VGpJTmS1Xwfv7a2S0QgV7sAxEZjHVwG/RpV+am7rW0KcLTucavb+ZH2glXS3/kIIA51TPOvE8kMv8tit9ywFlWuDgeaE6XJ8wRpoWCso805D9zI/9Z5C1ipZtCsycuRFdrsqTyb1qnWSDnrcca8szhCTsvZ4QG385QzgtiZmB0Oeb99S0mJkcn3BvjNtvRwQD3imibiDesgDnrsqAmCmsMUxwl7HJZa1WG/k+yZNsND5HN0Z15t+qxU2Mo+0HEqc5X1FdN/D+1diUgD2tBR5bQtfsg7Dh+/L4fxcNUdYeEjGUNdHx/qCPPbQMmIXgeATeG8LP5J54HFO54YUr/seNqqNXoQCo6OtBCmJn+cFxtagK0E3k3d6kvuU35fP0S8ynQjj02gNGO5hMV5BXRNl9tNzbQNYJBLS/xHyaPQt1+UPNOLH8lZ4juk/p29QMEKfhkRC8F4HOQMWpjD2n51J+xOX/js2hGdmI2dZXSnoLQRYtrfYITG4hqXZmy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(376002)(136003)(396003)(1800799009)(451199024)(186009)(5660300002)(7696005)(66446008)(66946007)(64756008)(316002)(66476007)(66556008)(9686003)(110136005)(53546011)(41300700001)(122000001)(55016003)(76116006)(8676002)(52536014)(8936002)(478600001)(83380400001)(71200400001)(6506007)(2906002)(86362001)(38100700002)(33656002)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXdPNVVHU1ovc2NTTmhtQnc2RlpGakZvbHQxK1dVY3JpM3dnOE1yLzlQV2Z3?=
 =?utf-8?B?Mk41V1drZmZOVmtLeStQQkVwenBwRUtTcEczZnhRcmZPUlNHbkwwZG9kdXVU?=
 =?utf-8?B?eWEwNmw4Q1JCZHFZQVFsaUFDdTkyaTFyeVJTS1NHdlU0eXNnZ011c2llNFFS?=
 =?utf-8?B?RlBWeTl6WmFWeW4yemszWXdiMW9zK0wwbWFIeDE0bWg0djJUYnFnY2gvMUJ2?=
 =?utf-8?B?YmxwM1pNNU1hdEl3MExKVElaTVdKdEdFMjJSOGVkQks0Qkk4RmtmeW8rd1RI?=
 =?utf-8?B?UVJNb0FMVDNOM1V0RnUxSFFSMlFFb0ZvOHlKQlhVaVJjb2p4WUF3UUljbFJ0?=
 =?utf-8?B?bUttN3ZQckpyNzRiRVc1dEdETFVTN0pVMDR0MGY1dEhKS1BSZEg1ZU1CRjVn?=
 =?utf-8?B?bHNpdk1pTkJRRzFWL3AwVFBZdDMrcEt2a21JaVBXV3dXV0VPRktTT29HRDZ4?=
 =?utf-8?B?WWtWWlZVOHgveXBJTC9Pa3YrMjR5MVVDZ3hZeWxjUzlneW1HQ1RTZ21rNlhv?=
 =?utf-8?B?OHRUTzJVcm1mMUV6eGNXU2c4bjFqZ1JqMDhRY3poZDFudE9vN2lDZUNMeUE5?=
 =?utf-8?B?Sk1yNkNGRVZOc1E5NUIxaW5vWEhhdWJnOWp5Mkw2M3pjNUFsQytoZkVkZkpo?=
 =?utf-8?B?c1N6SnFaWHdFV3k5bjdRUjlUZ1JZSXpOcDFTTzJFOUVlZGpkRHlGbFlUV3NR?=
 =?utf-8?B?U0Z2eVpIVEZQVkV4ZzU5ZktuRjZSUEhJYXlXR1MwNHEwWDJKcVQ1N1Bnamhr?=
 =?utf-8?B?Y3ZiVjRsamV1d0hnRGU2MjRzUnVpNVJiOFBSODFydWdpZWpuZldXQVdma1pD?=
 =?utf-8?B?NEVaeitsOVhKZmNQYUQyNFJjUXdOUGlqMkNtbTZCTTBtNDBBWElIcWFDK2FX?=
 =?utf-8?B?Y2prYXhTNG5mUWdqZ29hWjZ5WXpIcjNUR0FsZ2JFZDlDajNFdnJGUnAzMVJL?=
 =?utf-8?B?VUYyMEFhdWtBc041OXNQc0Y3WnpKaS9OUktzK2oxSE9OZERGQ3A4bU9DL1lB?=
 =?utf-8?B?YmpCYy9hMDRDT2VBWHhFU0puSHFMV3dCWUlzNWNVQnZGK2JkRGJ0NkM2NVNm?=
 =?utf-8?B?VllkMDZvcFJDaVJPZnduR25sWHdSdGdvSm5tSG9nWWRUbzJ3Q2djT041TWJr?=
 =?utf-8?B?TExWNW9Sd1NpY3ZmY1VocnhHWXFycHNCU2hXTUsxa1M5MUtvUWR6Qkh2VUVP?=
 =?utf-8?B?bVNCd25wTDdGL3FlWms2YXJKYlcxNEpFZzArSElwRmJjZWdocGVuY2pNay9W?=
 =?utf-8?B?dUdJd0lPK0tocFhWSFVDbUMyY2FWV2w3R3lKYTFMdGtvZW5tNndSSk9WclRr?=
 =?utf-8?B?RGhoSTNWbjlyWVFPOS93aWxsV1dvTWZQdFM5cTRpVmU3TGdJZWxnQ2t5Y1Za?=
 =?utf-8?B?eEpocGVYWkhTM3p2YTlWekY0c08vNC9LaE5NMW54cWIrUTF4NUFIMzZrQzFz?=
 =?utf-8?B?MHNxMEp4MXVRZUMzcVFjUjE5bjAvNmpET2RZKzdrTWlkYXpyUitjTFRhaVo1?=
 =?utf-8?B?OUNlbUcwam8zWGo0MTljMldYeGhBcGVjak04Q1g3OVZDVTY0K0t4MEx1Wisw?=
 =?utf-8?B?RDN4QThaalZhdFJxYVZsQU1RVG5uNm1LQlVvcXRkYVdGTXNNTlROckNoRGoz?=
 =?utf-8?B?TW5TZGRiSGVPMytCMWFLRWdQcHV5RmtWa3NvNlZWeVpZYWR5YXdKNmIrYm5Z?=
 =?utf-8?B?S2RYSlV4MlJWOGxpeDNzamZxQWJZZk50NTVOdTJVeGVGUmFwSzJ4SWdvb2Qw?=
 =?utf-8?B?UUFzZHZrb1Z2ZGNEWlM2RUZDdzNSdXU0dTNLaUFHYUVHbHB4ZXdHd0Y2ajJG?=
 =?utf-8?B?TzNMSTFDbFlmZElXTzI2Nmo1bVhCZmhkc2NWaHJBcmpJYkNrclRGNm5ITG1E?=
 =?utf-8?B?TVJ5bUxIbjlhWG5JdXYwVDJONTYveDljZ2JtR3V6clMxZkNnY2FDd0p5MHJu?=
 =?utf-8?B?K291ck1RamZHWkRxK25haFVaeWlRYVNHSS80aVF0ZjhwNmRCQ3JjUjAxNmtD?=
 =?utf-8?B?RXM2dHM2N1BQL0lGVEdSblI1dFVvRXlIdDdjSGVraDZZa3JnQTRZOGtkVDBW?=
 =?utf-8?B?YWFYM2Z0S0g3ZHpsRkVtNDFNZUc2THRHTWRQb0JqUXNpRkw3U2llUkRYR0xa?=
 =?utf-8?B?cGJadmEweE95WjJQd3VCM1ZBVGtpdHBpam8vZC9wb2RSaCtOUVdKNmRrWnI4?=
 =?utf-8?B?S0tMMXhOeDdCQVp4WDJ0TGZKUlFZYzVFeW4xNXNUMXJKWFhScExJNlIydWtl?=
 =?utf-8?Q?ZH42koaWcAfBrCGmtrNe58u+IEGbOBWVYbBkXanSsc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf649a7b-5c0d-41e0-0d8f-08dbb5adf60e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 05:38:16.4583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5G06ggx4wemuIxbE6nboz7s8lIKJ0tQkD1c29x/0KBWQS8PLij2NWy7ForYJo9JgMARNOb15X9YMgdQXT39KjU97XXIo8BrXOHvmFZGUwj0Vtf9vIRBlxKeVafnx39Gk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6685
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/12] drm/i915: Relocate is_in_vrr_range()
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
PiBTeXJqYWxhDQo+IFNlbnQ6IDAxIFNlcHRlbWJlciAyMDIzIDE4OjM1DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAw
Ny8xMl0gZHJtL2k5MTU6IFJlbG9jYXRlIGlzX2luX3Zycl9yYW5nZSgpDQo+IA0KPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gTW92
ZSBpc19pbl92cnJfcmFuZ2UoKSBpbnRvIGludGVsX3Zyci5jIGluIGFudGljaXBhdGlvbiBvZiBt
b3JlIHVzZXJzLCBhbmQNCj4gcmVuYW1lIGl0IGFjY29yZGluZ2x5Lg0KPiANCj4gQ2M6IE1hbmFz
aSBOYXZhcmUgPG5hdmFyZW1hbmFzaUBjaHJvbWl1bS5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIHwgMTcgKysrKy0tLS0t
LS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgICB8
ICA5ICsrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIu
aCAgIHwgIDEgKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxMyBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3BhbmVsLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bh
bmVsLmMNCj4gaW5kZXggOTIzMmEzMDViMWU2Li4wODZjYjhkYmUyMmMgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMNCj4gQEAgLTU5LDE1ICs1OSw2
IEBAIGludGVsX3BhbmVsX3ByZWZlcnJlZF9maXhlZF9tb2RlKHN0cnVjdA0KPiBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvcikNCj4gIAkJCQkJc3RydWN0IGRybV9kaXNwbGF5X21vZGUsIGhlYWQp
Ow0KPiAgfQ0KPiANCj4gLXN0YXRpYyBib29sIGlzX2luX3Zycl9yYW5nZShzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yICpjb25uZWN0b3IsIGludCB2cmVmcmVzaCkgLXsNCj4gLQljb25zdCBzdHJ1Y3Qg
ZHJtX2Rpc3BsYXlfaW5mbyAqaW5mbyA9ICZjb25uZWN0b3ItDQo+ID5iYXNlLmRpc3BsYXlfaW5m
bzsNCj4gLQ0KPiAtCXJldHVybiBpbnRlbF92cnJfaXNfY2FwYWJsZShjb25uZWN0b3IpICYmDQo+
IC0JCXZyZWZyZXNoID49IGluZm8tPm1vbml0b3JfcmFuZ2UubWluX3ZmcmVxICYmDQo+IC0JCXZy
ZWZyZXNoIDw9IGluZm8tPm1vbml0b3JfcmFuZ2UubWF4X3ZmcmVxOw0KPiAtfQ0KPiAtDQo+ICBz
dGF0aWMgYm9vbCBpc19iZXN0X2ZpeGVkX21vZGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29u
bmVjdG9yLA0KPiAgCQkJICAgICAgIGludCB2cmVmcmVzaCwgaW50IGZpeGVkX21vZGVfdnJlZnJl
c2gsDQo+ICAJCQkgICAgICAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmJlc3RfbW9k
ZSkNCj4gQEAgLTgxLDggKzcyLDggQEAgc3RhdGljIGJvb2wgaXNfYmVzdF9maXhlZF9tb2RlKHN0
cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gIAkgKiB2cmVmcmVzaCwgd2hp
Y2ggd2UgY2FuIHRoZW4gcmVkdWNlIHRvIG1hdGNoIHRoZSByZXF1ZXN0ZWQNCj4gIAkgKiB2cmVm
cmVzaCBieSBleHRlbmRpbmcgdGhlIHZibGFuayBsZW5ndGguDQo+ICAJICovDQo+IC0JaWYgKGlz
X2luX3Zycl9yYW5nZShjb25uZWN0b3IsIHZyZWZyZXNoKSAmJg0KPiAtCSAgICBpc19pbl92cnJf
cmFuZ2UoY29ubmVjdG9yLCBmaXhlZF9tb2RlX3ZyZWZyZXNoKSAmJg0KPiArCWlmIChpbnRlbF92
cnJfaXNfaW5fcmFuZ2UoY29ubmVjdG9yLCB2cmVmcmVzaCkgJiYNCj4gKwkgICAgaW50ZWxfdnJy
X2lzX2luX3JhbmdlKGNvbm5lY3RvciwgZml4ZWRfbW9kZV92cmVmcmVzaCkgJiYNCj4gIAkgICAg
Zml4ZWRfbW9kZV92cmVmcmVzaCA8IHZyZWZyZXNoKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0K
PiBAQCAtMjI0LDggKzIxNSw4IEBAIGludCBpbnRlbF9wYW5lbF9jb21wdXRlX2NvbmZpZyhzdHJ1
Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICAJICogQXNzdW1lIHRoYXQgd2Ug
c2hvdWxkbid0IG11Y2sgYWJvdXQgd2l0aCB0aGUNCj4gIAkgKiB0aW1pbmdzIGlmIHRoZXkgZG9u
J3QgbGFuZCBpbiB0aGUgVlJSIHJhbmdlLg0KPiAgCSAqLw0KPiAtCWlzX3ZyciA9IGlzX2luX3Zy
cl9yYW5nZShjb25uZWN0b3IsIHZyZWZyZXNoKSAmJg0KPiAtCQlpc19pbl92cnJfcmFuZ2UoY29u
bmVjdG9yLCBmaXhlZF9tb2RlX3ZyZWZyZXNoKTsNCj4gKwlpc192cnIgPSBpbnRlbF92cnJfaXNf
aW5fcmFuZ2UoY29ubmVjdG9yLCB2cmVmcmVzaCkgJiYNCj4gKwkJaW50ZWxfdnJyX2lzX2luX3Jh
bmdlKGNvbm5lY3RvciwgZml4ZWRfbW9kZV92cmVmcmVzaCk7DQo+IA0KPiAgCWlmICghaXNfdnJy
KSB7DQo+ICAJCS8qDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zyci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIu
Yw0KPiBpbmRleCA4OGU0NzU5YjUzOGIuLjZlZjc4MjUzODMzNyAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+IEBAIC00Miw2ICs0MiwxNSBAQCBib29s
IGludGVsX3Zycl9pc19jYXBhYmxlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3Rv
cikNCj4gIAkJaW5mby0+bW9uaXRvcl9yYW5nZS5tYXhfdmZyZXEgLSBpbmZvLQ0KPiA+bW9uaXRv
cl9yYW5nZS5taW5fdmZyZXEgPiAxMDsgIH0NCj4gDQo+ICtib29sIGludGVsX3Zycl9pc19pbl9y
YW5nZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsIGludA0KPiArdnJlZnJlc2gp
IHsNCj4gKwljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqaW5mbyA9ICZjb25uZWN0b3It
DQo+ID5iYXNlLmRpc3BsYXlfaW5mbzsNCj4gKw0KPiArCXJldHVybiBpbnRlbF92cnJfaXNfY2Fw
YWJsZShjb25uZWN0b3IpICYmDQo+ICsJCXZyZWZyZXNoID49IGluZm8tPm1vbml0b3JfcmFuZ2Uu
bWluX3ZmcmVxICYmDQo+ICsJCXZyZWZyZXNoIDw9IGluZm8tPm1vbml0b3JfcmFuZ2UubWF4X3Zm
cmVxOyB9DQo+ICsNCg0KQ2hhbmdlcyBMR1RNDQpSZXZpZXdlZC1ieTogTWl0dWwgR29sYW5pIDxt
aXR1bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KDQpSZWdhcmRzLA0KTWl0dWwN
Cj4gIHZvaWQNCj4gIGludGVsX3Zycl9jaGVja19tb2Rlc2V0KHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKSAgeyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnIuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dnJyLmgNCj4gaW5kZXggZGUxNjk2MGM0OTI5Li44OTkzNzg1ODIwMGQgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaA0KPiBAQCAtMTQsNiArMTQsNyBAQCBz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yOyAgc3RydWN0IGludGVsX2NydGNfc3RhdGU7DQo+IA0KPiAg
Ym9vbCBpbnRlbF92cnJfaXNfY2FwYWJsZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpOw0KPiArYm9vbCBpbnRlbF92cnJfaXNfaW5fcmFuZ2Uoc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yLCBpbnQNCj4gK3ZyZWZyZXNoKTsNCj4gIHZvaWQgaW50ZWxfdnJyX2NoZWNr
X21vZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOyAgdm9pZA0KPiBpbnRl
bF92cnJfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
DQo+ICAJCQkgICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7DQo+
IC0tDQo+IDIuNDEuMA0KDQo=
