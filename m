Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3D069E5B1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 18:14:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82FF010E89E;
	Tue, 21 Feb 2023 17:14:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B5410E89E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 17:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676999683; x=1708535683;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pVT+T1LFg9zgTUJRZwir6UxIx6FVMHlGmB8v8R8Q5Hs=;
 b=dxPt2FnD2okrPpLCNjv3dmU+wrJoUePqSOl9+iiw3DN16nZmGeevQfZm
 byZ5+C/gQyWt3vgy6uCutn6C+QgSknfbPnj97yUkrRXL07T5lEdM1o7hX
 kcUiJ0bGXa5WGU6/m163dXUgA5t0ai5RXdyGtXiIE8bmfKHuFpJMmDGc9
 PLyr5BKEGuZ37W3VliI6E48+9ygoLOkrmDH5l6PLNzXgYWc2KbmYkqvHU
 NUJvCUnnhJMCu9ANA5KmxRgss/xsWIw0oU1r/kuWhJ7GCH/LbqL0cujsC
 esc4XJuuYIGMEUzblxLKzaIzorh6QRPyolEiaJ509Wm0KAhklDRRdZbU+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="313064775"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="313064775"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 09:14:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="740473709"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="740473709"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 21 Feb 2023 09:14:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 09:14:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 09:14:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 21 Feb 2023 09:14:27 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 21 Feb 2023 09:14:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=knA3dVyYj/3i6r38cK1UxhV2B9ponT685pgvy+x4RGtR5tdUjt0MZZT1oFsuQ8wVphjCOaYUn97Y9c6eGXU4L5CFWXB5Y1e6pL021pLXlpH9Bm5tPY9lLHLBNWLTx9pX8gE3F6FUzs2riii2zMxPAo6lO560d+w87nlOPSme7wJ8imOpSJH38KNMFIm5Lj+e+C51gyP+ieK++Xkbl+kWxaB5XoLaGrUIutVVgyEFydzRY9bqlwG6PziEsqB5XhtGijkUuv8AX7GY3pbqUbx18Y/c9Ehj+3crdZu438fZzeQ/9g6TeRMUfG7Eck2IA6qannPrbPzrKzsmhQ+YTL49Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pVT+T1LFg9zgTUJRZwir6UxIx6FVMHlGmB8v8R8Q5Hs=;
 b=SUXO11FWKlWLdgiGR2LBBgphM2Qoa/9yRuAosSWTUP9it4QwXpCtw0HAwswZq9ImaQpK6hNbIBtK/SnPXp0ryzOCRWuayo+kAYnVwZi/EmZSBmnz6LNXWA+432G+J3vUheH6cTouNMEwXPuZjomx+1/DlheNyINLo20W09A6WyZlK/+XakHvYI46jB7jRe7+kvvtUzcfVvSjWgx6OrYg802y/FxNa1hfLFfSvKVqLAEXjdSKI8mrpJYHSY8CbxCMZxhpVloGPt5tpgy9FpnSIQ/pd+4ngRpurzAl2kZXqgyHigwXG3KgBbf0HV4Qi8E6JcIARQ5hKXhLpMAI7Uj7lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SN7PR11MB7091.namprd11.prod.outlook.com (2603:10b6:806:29a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Tue, 21 Feb
 2023 17:14:25 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::4f66:bdc8:3cac:956e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::4f66:bdc8:3cac:956e%3]) with mapi id 15.20.6043.022; Tue, 21 Feb 2023
 17:14:25 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>
Thread-Topic: [PATCH] gen8_ppgtt: Use correct huge page manager for MTL
Thread-Index: AQHZQwU6ctRXEC22Zkm8cMgyPUuOGa7Zlt+AgAAENUCAAAMsAIAACMOg
Date: Tue, 21 Feb 2023 17:14:24 +0000
Message-ID: <CH0PR11MB544409A98B8A5F6E8E087DF4E5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230217191813.1104342-1-jonathan.cavitt@intel.com>
 <0f4df8e9-1cb9-b1a4-284d-67fc75b74c2e@intel.com>
 <CH0PR11MB5444727E7C9F280059073C1EE5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
 <b371944c-779d-cd9e-e9ba-6c7b8a6bc0bb@intel.com>
