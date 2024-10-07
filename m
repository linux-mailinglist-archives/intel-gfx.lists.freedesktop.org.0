Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28568993918
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:25:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A6E10E423;
	Mon,  7 Oct 2024 21:25:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WjPVgsQq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0573C10E07E;
 Mon,  7 Oct 2024 21:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728336329; x=1759872329;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4vxnxYBNyEJRryFB0MGwZAhu+3lqZEGr4NjyU40w/zA=;
 b=WjPVgsQq7t4Sb1NpNWpOkt9t0HfccTXX026TCVLdyLaD48jZ8kej043+
 vVAEoGR/9VMAyTXVu6CZWIgCgcmwDmdZVoODS0QHz1UXYXOpcrf/XBImE
 2X21wrPMjbdM+6KrOII3wEGlQgJ/gyRciI+CTpk2AwRuk/hGS7dxlnVqV
 HZxhs/beFByALVvbXscdsCT23MLHjN8C/3SOAtdyR6sx/hXAViJbfgg3h
 frmJvvycRv/94FFORezEc9Qq+Y1Ye3CNaX9ryiivCGWbJYYFjsYjXg9NX
 NYuF/EKdNoPtUfsM0NonLRsBj8nx2PfUoq2x3eghuCSVi7vTIQUUw3zNw g==;
X-CSE-ConnectionGUID: TbUKUf1+TN6jNg5HTf66sA==
X-CSE-MsgGUID: R021e0UsShW1XB6k6sAr8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="26964334"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="26964334"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:25:29 -0700
X-CSE-ConnectionGUID: p3sDLhX6Rd+RUpeSv7pT8w==
X-CSE-MsgGUID: zC3kPiGPRLSe7GXLcEpo5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75444666"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:25:28 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:25:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:25:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:25:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:25:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=srKTCNGZmB6nfR3Y+w8VAPbzf8gj4NPbMTxPJKaJlqsOxSp4DOPXjSDK0B8ZC44w0l2chB3/U6NmPYTEQ9QmeK2tBAwIeCCTbTdrcJ19yhnRmMyprJ7P+JxF5dHqsJ4vI2lrLGzKIQDZKYGmxGSf9+mUAaPfM7v6JRCckQrZ3dhIpjzYVjIIArbNibAeTfYxaVNBpodWRCRF99iDr1hYV8VOFZU3S70GapoTa4HPd9EUsxuFlIOUyeJ5XBLW57s82AnAG+2elIK2lZxVa8hzhBRya7iLhp4j51ogytJdC56Vvq6tkISiQEde60FDeAmeQE/5qPAXW/ZzSCjSjl+q1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+rDEsMDpzo4WEd6LOFns7X0ssx/lIy1Flwr0VqbILQU=;
 b=pCux6Iz1cLMLOMz4k8lrqdxzcnVtRjsBxlWdrqS/afaIiiTdcROVhpGO2OCdOYGI7MMiq3PIcdwX0Rt7xlyOAhnI1CxEjXCIcyF0IoLwTYN/GggY2xB1rEC/FJwSlh3r2IESjzcXFOwLPBESsB5xlbmQP3TdG5He810U1D3CqG9CmGbvMbDtmjjeI1ctAgwir/cS1fXn1Z0XaeBVQlWuiB/8K52YebpPJOIFr7poJv3erXrCNgkAJZwARY9ClXgJeVQmykk2FlNva0SzY86hcRuhGRaNn51SHPTm4pYris5L4t6HDOpcNGm4x37+fvMz2O5xVPvDv067hPbsi8H+DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by IA0PR11MB7402.namprd11.prod.outlook.com (2603:10b6:208:432::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 21:25:25 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:25:25 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 16/31] drm/{i915, xe}: Move power_domains suspend/resume
 to display_power
Thread-Topic: [PATCH 16/31] drm/{i915, xe}: Move power_domains suspend/resume
 to display_power
