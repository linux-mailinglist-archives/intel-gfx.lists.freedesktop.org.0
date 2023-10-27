Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A15567D930E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 11:07:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F334A10E956;
	Fri, 27 Oct 2023 09:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E1D10E956
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 09:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698397631; x=1729933631;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dSCLvgHCibCCTmwJVDB4Ri0U0QWpf49bQjpu1TIqgrA=;
 b=mHn870TmoalfScCBLNWjQ7lo6GwUFLF90xUxeuQoMrXrp9jQEmq/Uyel
 KwLvgzP7pGi+yDnK7+qlnmY/y8FG7/9dmUPsV4QnD9KZTvk+jNfqEXd+Y
 V53gkJOB6zQk4rphmGZjSd+GbAjyu0wa6diRDk1GlULCDLtLGjr9ifCIY
 oa9EZmpXSIZ6EuprV1EHYJtE6keDWMe1KGbnain92VjoQUG7Q1nd2N+t6
 AYpEMqijf5bBUjV9tMenu1eqMZH26mz+UWpvConPz/H3b0sMCE1m/oBDN
 t22j00HgZZCM9GKhkrUXWM4PGlrEgnGhXjnnes4odPFV/susVSJD28zWh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="451977887"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="451977887"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 02:07:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
   d="scan'208";a="749697"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2023 02:06:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 27 Oct 2023 02:07:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 27 Oct 2023 02:07:10 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 27 Oct 2023 02:07:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fwg1VbUEIi6noiOjdZAyzmyPS84lcZ62Gh/xA6tpS3gBZD3swIrp1Geu+0MML6S78eRUtTnXJ5nKJYtmTW4fIo7l26Hhm64obxzwYy8VpG4FFLfHCj2IQL/s8uZdw7ygua8A5Dijk18EjPXhxI1izk9Xgcqr6pa25Ccxje9Imi48vUEdXwQm17ImFQ+XWZ+WrhohsUj7ewAcraeVplUCQP4A3WeCSUnPyNVHS+p82iDMuTw5cet6mBYdD0Ln09TCyiu7CTkdWxvIcSO9FCAyndMERkUenxEZO7JiEgoA860iYyUAkpqnCPq7wi2/khqHkQxahIOT2yE+Z8RF0Ri1OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dSCLvgHCibCCTmwJVDB4Ri0U0QWpf49bQjpu1TIqgrA=;
 b=YsoCcOf6Yz0Qu5YibZowtL5jODr43vJuGguk26iwyo7cnTbTVvFmxSPid+3V1NRsCgFrpjhcLcJkit807Cy8RiPBmwwocQF/eDoP+2DN+iV+0jDu3PVKSPP7x9f6ujBI7VnVLhVL6vtzcEwkOB3OCy5sjdC0rRC0yC07i3P02//0SohyukQCR90rG54moY9HLXCWsypxtBgLoho3STOpeYjMj/4mRJ9LYogfk5iRRgSi5/J8r7icJIVn7PW9r3+nBD3cahp+nY7ogMvjCQow1VNmSnHsoMZXSvxi0PswogS38rk6Y6BXyyNgTl/gCU5G1pwusd/bHpBF61ggaHftZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB6992.namprd11.prod.outlook.com (2603:10b6:806:2b6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Fri, 27 Oct
 2023 09:07:07 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::5aaa:b744:b501:d297]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::5aaa:b744:b501:d297%4]) with mapi id 15.20.6933.019; Fri, 27 Oct 2023
 09:07:06 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/tc: Fix -Wformat-truncation in
 intel_tc_port_init