In-Reply-To: <b371944c-779d-cd9e-e9ba-6c7b8a6bc0bb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SN7PR11MB7091:EE_
x-ms-office365-filtering-correlation-id: 17eca7d6-e0e2-450d-b77b-08db142f14ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m4Fzfj7Vj12qV3de1usLUrYFbPPOBTjqTGPjBC5tB1FlcWZeLkjR5pU/2znl6tGwGySHPBf5OrC8QOIRqC7/8/9io6evNx/MHasVL7F5v52W8HTIHFPoZoQhPUN4SFuyyQXfTB5+5o+uEwpgSLsjkxYQdA1vKFyv5t1yh6KFyffzW7v3OclKTDGIObfYMoUQ+YFIzbjbdnP6bzjZFk/Vae1uToo/dZkHuxklcrPZzbQKpK93oddNEdEME03EDvRrQIHNqENDvhYObk3D6XJ4s6AXxZt16mW51sPfRPzR/5bxxTqL6hWzCM+kkVfkPGxULlo/J9bfBsUT70uIQF7AWW5dqP5gkSkIk4B1ggqiu0ykc2c2DTwFoToJzzWy4cdwth5WOcRb60CIGJdhx5XZ0hPbo+lyJfhaLfCMf05SwSnhb9RO5+XqU2Qpg3LGCbawRVdfIO+UCoqfpCb5WfD9xKCKx1VRk4uCmcfNPo0TRKK4TQQxp1yKx/0cxznNyU5bi7leLGjOKAb8bQgSx9HOdtSI3XmG90bKWloyVWyQCyM1N69lfX7vjUP8EE1CTw3WvzjG9U4clQD9RqKBoA6bykESncr/zqgUxlgi6BaSY1dw8HJTOK3XTQRtM+8uIAonn40T0g0Ds20ycEyVhpMjVz6ML1b7AvKk9yb8EtlwFBwydJS7Hf20WJoMcUkeNFH1AEXgatBtZT7jITfmzwZpUC3NpWGUuH4/RpzbBKoH130=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(376002)(346002)(39860400002)(136003)(451199018)(2906002)(6862004)(5660300002)(83380400001)(33656002)(8936002)(71200400001)(7696005)(26005)(53546011)(9686003)(186003)(6506007)(52536014)(66946007)(82960400001)(38100700002)(55016003)(66446008)(38070700005)(86362001)(122000001)(8676002)(41300700001)(66476007)(64756008)(316002)(76116006)(4326008)(66556008)(478600001)(54906003)(6636002)(14583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFo2S3BwRGkvMXZ0ZWViSHpNQU5JM3FJQ2RWYTdQMnNjaEFnbjBSdmZOcWFI?=
 =?utf-8?B?ZGJScDBTN0RWRkpqTHpWVW5Oa25aMk5mS0Fjd3dzV291c0dJZEJjRHJpUFV0?=
 =?utf-8?B?NGJTRVdQQjV2TWZSb0w5TXJoYk5mRDRFVm1lRFR2aGVXSFhiYXlkS0hGVmVw?=
 =?utf-8?B?UG56TVArUzVWMmNXMmZUSXc0UHhHcE5GbU5kbHRyV04vem8wemFlQmJJT0tI?=
 =?utf-8?B?dHBaOGVTczZSNktmeWVCKzNwVEVFUHh6QSt6MFRNdUJ5eE1kVUpxeklXcVk4?=
 =?utf-8?B?TzlvaE5zamYyNndQa0NrM3dYV1FZWVZtR1pHZFZsT1ZiYlQvNHlEMWhtNEwr?=
 =?utf-8?B?UWpjemVPRmVTNzkxZk9ZSXlFWFl4aVNYY2RMcU9YdStoZ3FiNTJQTjBFMnZB?=
 =?utf-8?B?Z0JqOHoxak5CZkFJb0wzb1N0Y1RndGVhQUR2TExMRlI4d2tZUnlPcGJtWjNN?=
 =?utf-8?B?dWJZbW9zYnU3Zi9FNi9wRTh1V0RpenJqNXQvT2ZPbTI1TVhQVUtST0gzVWkw?=
 =?utf-8?B?OWd5bThDcFEwUm0zN0xSVHlSOUgzaDRtYjNNclVUdFVlMjVuR3FSZ1VhbU9o?=
 =?utf-8?B?aHhXWFpsS3crNEo4K0dJZXBGQ1NlVFBwTE1DVjRtU0RzQWNRd2xubkVwbjI2?=
 =?utf-8?B?MmFKb2ZsdzVZMG5haVdEcVhlQnlHcHVKTWwvTWt0UVZxSFpjd3dzY283a2RC?=
 =?utf-8?B?amhGS3lCaVdpcVBJY3JTT2RRTDd4UmlNdWh4SERxeE1tYll5T0hkajNyTDhz?=
 =?utf-8?B?NVBwYjdDMFNRV1Z6SWpGUERqTnB3MFZ0Y0w5U1V2bWNCVElsTHFLQUtpMklj?=
 =?utf-8?B?ekFrTlZ3SDFiVCtpZWhLdFFaNDRXZnVCT0FhQ05HTFJkZ01ZdXpKTVIyTCt3?=
 =?utf-8?B?TE80L0p3V1dZbDhERUFKL1BDNmVocGVtVVNUL3BwTjhoTWZHeDVlcWs4VE1u?=
 =?utf-8?B?TE9RaWRVTko2OFBqdmlJZTJHMG1CS2FzcFowdldzYkFDeVlhUExROGU2aUpS?=
 =?utf-8?B?d3ExQ1pzUmt2SzlCSlViU0xLSVZuTCtBNk9XOFNuUFRHWGh3ZEQvb1M5Qy83?=
 =?utf-8?B?SGw4TndPTm9xTVZiTjZnV0dsNjJhS0l6RUpEekxyaVlxS2ZJdHNDdmVwakk3?=
 =?utf-8?B?N3RWQWZQRFBrbVp1clhUWFZTWnZuTk1HYkVJbzZXNXlTaktrY3REYjc3TUxZ?=
 =?utf-8?B?QXlvUExVZlBVYXE4VGN4clVnN0NhWXBCVk5sdnhkTG9ITW9QaTljdEp3d084?=
 =?utf-8?B?ZDlSbEJJVkJFNHVjWTlaeDFyNUd5Qm1tMnFOMkhXaDVpcmptSk9laWtqRXJI?=
 =?utf-8?B?TjdUQkIyejhPVWpHeFY3dm9zWlpjOWZQelQ2R2JIWStwcGxkZEV6a2I3U01L?=
 =?utf-8?B?Sm1DV1cwVG9PSVRrb3VoZFUvdHlrV2tDaXhud0lkV0pLTm5kUVlxRjBucHVF?=
 =?utf-8?B?UEdvWDBpcGhHQ3Zzb2Z1aXVremVLUlFsVmpQdmlvVzJEZ2ZOb3ZHdHE4SXEr?=
 =?utf-8?B?V2VKRmIyclNrOWhEQk90M0Y4K2tyd0pRRjhGV0RmM3YySzgwa0R2ODNJdW5a?=
 =?utf-8?B?S28xY2FrTkhMb0tLM1ZzNW5IT1VYakR4a3F4Qy93S3VXaXAwblh2ZW4wSDFT?=
 =?utf-8?B?eUQwOFRvekE0K2pDQWlXSjEvZGZTUzdCT2ZDYUo3U25OWjNqbHhrSTNhOVp1?=
 =?utf-8?B?V2V0T0tqSm5MdlhET0I3QmpVeStpWENaTUxxZ2NTSjlQcjlLVVVYOWw1VTJi?=
 =?utf-8?B?YjVENVZyMUl2ZC9XWXp1Mzdjdmt3UFEzQ05zeTRJbG5tMk5pWnlUWWxTV04y?=
 =?utf-8?B?TjNnOExkQldlaGtwanVMTEl0L2NDKzlmSXRmQ093SU9tclRDbFh1TXlmWk9M?=
 =?utf-8?B?NWZ2MklVUUh0MUM2V0Z5bDF4V2wxVjE1dlZFUWVwaU9peVhBaWx2ckVLa3J5?=
 =?utf-8?B?c3FMMnpXTFdDTzdlWDZUQUQ2bHhPY0NkZ2RXZ2VVWlphNUZDdnN3dHM3QVZK?=
 =?utf-8?B?VXk3eGRrTnZlajFBaFd6N2w5M241ak5FNmppWkJxWUpMSTVDclJKeFFmdWlh?=
 =?utf-8?B?ai90YUJoK0VqcnFCNWNKcmJNcUttTTUxNFFEMm5MQ0p1Z1o3MnVucFNMeTVC?=
 =?utf-8?Q?h11Lid8D230AzwiouZtn0s0xL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17eca7d6-e0e2-450d-b77b-08db142f14ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2023 17:14:24.9860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MqUkMXvRvoFUpPjkI6sReSfLTOOWKFO7ZlxlVDcA+7X/HBpgT8mcfrMTK4cYh77ebLoYTk7WZGGT072uiSvNLTNnYZpYBW+nkLdDc/wEG1M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7091
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] gen8_ppgtt: Use correct huge page manager
 for MTL
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+IA0KU2VudDogVHVlc2RheSwgRmVicnVhcnkgMjEsIDIwMjMgODozMyBB
TQ0KVG86IENhdml0dCwgSm9uYXRoYW4gPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQpDYzog
RHV0dCwgU3VkZWVwIDxzdWRlZXAuZHV0dEBpbnRlbC5jb20+OyBTaWRkaXF1aSwgQXlheiBBIDxh
eWF6LnNpZGRpcXVpQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
ClN1YmplY3Q6IFJlOiBbUEFUQ0hdIGdlbjhfcHBndHQ6IFVzZSBjb3JyZWN0IGh1Z2UgcGFnZSBt
YW5hZ2VyIGZvciBNVEwNCj4gDQo+IE9uIDIxLzAyLzIwMjMgMTY6MjgsIENhdml0dCwgSm9uYXRo
YW4gd3JvdGU6DQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBBdWxk
LCBNYXR0aGV3IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFR1ZXNkYXksIEZl
YnJ1YXJ5IDIxLCAyMDIzIDg6MDYgQU0NCj4gPiBUbzogQ2F2aXR0LCBKb25hdGhhbiA8am9uYXRo
YW4uY2F2aXR0QGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
PiBDYzogRHV0dCwgU3VkZWVwIDxzdWRlZXAuZHV0dEBpbnRlbC5jb20+OyBTaWRkaXF1aSwgQXlh
eiBBIDxheWF6LnNpZGRpcXVpQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIXSBn
ZW44X3BwZ3R0OiBVc2UgY29ycmVjdCBodWdlIHBhZ2UgbWFuYWdlciBmb3IgTVRMDQo+ID4+DQo+
ID4+IE9uIDE3LzAyLzIwMjMgMTk6MTgsIEpvbmF0aGFuIENhdml0dCB3cm90ZToNCj4gPj4+IE1U
TCBjdXJyZW50bHkgdXNlcyBnZW44X3BwZ3R0X2luc2VydF9odWdlIHdoZW4gbWFuYWdpbmcgaHVn
ZSBwYWdlcy4gIFRoaXMgaXMgYmVjYXVzZQ0KPiA+Pj4gTVRMIHJlcG9ydHMgYXMgbm90IHN1cHBv
cnRpbmcgNjRLIHBhZ2VzLCBvciBtb3JlIGFjY3VyYXRlbHksIHRoZSBzeXN0ZW0gdGhhdCByZXBv
cnRzDQo+ID4+PiB3aGV0aGVyIGEgcGxhdGZvcm0gaGFzIDY0SyBwYWdlcyByZXBvcnRzIGZhbHNl
IGZvciBNVEwuICBUaGlzIGlzIG9ubHkgaGFsZiBjb3JyZWN0LA0KPiA+Pj4gYXMgdGhlIDY0SyBw
YWdlIHN1cHBvcnQgcmVwb3J0aW5nIHN5c3RlbSBvbmx5IGNhcmVzIGFib3V0IDY0SyBwYWdlIHN1
cHBvcnQgZm9yIExNRU0sDQo+ID4+PiB3aGljaCBNVEwgZG9lc24ndCBoYXZlLg0KPiA+Pj4NCj4g
Pj4+IE1UTCBzaG91bGQgYmUgdXNpbmcgeGVocHNkdl9wcGd0dF9pbnNlcnRfaHVnZS4gIEhvd2V2
ZXIsIHNpbXBseSBjaGFuZ2luZyBvdmVyIHRvDQo+ID4+PiB1c2luZyB0aGF0IG1hbmFnZXIgZG9l
c24ndCByZXNvbHZlIHRoZSBpc3N1ZSBiZWNhdXNlIE1UTCBpcyBleHBlY3RpbmcgdGhlIHZpcnR1
YWwNCj4gPj4+IGFkZHJlc3Mgc3BhY2UgZm9yIHRoZSBwYWdlIHRhYmxlIHRvIGJlIGZsdXNoZWQg
YWZ0ZXIgaW5pdGlhbGl6YXRpb24sIHNvIHdlIG11c3QgYWxzbw0KPiA+Pj4gYWRkIGEgZmx1c2gg
c3RhdGVtZW50IHRoZXJlLg0KPiA+Pj4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IEpvbmF0aGFuIENh
dml0dCA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT4NCj4gPj4gUmV2aWV3ZWQtYnk6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4NCj4gPj4NCj4gPj4gQWx0aG91Z2ggaXQg
bG9va3MgbGlrZSB0aGUgaHVnZXBhZ2UgbW9jayB0ZXN0cyBhcmUgZmFpbGluZyB3aXRoIHRoaXMu
IEkNCj4gPj4gYXNzdW1lIHRoZSBtb2NrIGRldmljZSBqdXN0IHVzZXMgc29tZSAibWF4IiBnZW4g
dmVyc2lvbiBvciBzbywgd2hpY2ggbm93DQo+ID4+IHRyaWdnZXJzIHRoaXMgcGF0aC4gQW55IGlk
ZWFzIGZvciB0aGF0Pw0KPiA+IA0KPiA+IFdpdGggdGhpcyBwYXRjaCBhcHBsaWVkLCBtdWx0aXBs
ZSBjYWxscyB0byB0aGUgaHVnZXBhZ2VzIGxpdmUgc2VsZnRlc3QgcmVzdWx0IGluIGEga2VybmVs
IHBhbmljLg0KPiA+IElmIHRoZSBtb2NrIHRlc3RzIGFyZSBydW4gaW1tZWRpYXRlbHkgYWZ0ZXIg
dGhlIGxpdmUgb25lcywgdGhhdCB3b3VsZCBleHBsYWluIHRoaXMgYmVoYXZpb3IuDQo+ID4gSSB3
YXMgaW5mb3JtZWQgd2hlbiB0aGlzIHdhcyBpbml0aWFsbHkgZGVidWdnZWQgdGhhdCB0aGUgZXJy
b3Igd2FzIGEga25vd24gSU9NTVUgaXNzdWUNCj4gPiByYXRoZXIgdGhhbiBzb21lIG5vdmVsIHJl
Z3Jlc3Npb24sIHRob3VnaCBpdCdzIGhhcmQgdG8gdGVsbCBpZiB0aGF0IHdhcyBqdXN0IGhvcGVm
dWwgb3B0aW1pc20NCj4gPiBvciBub3QgYXQgdGhpcyBwb2ludC4NCj4gDQo+IEluIHRoZSB0ZXN0
IHJlc3VsdHMgd2Ugbm93IGdldDoNCj4gDQo+IDY+IFsxODMuNDIwMzE2XSBpOTE1OiBSdW5uaW5n
IA0KPiBpOTE1X2dlbV9odWdlX3BhZ2VfbW9ja19zZWxmdGVzdHMvaWd0X21vY2tfZXhoYXVzdF9k
ZXZpY2Vfc3VwcG9ydGVkX3BhZ2VzDQo+IDw2PiBbMTgzLjQzNjk3OF0gaTkxNTogUnVubmluZyAN
Cj4gaTkxNV9nZW1faHVnZV9wYWdlX21vY2tfc2VsZnRlc3RzL2lndF9tb2NrX21lbW9yeV9yZWdp
b25faHVnZV9wYWdlcw0KPiA8Nj4gWzE4My40NDU3NzddIGk5MTU6IFJ1bm5pbmcgDQo+IGk5MTVf
Z2VtX2h1Z2VfcGFnZV9tb2NrX3NlbGZ0ZXN0cy9pZ3RfbW9ja19wcGd0dF9taXNhbGlnbmVkX2Rt
YQ0KPiA8Nj4gWzE4My45MDQ1MzFdIGk5MTU6IFJ1bm5pbmcgDQo+IGk5MTVfZ2VtX2h1Z2VfcGFn
ZV9tb2NrX3NlbGZ0ZXN0cy9pZ3RfbW9ja19wcGd0dF9odWdlX2ZpbGwNCj4gPDM+IFsxODMuOTEy
NjU4XSBndHQ9Njk2MzIsIGV4cGVjdGVkPTQwOTYsIHNpemU9Njk2MzIsIHNpbmdsZT15ZXMNCj4g
PDM+IFsxODMuOTEyNzg0XSBpOTE1L2k5MTVfZ2VtX2h1Z2VfcGFnZV9tb2NrX3NlbGZ0ZXN0czog
DQo+IGlndF9tb2NrX3BwZ3R0X2h1Z2VfZmlsbCBmYWlsZWQgd2l0aCBlcnJvciAtMjINCg0KICAg
ICAgICAgICAgICAgIGlmIChleHBlY3RlZF9ndHQgJiBJOTE1X0dUVF9QQUdFX1NJWkVfNEspDQog
ICAgICAgICAgICAgICAgICAgICAgICBleHBlY3RlZF9ndHQgJj0gfkk5MTVfR1RUX1BBR0VfU0la
RV82NEs7DQoNCkkgZG9uJ3Qga25vdyB3aHkgd2UncmUgZG9pbmcgdGhhdCB0byBleHBlY3RlZF9n
dHQsIGJ1dCB0aGF0IHNlZW1zIHRvIGJlIHRoZSBjYXVzZSBvZiB0aGUNCnByb2JsZW0gaW4gdGhp
cyBjYXNlLg0KLUpvbmF0aGFuIENhdml0dA0KDQo+IA0KPiBJIGRpZG4ndCBsb29rIGFueSBkZWVw
ZXIgdGhhbiB0aGF0IHRob3VnaC4gTm90ZSB0aGF0IHRoaXMgYSBqdXN0IGEgDQo+IG1vY2svZmFr
ZSBkZXZpY2UuIEkgZG9uJ3QgdGhpbmsgaXRzIElPTU1VIHJlbGF0ZWQuDQo+IA0KPiA+IC1Kb25h
dGhhbiBDYXZpdHQNCj4gPiANCj4gPj4NCj4gPj4+IC0tLQ0KPiA+Pj4gICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jIHwgMyArKy0NCj4gPj4+ICAgIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPj4+DQo+ID4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvZ2VuOF9wcGd0dC5jDQo+ID4+PiBpbmRleCA0ZGFhYTZmNTU2NjguLjljNTcxMTg1
Mzk1ZiAxMDA2NDQNCj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjhfcHBn
dHQuYw0KPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jDQo+
ID4+PiBAQCAtNTcwLDYgKzU3MCw3IEBAIHhlaHBzZHZfcHBndHRfaW5zZXJ0X2h1Z2Uoc3RydWN0
IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sDQo+ID4+PiAgICAJCQl9DQo+ID4+PiAgICAJCX0gd2hp
bGUgKHJlbSA+PSBwYWdlX3NpemUgJiYgaW5kZXggPCBtYXgpOw0KPiA+Pj4gICAgDQo+ID4+PiAr
CQlkcm1fY2xmbHVzaF92aXJ0X3JhbmdlKHZhZGRyLCBQQUdFX1NJWkUpOw0KPiA+Pj4gICAgCQl2
bWFfcmVzLT5wYWdlX3NpemVzX2d0dCB8PSBwYWdlX3NpemU7DQo+ID4+PiAgICAJfSB3aGlsZSAo
aXRlci0+c2cgJiYgc2dfZG1hX2xlbihpdGVyLT5zZykpOw0KPiA+Pj4gICAgfQ0KPiA+Pj4gQEAg
LTcwNyw3ICs3MDgsNyBAQCBzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2luc2VydChzdHJ1Y3QgaTkx
NV9hZGRyZXNzX3NwYWNlICp2bSwNCj4gPj4+ICAgIAlzdHJ1Y3Qgc2d0X2RtYSBpdGVyID0gc2d0
X2RtYSh2bWFfcmVzKTsNCj4gPj4+ICAgIA0KPiA+Pj4gICAgCWlmICh2bWFfcmVzLT5iaS5wYWdl
X3NpemVzLnNnID4gSTkxNV9HVFRfUEFHRV9TSVpFKSB7DQo+ID4+PiAtCQlpZiAoSEFTXzY0S19Q
QUdFUyh2bS0+aTkxNSkpDQo+ID4+PiArCQlpZiAoR1JBUEhJQ1NfVkVSX0ZVTEwodm0tPmk5MTUp
ID49IElQX1ZFUigxMiwgNTApKQ0KPiA+Pj4gICAgCQkJeGVocHNkdl9wcGd0dF9pbnNlcnRfaHVn
ZSh2bSwgdm1hX3JlcywgJml0ZXIsIGNhY2hlX2xldmVsLCBmbGFncyk7DQo+ID4+PiAgICAJCWVs
c2UNCj4gPj4+ICAgIAkJCWdlbjhfcHBndHRfaW5zZXJ0X2h1Z2Uodm0sIHZtYV9yZXMsICZpdGVy
LCBjYWNoZV9sZXZlbCwgZmxhZ3MpOw0KPiA+Pg0KPiANCg==