Thread-Index: AQHbDsJ4IOVjVwcdq0qlDaLBKZz2prJ73xyg
Date: Mon, 7 Oct 2024 21:25:25 +0000
Message-ID: <BL1PR11MB54455F9530510F48789FDAEBE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-17-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-17-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|IA0PR11MB7402:EE_
x-ms-office365-filtering-correlation-id: d99cc2d4-4c02-4c96-f586-08dce7168ec4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?K0XdttAByMhUUCXAJyVN6ao5XH+yXlSo7mr39CX3/nYBzyeiHPBXQttUISHS?=
 =?us-ascii?Q?GZKNj/UB0mL9aojJLGDztX9djD+g55RpLgXI474lXfS1SuJtxe1Z3qv3UdF5?=
 =?us-ascii?Q?96hg8UdnNIJuib+KKtVfszDIKQo7SPxM8f+XkReIqWjCmPtWh3A9QsxsICa0?=
 =?us-ascii?Q?hN9QOwNa9WgvFRPHdUP5y8FCYOqcjcvtE6sHkrBI8gCXYjrXG8jT2IKcRz0F?=
 =?us-ascii?Q?zFDbafjvcKYgKkpLiFT9VD0tJCksmtQ84AOKjQ9/lu61uxoiNylRmpQBdPTt?=
 =?us-ascii?Q?LOQKgmG3/1VwGj38NyfZ3fWtKDVoqfzCJnoBLG8VGfF9sZV4PnGoB+7a3sP/?=
 =?us-ascii?Q?j8gePK7zPtwR/bhYzdg29rJuTrCK7U5AGePJf+4MC/g1FPxV3i3YI9QMW06Z?=
 =?us-ascii?Q?f2ehKmyrkHa9uHvbEVIt0VHJ1r9Zr9nwPUVHWUMAbcSJ8p+LB6pBiz6WxySh?=
 =?us-ascii?Q?ORQmR1MZN8A4qkLbmCxanzM2nc8sYiHueIHrUQz+AvwLwkz2c1Qw0mgo63Ky?=
 =?us-ascii?Q?2gO12usKriCBPj4/pDjeyoZKQ8P5944bqnhA3FVF3VI+SvfyLa2Qo0OaSl8H?=
 =?us-ascii?Q?bOK313NgiHXTGhQVQOkaqwlWJAhbT/PwSm3IB1YNPnt7GoSikEwgBj0yr2v4?=
 =?us-ascii?Q?uXptxhpsa/CWogy6moB25cqjrZ7AzE87Xail64BqX7SAjXrc6YYovE4SFD1U?=
 =?us-ascii?Q?BeYbacaCf6/6bg8OGcMoM+3Cwhnpug69DP0FloY7aKeE/srTKq/t3uvwGcXI?=
 =?us-ascii?Q?lR6NK/az/ucCAjoCqlyCG8pG3wvkYNFJRnp1OBK9ub2bj/eQ/9sRZbLXgdUb?=
 =?us-ascii?Q?xqDC+8O42NWu06RRBYJQ2k9tmVkUbBMtpyTBPj7YQCtZLOLX/LaBZI2PbKbx?=
 =?us-ascii?Q?MXe48pIdJKgr5rqQawmhswTP3tjQ1ca9mRYjr/FkIHS4xq1T4cOB1JSw+5kt?=
 =?us-ascii?Q?TtRZJyFrTpx1N8FbYRtjUvODLARlUHGF70nVu6kM5+aPLL0xfaNqYNtd2ySp?=
 =?us-ascii?Q?y/VBbOPGbynk7FJm/7XJIjbK3/SWm8VyaOQr116wQsvqLNERJ6iu25eg11C0?=
 =?us-ascii?Q?4qgl1xcLioMu9VxVAzMroRFoBGR40i4DfBqENpqFoGOqjazF/VZRv04f9PSP?=
 =?us-ascii?Q?8E2JBFmzk7PlC2N47lgAHGISs/KGYuV2r+eQ7IaiDj1GgYydVwtjTqx8Sa0l?=
 =?us-ascii?Q?zvzfcjtTimfTx2F/iOsRiRqBM/ZLioQ3PnJ8ipnKpYhSve1bspM6BATa3CKM?=
 =?us-ascii?Q?rpdGAApNLGahkjY90vsS0m0fo0NFGdoidO+2wRzkBBbpUE1s6HQeBG7p6Qh+?=
 =?us-ascii?Q?DJnMpF2wnMOEyyr6T3DVqmd3?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vsvvQtRofbc9EMvhP5V+X+P9+bvnzBizvkHvd2LQVQdyxwNkVmyTipIvB5s7?=
 =?us-ascii?Q?Q67QKw/CY+zjhrBlO9oZoCR2BRgguLWCKtLJxLxiiN0ZL/s4BwzhNP+tWac2?=
 =?us-ascii?Q?lYj1RgeL4VDdK8JdgrtdE54oPaz/Nzm3iMk548kEeQkZRYuIbQp30pj9CnFB?=
 =?us-ascii?Q?EZHCiaW2yeq0nM++PY3AUNqo+Fpbf5DEo1NVof7qN8cdHrPO7oyBVoOPW1XK?=
 =?us-ascii?Q?/qiJffF0U583Bt1M9dg3PwSuqs9sL6Pv/OU7sbB+yOvpK1icn5jMu9+jU5em?=
 =?us-ascii?Q?xfeBZgXfXf9UuPVlHCQuEAQ3OhPDkO9o9ckdwEQmpC94m+q6kakUbrOKdXbS?=
 =?us-ascii?Q?ySFhLZSalm+chyZzKb5Y1IGzQqEmcjVmIBTMTSSrPCm9rklQSTySZBnUv8J6?=
 =?us-ascii?Q?aRidyuEb8vccOgF/hP6DmLsZ1TlfqreHFv9sFJclVyi0xUEGqUFelFMP5jWP?=
 =?us-ascii?Q?LIUhNbOYOZQ9qmoc8HgyJi3F+qpshEMX2GYZ9LsonX/3bFhFAgG7S1M6THzB?=
 =?us-ascii?Q?kEy4j7y9mZDQf1RZ2dnPN8shAHekZKXvNpyL8hLHVS6pb+6ufAnOux7DfPKp?=
 =?us-ascii?Q?xQRfQaBpAYCfU9rxiti7GK3QDmQpqCkZUJV//ndwLB6kNoPXUERks2bEVtV0?=
 =?us-ascii?Q?08bIS9huuB0cKr3zMrsmuR8KXTYi/dcfXOyztc8yUkJrSHf3Kpt+DqOMkZgV?=
 =?us-ascii?Q?2Vwk5gZ0Ps9tpHbrYAqPHS/poOVGjvRYTOhi6flhYcAOu4nr7CNX0nmc8hRp?=
 =?us-ascii?Q?NX59l+q3vbNIm+DYSKXX66XCSba4cWym8woOWbXqAX7FdBnC5kzs6m1basqF?=
 =?us-ascii?Q?vhYO8jX0xp44swmhVU+mkq3K5J4q7Vg7yZXZ+CTqe+aNifvopLXlHET4DVos?=
 =?us-ascii?Q?J/0RaEYsgl6DXEzm2wJIp28I3U58NPNobMgKRnRYIdIE6a9drw3CVzBQSjeX?=
 =?us-ascii?Q?SzH3p1dWLwPQ3sldSAVefO1vfpM/oMZaQArkHyYL6NABGSxbEKye5/m4V7aM?=
 =?us-ascii?Q?kvYK4mAvynI2//z2Ix5N0gCEvM4xzdWPRf+rOmWk6RWlfTxUbfoGzQBv9eN7?=
 =?us-ascii?Q?OZQK8r4bAKMbZBEie8JP1QtIuEYOA0kMLaXH8AxU8LJGHmKwGwoTvWi9036Z?=
 =?us-ascii?Q?7OqrsmUo2ju74SjGQk/zO7OmP7CljG863/ZWsxL7jeYov6Tz33YnVdmT7Xrs?=
 =?us-ascii?Q?jC2fhy/VPxgrwauttctUoSXSxhRX9VJlAZQXICYndsgbLH7DC6mxai4pQiFT?=
 =?us-ascii?Q?dXsCCugMerFs9T/3SjP899TjY9C9+PUsNIBKHR9LCJ/+eZLEkM/L78tWz3TP?=
 =?us-ascii?Q?6JeVec0FJcqxY7yJngvofgg2vxOpvwFrbflpUFpRhh1gspJ0rCrgy/KXFQ3U?=
 =?us-ascii?Q?ADL77P47/VRp5/dlb3pFR74x8RE3Pjn/wiPbeXlexucJ9YxVPotRjr7JiaBX?=
 =?us-ascii?Q?2RQdEbBZs/3fAuT0BddFRqkobJCTloVcnUn39b2fAbZEF0c0tm+swux/ZpYu?=
 =?us-ascii?Q?ai4JhuV5m3VU0lAPwY+8RhW3Ow7LJDaQnpb4JhJVv2aXyQz2Bix8owuM6OgV?=
 =?us-ascii?Q?BD8XjKMmbphsICssKOxDvE0OqSY+rmYUfurgt4g6xFLUDOwhjxMqe6zVKCFE?=
 =?us-ascii?Q?8g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d99cc2d4-4c02-4c96-f586-08dce7168ec4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 21:25:25.0211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wx7XVcMve64gBrf09q1vbeB51Yn7tXSCK4u+/AKijhSZOMrZ/Rp3dqNBafL4VoOfaHA1hau8cdrYJQAbeAuHTiAFCvo74UNVaLJRY+GSUV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7402
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 16/31] drm/{i915, xe}: Move power_domains suspend/resume to=
 display_power