Thread-Index: AQHaCA3LmEnpbVje40irb+dxd3/in7BdWTaQ
Date: Fri, 27 Oct 2023 09:07:06 +0000
Message-ID: <MW4PR11MB705438E90C76E5AD9B537476EFDCA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231026125636.5080-1-nirmoy.das@intel.com>
In-Reply-To: <20231026125636.5080-1-nirmoy.das@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB6992:EE_
x-ms-office365-filtering-correlation-id: 2fcf59b0-a06e-4dbc-2218-08dbd6cc17d3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0R75UNi2DLgWo4imEQ16XKTpbVCBaf5dfFd0l4tCSA+SyZqXfGohc/IBbg7+riWfBlIGsW7/zeM4rBvlYVgxU3TGFjmi0g/Sl/UK0n7LMo4wWqw55bDulzS+cLYhgQW9kzfPwq2t08GNO3hhUKGu5Mnz5XseEhJ8KnoVKicCS7y2eTRxpFR1Lb4RzPiGSWvsQBWjSsHEiM6vCuAWXQzz2Ptkhk6kHFmYwWZPE4E1gQI2INOI1PUIcYHpAmiJFRb3rbYxmrho71osgX9So91iezDsGgbnA5vjCh9A8a6FTi3xdRFCYcFxzIN4cvk/odf8TvA1o6+gKfIbjkPS6kIpWvQ92WahogAWmmOPIv6L6NLW8JYsrjf2OdA2S+so/ETd1pcwgBo2G8bRVMRfSVkcwj/crZr31yzP7o8p32X7ZDUnenJ2Eqwsh150ym2mS3HiX17mZk4lijW/HbtoMk626qb2fpO242C92qCF0ttVaUNNuiLRNadUgRklGkJmwHWYxwpXLnP41m6XhBHvgVQRlQMaVh1BMTQrl9s3Bmom1C2DzrIl9KnvFQYl0XxuGflzVajMbncCGOHPebgdk7d10FtC3f0Q24GgklSgyVSgBG3UAGUV8qgVaNPxKn6caDsc8vQnl0iNOjga6irJrevCIZNyip8PbSLWavSwFyuiMy0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(366004)(39860400002)(136003)(230922051799003)(230273577357003)(230173577357003)(64100799003)(1800799009)(186009)(451199024)(122000001)(6506007)(107886003)(7696005)(82960400001)(71200400001)(9686003)(26005)(38100700002)(53546011)(83380400001)(66446008)(66476007)(2906002)(4326008)(110136005)(76116006)(66946007)(38070700009)(478600001)(41300700001)(8676002)(8936002)(52536014)(54906003)(5660300002)(66556008)(64756008)(33656002)(86362001)(316002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cFY3YXE2S1JiaTMxQWRraXdXYWdpQkJJanVnelhTNFNQVFhIb2twZU01cHdK?=
 =?utf-8?B?WHI4cVoxTGcrVm5SZkRFRk9JR3c3Q2tBYlpBQ2xEdTVVYkI1d0pncXlZeEFy?=
 =?utf-8?B?WFhBa08vZzl2dVlTanZaYVkyWWt6Y2VlYmFuUVFybkRzY3FjVWxkWERaUWNB?=
 =?utf-8?B?UVE1a2wrTldjYldML1p4Z1RMRE1NSzg3b040OGJuU1BCcGZHVTBaUGpsa1Nt?=
 =?utf-8?B?UjRicktleVZIdFFCR0kyZnpFazRBUFdGdmttSHF0Z3lZcHdSbUpsMkltb0NG?=
 =?utf-8?B?V09hMnR3YnZrVVJhYWpWNTVIYTBDNGJJYUdqSzVCaThxVmFJZE84VWYrTEVj?=
 =?utf-8?B?NWVaZ2owOFFpSnAzdFVxZjNFWEo5VkdxMGcwTXk2R09sMHZwT2F2cHU2Zm9o?=
 =?utf-8?B?ejRsVjFyblRrbExYV0FaVUNLMVlOeUNGaFFHa2RXRnRHY1RkUHlaRDQySnJM?=
 =?utf-8?B?RlV0cnVHYnA1a3Q5VTUzR25kR0hQdklJVEJQZ2lIbE5wdERFZDF1bmtoK05s?=
 =?utf-8?B?dlkvdmdHaFNXTi9qdlhOQWkvd0tzT0sxcm0vUmx3dWFlaHpSQnRmRGhDRnlm?=
 =?utf-8?B?MnA5WDh3MGtzV0dBN0FhOFdpZWI0YllibE5rZFhQSGdrVkdXaUVjQnc5WmlT?=
 =?utf-8?B?UnVZZnI3U09WbUNFSi9VVHJ3RHdCdmhqUDRYL2xYN2JHZ0c4NDlRUmdmenBU?=
 =?utf-8?B?VXRxRjU5cjlWRUZRaTVUWlArRVdGR2tVM3FYRUtNNWJFNDFNdDZGd1BOaUpJ?=
 =?utf-8?B?Y1JtcFJKNWgrdm0yRzU1Z2V1MEc1aldnM0d6YVVEWmgya1ZkZU90emczMzQv?=
 =?utf-8?B?WnZ3cVRrWmtEbWx4Mlh6aURpNlZqN0ZmcFk4d2lUYXRsRHNDT0MzMllyU0gz?=
 =?utf-8?B?c3Z4M2U5eVpvMGFtby8wUjlqajdadk1uYVZESWpQQm8va0dtUUx5WEdJUW9G?=
 =?utf-8?B?d3pXZnpjWHJOWlhHR0YxaTBjSWxLdlhhakczUlVSSEw4VVJJcTYwMVdSU0hZ?=
 =?utf-8?B?cHhJMW90WlVmMTJIUTE4OVFQcmI3R1dyVkE5YUk4WXFiTWNXNWtCdG56QTZh?=
 =?utf-8?B?SUFyc2U4L0tFSXo1Z0FBUWUzb3p1NDBZYWRGMWRkR0VDY1ZlL2tHcVB2K0do?=
 =?utf-8?B?a1NjTXdaRExpWFNsbkdEZVJ0MFNTOGN3M01tZGx2NmxmeG93dG9XVlc3L0xm?=
 =?utf-8?B?OTUwdTkvU0hkdXBpTEdDbVN2NUpOc0RLT1hkckszNUtDOW5kU3RNcExrZzlz?=
 =?utf-8?B?aTB6UXVoRFA5NWJtS2FjYnYxMFY3bDROczB2dFZMRDdIZ1luZUF0a2xTeEFq?=
 =?utf-8?B?dFhjWnJGUVA1bThnVkxySnBLaW5QMUNwcXd2eUVjQ3B1WHljWWRncW9ybEl5?=
 =?utf-8?B?L2VydDFjR010SGU5V2VCVUNMeCtTdmx1ditVQUt3aWZxYkQ1dGx6OTFkUmho?=
 =?utf-8?B?Y0UyZW8wTTF6VWsyUGRwQ2YrazA2dTV4V1RXZ0NpN1V5Q1Qzc1VETEI1M2d3?=
 =?utf-8?B?eUROeDltNGFTMmxNQjgzNkZGWFhZTlgySGhIc2d2Q3A3bFVvcnhTNXhjQ0RH?=
 =?utf-8?B?RXFqTHpYMVdXczUwSFZlTU5DNUFhN094QUFjeFBCcFBaSC9lU3ZrWTQ3YThH?=
 =?utf-8?B?Mit5MHo1T2pRKzF1N1hacnp6a0hQWU9nOE8zZHJ3dTlvRU9SVGM3L3VqQVQv?=
 =?utf-8?B?YlQ0aFpMc1VkQWI2MWZEcVlQRmk3NHhMRVdiUzBMUHFCTHo2blFDY2QrUmlq?=
 =?utf-8?B?bDVxbjNtcm9nNFNBbmgxVEZoRzNrMnJicytpUE9yRElkV0NuNit4RzBJQjVI?=
 =?utf-8?B?ZlRPOTAwc05wQldHMVJHWjFDODdsUjNjeHJ3TmR1RGJnZ2w3Q21LTWhoRWhW?=
 =?utf-8?B?Z2gwMVhzQWlvNDZBdUt4a2tzOHVhODlSRjd3MDl1QlpOYXNTdkxvNk1sNWdk?=
 =?utf-8?B?dkVLc0NZZ1JnOWRwUXJQTGdrMTlCdmN5RDk1YVJqM2RPZ0gvY3ZyeGlxQnpr?=
 =?utf-8?B?a3ZmNWxDWUx0RzBiWEx6Q0I4U2FDZ2dyaFk0YWthOWFCZmRUYk81elJ5RXl4?=
 =?utf-8?B?cWtuV01XNDRqWmFKRDJzT1RBenF5bXo4emRCNHVvMC8xQ3hwWE1oYy9TbDZ5?=
 =?utf-8?Q?1Wlq1tVyLl03eDxJuXbgprk+b?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fcf59b0-a06e-4dbc-2218-08dbd6cc17d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2023 09:07:06.3993 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KqHzc2ozF2XwDAOad/RFE739IJQgpNpZbkbY4YEofCd8mVkqJq3p7yYlXQrTyiLuoegH4IIQogv5HGrkYR4sKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6992
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/tc: Fix -Wformat-truncation in
 intel_tc_port_init
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Hajda,
 Andrzej" <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEYXMsIE5pcm1veSA8bmlybW95
LmRhc0BpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDI2LCAyMDIzIDM6NTcg
UE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IERhcywgTmly
bW95IDxuaXJtb3kuZGFzQGludGVsLmNvbT47IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPjsgRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVsLmNvbT47IE5pa3VsYSwNCj4gSmFu
aSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgSGFqZGEsIEFuZHJ6ZWogPGFuZHJ6ZWouaGFqZGFA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjNdIGRybS9pOTE1L3RjOiBGaXggLVdmb3Jt
YXQtdHJ1bmNhdGlvbiBpbiBpbnRlbF90Y19wb3J0X2luaXQNCj4gDQo+IEZpeCBiZWxvdyBjb21w
aWxlciB3YXJuaW5nOg0KPiANCj4gaW50ZWxfdGMuYzoxODc5OjExOiBlcnJvcjog4oCYJWTigJkg
ZGlyZWN0aXZlIG91dHB1dCBtYXkgYmUgdHJ1bmNhdGVkIHdyaXRpbmcgYmV0d2VlbiAxIGFuZCAx
MSBieXRlcyBpbnRvIGEgcmVnaW9uIG9mIHNpemUgMyBbLQ0KPiBXZXJyb3I9Zm9ybWF0LXRydW5j
YXRpb249XSAiJWMvVEMjJWQiLCBwb3J0X25hbWUocG9ydCksIHRjX3BvcnQgKyAxKTsNCj4gICAg
ICAgICAgICBefg0KPiBpbnRlbF90Yy5jOjE4Nzg6Mjogbm90ZTog4oCYc25wcmludGbigJkgb3V0
cHV0IGJldHdlZW4gNyBhbmQgMTcgYnl0ZXMgaW50byBhIGRlc3RpbmF0aW9uIG9mIHNpemUgOA0K
PiAgIHNucHJpbnRmKHRjLT5wb3J0X25hbWUsIHNpemVvZih0Yy0+cG9ydF9uYW1lKSwNCj4gICBe
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+DQo+ICAgICAiJWMv
VEMjJWQiLCBwb3J0X25hbWUocG9ydCksIHRjX3BvcnQgKyAxKTsNCj4gICAgIH5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+DQo+IA0KPiB2MjogdXNlIGthc3ByaW50ZihJ
bXJlKQ0KPiB2MzogdXNlIGNvbnN0IGZvciBwb3J0X25hbWUsIGFuZCBmaXggdGMgbWVtIGxlYWso
SW1yZSkNCj4gDQo+IEZpeGVzOiAzZWFmY2RkZjc2NmIgKCJkcm0vaTkxNS90YzogTW92ZSBUQyBw
b3J0IGZpZWxkcyB0byBhIG5ldyBpbnRlbF90Y19wb3J0IHN0cnVjdCIpDQo+IENjOiBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtA
aW50ZWwuY29tPg0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogTmlybW95IERhcyA8bmlybW95LmRhc0BpbnRlbC5jb20+DQo+IFJldmll
d2VkLWJ5OiBBbmRyemVqIEhhamRhIDxhbmRyemVqLmhhamRhQGludGVsLmNvbT4NCj4gUmV2aWV3
ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAxMSArKysrKysrKy0tLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gaW5kZXggMzdiMGY4NTI5YjRmLi5mNjRk
MzQ4YTk2OWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMN
Cj4gQEAgLTU4LDcgKzU4LDcgQEAgc3RydWN0IGludGVsX3RjX3BvcnQgew0KPiAgCXN0cnVjdCBk
ZWxheWVkX3dvcmsgbGlua19yZXNldF93b3JrOw0KPiAgCWludCBsaW5rX3JlZmNvdW50Ow0KPiAg
CWJvb2wgbGVnYWN5X3BvcnQ6MTsNCj4gLQljaGFyIHBvcnRfbmFtZVs4XTsNCj4gKwljb25zdCBj
aGFyICpwb3J0X25hbWU7DQo+ICAJZW51bSB0Y19wb3J0X21vZGUgbW9kZTsNCj4gIAllbnVtIHRj
X3BvcnRfbW9kZSBpbml0X21vZGU7DQo+ICAJZW51bSBwaHlfZmlhIHBoeV9maWE7DQo+IEBAIC0x
ODc1LDggKzE4NzUsMTIgQEAgaW50IGludGVsX3RjX3BvcnRfaW5pdChzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCwgYm9vbCBpc19sZWdhY3kpDQo+ICAJZWxzZQ0KPiAgCQl0Yy0+
cGh5X29wcyA9ICZpY2xfdGNfcGh5X29wczsNCj4gDQo+IC0Jc25wcmludGYodGMtPnBvcnRfbmFt
ZSwgc2l6ZW9mKHRjLT5wb3J0X25hbWUpLA0KPiAtCQkgIiVjL1RDIyVkIiwgcG9ydF9uYW1lKHBv
cnQpLCB0Y19wb3J0ICsgMSk7DQo+ICsJdGMtPnBvcnRfbmFtZSA9IGthc3ByaW50ZihHRlBfS0VS
TkVMLCAiJWMvVEMjJWQiLCBwb3J0X25hbWUocG9ydCksDQo+ICsJCQkJICB0Y19wb3J0ICsgMSk7
DQo+ICsJaWYgKCF0Yy0+cG9ydF9uYW1lKSB7DQo+ICsJCWtmcmVlKHRjKTsNCj4gKwkJcmV0dXJu
IC1FTk9NRU07DQo+ICsJfQ0KPiANCj4gIAltdXRleF9pbml0KCZ0Yy0+bG9jayk7DQo+ICAJLyog
VE9ETzogQ29tYmluZSB0aGUgdHdvIHdvcmtzICovDQo+IEBAIC0xODk3LDYgKzE5MDEsNyBAQCB2
b2lkIGludGVsX3RjX3BvcnRfY2xlYW51cChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCkgIHsNCj4gIAlpbnRlbF90Y19wb3J0X3N1c3BlbmQoZGlnX3BvcnQpOw0KPiANCj4gKwlr
ZnJlZShkaWdfcG9ydC0+dGMtPnBvcnRfbmFtZSk7DQo+ICAJa2ZyZWUoZGlnX3BvcnQtPnRjKTsN
Cj4gIAlkaWdfcG9ydC0+dGMgPSBOVUxMOw0KPiAgfQ0KPiAtLQ0KPiAyLjQyLjANCg0K