>=20
> Move intel_power_domains_{suspend,resume} to inside
> intel_display_power_{suspend_late, resume_early}.
>=20
> With this also change the VLV suspend failure to call
> the intel_display_power_resume_early. In the end, the only
> function executed there for VLV is the intel_power_domains_resume.
> Besides make the code more consistency give the call that was
> immediately before: intel_display_power_suspend_late.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Debatably, this should be done the other way around: Instead of
putting intel_power_domains_resume as the last part of running
intel_display_power_resume_early, we should be making
intel_display_power_resume_early the first part of running
intel_power_domains_resume.  Same with
intel_power_domains_suspend and its relation to
intel_display_power_suspend_late.

Also, this patch may want to be split in two (for i915 and xe).

But I'll trust your judgement here.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++++-
>  drivers/gpu/drm/i915/display/intel_display_power.h | 2 +-
>  drivers/gpu/drm/i915/i915_driver.c                 | 8 ++------
>  drivers/gpu/drm/xe/display/xe_display.c            | 7 ++-----
>  4 files changed, 10 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index ecabb674644b..923178a4ffe5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2231,10 +2231,12 @@ static void intel_power_domains_verify_state(stru=
ct drm_i915_private *i915)
> =20
>  #endif
> =20
> -void intel_display_power_suspend_late(struct drm_i915_private *i915)
> +void intel_display_power_suspend_late(struct drm_i915_private *i915, boo=
l s2idle)
>  {
>  	struct intel_display *display =3D &i915->display;
> =20
> +	intel_power_domains_suspend(i915, s2idle);
> +
>  	if (DISPLAY_VER(i915) >=3D 11 || IS_GEMINILAKE(i915) ||
>  	    IS_BROXTON(i915)) {
>  		bxt_enable_dc9(display);
> @@ -2262,6 +2264,8 @@ void intel_display_power_resume_early(struct drm_i9=
15_private *i915)
>  	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
>  	if (INTEL_PCH_TYPE(i915) >=3D PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1=
)
>  		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
> +
> +	intel_power_domains_resume(i915);
>  }
> =20
>  void intel_display_power_suspend(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 425452c5a469..ccac3c06b2f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -176,7 +176,7 @@ void intel_power_domains_suspend(struct drm_i915_priv=
ate *dev_priv, bool s2idle)
>  void intel_power_domains_resume(struct drm_i915_private *dev_priv);
>  void intel_power_domains_sanitize_state(struct drm_i915_private *dev_pri=
v);
> =20
> -void intel_display_power_suspend_late(struct drm_i915_private *i915);
> +void intel_display_power_suspend_late(struct drm_i915_private *i915, boo=
l s2idle);
>  void intel_display_power_resume_early(struct drm_i915_private *i915);
>  void intel_display_power_suspend(struct drm_i915_private *i915);
>  void intel_display_power_resume(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index c9df361f898f..9e788e1c178e 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1034,14 +1034,12 @@ static int i915_drm_suspend_late(struct drm_devic=
e *dev, bool hibernation)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_uncore_suspend(gt->uncore);
> =20
> -	intel_power_domains_suspend(dev_priv, s2idle);
> -
> -	intel_display_power_suspend_late(dev_priv);
> +	intel_display_power_suspend_late(dev_priv, s2idle);
> =20
>  	ret =3D vlv_suspend_complete(dev_priv);
>  	if (ret) {
>  		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
> -		intel_power_domains_resume(dev_priv);
> +		intel_display_power_resume_early(dev_priv);
> =20
>  		goto out;
>  	}
> @@ -1211,8 +1209,6 @@ static int i915_drm_resume_early(struct drm_device =
*dev)
> =20
>  	intel_display_power_resume_early(dev_priv);
> =20
> -	intel_power_domains_resume(dev_priv);
> -
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> =20
>  	return ret;
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index e5df50221a04..d5be622f831b 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -404,12 +404,11 @@ void xe_display_pm_runtime_suspend(struct xe_device=
 *xe)
>  void xe_display_pm_suspend_late(struct xe_device *xe)
>  {
>  	bool s2idle =3D suspend_to_idle();
> +
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	intel_power_domains_suspend(xe, s2idle);
> -
> -	intel_display_power_suspend_late(xe);
> +	intel_display_power_suspend_late(xe, s2idle);
>  }
> =20
>  void xe_display_pm_resume_early(struct xe_device *xe)
> @@ -418,8 +417,6 @@ void xe_display_pm_resume_early(struct xe_device *xe)
>  		return;
> =20
>  	intel_display_power_resume_early(xe);
> -
> -	intel_power_domains_resume(xe);
>  }
> =20
>  void xe_display_pm_resume(struct xe_device *xe)
> --=20
> 2.46.0
>=20
>=20
