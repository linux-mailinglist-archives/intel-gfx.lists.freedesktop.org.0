Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADDB9B5AD6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 05:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A5810E02F;
	Wed, 30 Oct 2024 04:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UcpsPhv9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 648FE10E02F;
 Wed, 30 Oct 2024 04:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730263791; x=1761799791;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Q3EyA3M+o/JfnKy+g1gA+FOSSSmrbMhVPxcDfsIFCag=;
 b=UcpsPhv9+GNzw3ru/T3cznSfd5N0OEof10JI+Xy2AhWBWN/esQvz2dmx
 XrzeEp2/EMip4+gSaxlgmCJSstBekIRgUeR8KK0rov5VMY5Uaa6oHu8CT
 HNcCsdup5yv+deRk2GnkVI67veGVWxFh3PZNIMkl0l1bQk23ovAo3QuRZ
 JuEuoXHIM0JBZ5j5IcQF+oh/2gaJ0t5Te8w02f44IUBoTenZ7wwkJ9eN0
 rFDJKn98CZVR7aAQyVWuo2UJXHIC+8X8XYUc/rKYSGjxLx/BvkJeUzEzO
 +rfNndOgJzCViRUXk376OalFnofyq8UFcNtEc8s2PTTdbvgkL+VLck5wX Q==;
X-CSE-ConnectionGUID: 7xd1eptqRjek6Gk05GUnbw==
X-CSE-MsgGUID: bbbVEMznQq634ACMlmJ3Iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30055536"
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="30055536"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:49:50 -0700
X-CSE-ConnectionGUID: /eGw2I14TW+cnHSBlY3s6A==
X-CSE-MsgGUID: 9DN1jSdITCCwe9gL6CduPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="119671679"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 21:49:51 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 21:49:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 21:49:49 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 21:49:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TsrTkwhdBFu4B59sliznXI2QbNujXAT/VLtjzzg+XkJZXuc/NAiulEyDpCRMO9+eojTDdTJuxpY8WmgmUh46F8+FGcdIBdqGnPey61pAb/TMXoZ9U7egPDIJs7zwLyqsJ3EJUqPgSzmRblmXcS0FUWr3+QKvMeu9yIAQsT8+V211FW/safnlwQxzSUFK+SwyXYWQcfk/VxX7gDiFOq4l94XStU3ItglTQ+RDRe26Dx5Rghc6T3XqS8s6DFwcsC1sI8GMRUXeV8B3hlTVKb8HxbVtNRbf5CtbsLatDkegJoJZLE8EKmor+uwiNaptkXiCrYyYoHJQ80lsz1kV2lcS6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=42ADBcf3sC+0uug1ON+ZuF8NT3YHfHWQDwdtdEbbU6I=;
 b=aCE6sNt+jfAxyNJuc2faEWoGH6IgqhUkxlEDRy1S3HRoTpjttEY9gNPQNAvgZ61HyPbWxwFdLc4VVu0y0IepOUJPpqxM1AjP6CQXefa0VyaDg01tn1tzgrkiI833DSnE5YDxK5FV2uumP8PhlP3M3aRb2G4TZrvXQlEoBKgB5u1Jz3lTPpPQCj9ujvdrP3/oiXWnnsvClR2Edb6u6Ba1ZB+XGxZ7Ds24gT0IK9VO3wxDcbJ9ip09P5f5HOGkcEAq/cXjByn2H420Ngikb7gFbSoWYC2+8jvT5F5TzRhR0YDNrw0MULQVwZ3mm01JLU3TaTG6g8BdvkbZe2wAUuVmvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH3PR11MB7369.namprd11.prod.outlook.com (2603:10b6:610:14d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 30 Oct
 2024 04:49:40 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%2]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 04:49:40 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
Thread-Topic: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
Thread-Index: AQHbKnbp4XtbkNi8ZkydmycNB4EgfbKetn8A
Date: Wed, 30 Oct 2024 04:49:40 +0000
Message-ID: <SJ1PR11MB61299120730252D07F24B054B9542@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241030025304.317977-1-suraj.kandpal@intel.com>
In-Reply-To: <20241030025304.317977-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH3PR11MB7369:EE_
x-ms-office365-filtering-correlation-id: 8b0d8670-9184-4483-79e3-08dcf89e43ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?VUuMRsBvi31xTc33veQFi60SvLd2sIENqOeehY0dNBax1nPx6YQ4b6ULNVzG?=
 =?us-ascii?Q?eZlGaCz3X2FevFNNOlLKKzdnR3IxxJXq4FhEX4cR4MdzNJpUEh+AA+1c9NTZ?=
 =?us-ascii?Q?Hhy0v26o9537aykxg2N/1OybtWFD9N34h9CAZHoEwVHQWbb/WjZjHQsp6UW9?=
 =?us-ascii?Q?jOshjn4yaoK85He5suria1HO0t12yEuqa4VHkTlX+QvB1N4OC+0UDZpfLEep?=
 =?us-ascii?Q?9lD25hjY+nQ045QyUk+gIqck0Pj09yEWgQlN756868db33Fdun9iC6CoWTDk?=
 =?us-ascii?Q?gKy63amchKiPR5z3d165jtnTiigCBwxHPJcPpTohSSTE+aruK0QfMpls4ip9?=
 =?us-ascii?Q?ONNpawto/y8RJby9Lwmioyh/XMRbLbjlglM4uRuahKay1ldmKUM+D84bMNr/?=
 =?us-ascii?Q?IJAurj5JcxOG1CIlTDUJWt/LY8vARepxAjYBhNVzv+39PXOTROHM4uU5jtks?=
 =?us-ascii?Q?hP+qu7j3lFDRSvWDWC1U9HbgRQzbcv2hmFRS7XR2ggf0GX8ARNiIw2S8bFRl?=
 =?us-ascii?Q?HU2sLOA4f1qoxVQ1RUpmVQ1rTQKzt7fFWKjNUEFclfKo8CTx3Y0aUI5xWMI2?=
 =?us-ascii?Q?87hJz+wIrIwEHIWqud8iRGbK8iLqV2W93D9f2ogQxf5reJhsMQrirRqWvGrQ?=
 =?us-ascii?Q?QPR3Zo9LLlVo0NIwB5hqk6SlaZajkUbRUWtSRYydgRpHcvX0ChVNO4ckS3Wi?=
 =?us-ascii?Q?a3UeHcLYeMWYgV+vB6V0TylWNYZBjvcJxsa6OgJSy2OSKd1nLlvbo4Nvn23K?=
 =?us-ascii?Q?YYJ8ooVaOcAHtjO6G4gFrGMywq+wlXrfvuZ51Ns+Cuf3LPvJlI4WaOlPz3FH?=
 =?us-ascii?Q?DfG9Mn63vLFDYegHiSxGYN4PyM4Kl9fExSqKJfUk9nCIkd6luFtnJbmDMgrP?=
 =?us-ascii?Q?e75ZaDjGqZhg5EG6kCpWAGQbWQpQ21ndfP/YHZShyT6VcAJ6UVruL2ye+6Vy?=
 =?us-ascii?Q?Pq/SgPtArlCmgwj2W0OiAOImX4zf3uyv5CXb60gmZmbuu/OLhxnrwoRqmIMm?=
 =?us-ascii?Q?w25FtMUdMGAIdRaGpNIg1Qhlp4JLWoYkb9NzRQbRbNFvKCCBqkHh9x289JM6?=
 =?us-ascii?Q?A2a/cKSmp+2hdjrsiZ6qUgxOz89324qyCXSA8pI6AkEtL7nwKn60rC4a+zDA?=
 =?us-ascii?Q?71FmmbN+6uMWa3IpEN1e8Qrz/U1BN3FFcsk3OfrOSO2IeMBkzVYdn6Hund36?=
 =?us-ascii?Q?ZLLvH0wEXS9ximk+XJ6yxCdhgauEoL1Oj2Tjrr1FLg+Jw8BzJ6FN6KIUCM8D?=
 =?us-ascii?Q?ZvssM5BtQ3A44Wt4xxGuH63YwsAfBqStT9SKUaXHwME8MBtFW1V9BjHw3EAl?=
 =?us-ascii?Q?0bvybzHji22cHcfvIrbFQDJ91vi8r81v9Q6MvmKCvPcdFKhakTxrBRAzj4Vp?=
 =?us-ascii?Q?WiGeDSE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EavK95aNUSspclRiKrVSHzHm4qmTuGmxIPRV8mHLXbx81niudRU7WZljhz/8?=
 =?us-ascii?Q?VqUC1uwPE8Gsw4LFOsy+6WgGYhYZ+8s8jab3ksBlAqoY8EhybslfToO/XoW8?=
 =?us-ascii?Q?31wawO9Pmp40vL1ne4VU5VnMQRRghmJw6GQLUgl3l22ghUpEQkTCdrVOblaG?=
 =?us-ascii?Q?kz5qBg41NpB6vIfA986V6MhWIW9YBH7RQWMl6qxXGFT8JkjPZB3BXPnFIQWx?=
 =?us-ascii?Q?epnsEUezYPDOrPQXJjpqTq9Fsrpj8TUAZX4CgAv00wfo02peuB9Ll4o0aXLN?=
 =?us-ascii?Q?9MrinHAZ8Y8aLo7QAch8VIpAWP91MAwKHhdT7Bt9N8WX3uQLJq0JK7lIW2e2?=
 =?us-ascii?Q?YvITqeSpUph0SCPWVeT/fC8CX2Ma+Gor5OuVcjxS8MmOvju6HgWhB7qZRBTw?=
 =?us-ascii?Q?IH0x2cLipz5rMkqXlStfWID8I1Zt4W46V5ly1jnntZ9hyXpiAvRL3Wb7KyLG?=
 =?us-ascii?Q?K8PBpvVByzcBcIeXSRvMIyf9tWJiATmuHq2sBk6SgNrW5dGptk7tw9AtlPMA?=
 =?us-ascii?Q?JY5rDX3wTd/uMfGfvoUCS4p60Zb1lh/YyQNLuEbvCofXRBrkNLEeFwVoN1X4?=
 =?us-ascii?Q?2A/iwhyrfGCJiWN6Xt0VFwWnPKCa52pAL/YZHvBlsSJNgevZbgSdHGzQi+Jm?=
 =?us-ascii?Q?n4X/YeIVrKVia3vtNjgrqml1YfKiOzD6CCMgIyYO+KCVXefN3nrN17RDruEN?=
 =?us-ascii?Q?WPfOdvrOvO7O5AuANvmV4JVESAx3ExnwfxC/jRwGHkKQEhGBYPO2Uh2eWlQQ?=
 =?us-ascii?Q?XiJbQY6ff7OBz+N7P91J+7wp6l7PaJUFWh2CsM6EcaHXgrEvozx2lGxt4ru7?=
 =?us-ascii?Q?tx8wO8zwi3PmcIlEwPEMmywZ8CX9lnmJsvfiRP0Jz2FMcSOLuq2136M+ZruT?=
 =?us-ascii?Q?iOa7Qf1TVpveTSWCwheOJy8ICehKgGaLG2rTColPows2Srdz7EP/A01ZvAbQ?=
 =?us-ascii?Q?taQonS8Wm+1P/ZSYSCVx+NqgBiWNcGjMNrUn/UHALuqaRB87SrcuTcXMVkbm?=
 =?us-ascii?Q?Gw5BdSq7juYz/47QpPinaj8C1ZlLXd45i6i4QGFvbbUzKaCilEWD9cwf7SjO?=
 =?us-ascii?Q?NfnBSLKTKP1FVjbdJHs9u1+pmZzdaCXTexE9QiYb6lZkeDymbrcpqflRga99?=
 =?us-ascii?Q?KgyE2MT6HFq6adtoeWk7Dt/WUBaeureCFO81A+1aWM8/jUabclNBoYxDWE7Q?=
 =?us-ascii?Q?9I1nAzMJ2h46ShgXSxr2r2A6O27CEA29thevGY4S0NWH4pdIuIwZRn7yh3EO?=
 =?us-ascii?Q?H9D4E2BpTzBBqO9OsgpeHs2A0NfTlMfq0oNam8roO2jNm5iIiuAaaBrRz0XS?=
 =?us-ascii?Q?lXVjzYs0sGLT71m2cP91uN2DxPMJnYa7b/lpYToIrDPmquSMmBBWzIFOqna2?=
 =?us-ascii?Q?efmkIuMZ+TWMebR4FpvUkt/fdqQnqd+lLZco8lcxa2r9vBIWyo+PEVIhlqee?=
 =?us-ascii?Q?hbdG2kfqyoqQdPo2OMSfgy7fI8eBmec6jNA06RqHMa+OdSZtnvus/Wf3342g?=
 =?us-ascii?Q?tYPKos6j+//hiWU/vl59v9laUjVuZgpN8x/RWs1pgOYGazsVNeM5QFDWuHgE?=
 =?us-ascii?Q?nNEs2qkSrrOC+McnzZEJIEaPjNfCE9yO3nDqboah7Tcecmx6CYvVgoM6IEMv?=
 =?us-ascii?Q?Ug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b0d8670-9184-4483-79e3-08dcf89e43ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2024 04:49:40.5610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jSDbMDLUsV9SC8ibjRWz76Z2mGOC0nDbfSnV/r2nRTbF96zIl8KnUBDfJY42VNZKYN3OahYyrY3T4shfF9n26ay6BUvm3Ybsp1xw/GrYw3Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7369
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



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, October 30, 2024 8:23 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
>=20
> Add the loop on the first read/write we do to give docks and dp encoders
> some extra time to get their HDCP DPCD registers ready only for DP/DPMST
> encoders as this issue is only observed here no need to burden other
> encoders with extra retries as this causes the HDMI connector to have som=
e
> other timing issue and fails HDCP authentication.
>=20
> --v2
> -Add intent of patch [Chaitanya]
> -Add reasoning for loop [Jani]
> -Make sure we forfiet the 50ms wait for non DP/DPMST encoders.
>=20
> Fixes: 9d5a05f86d2f ("drm/i915/hdcp: Retry first read and writes to
> downstream")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 36 +++++++++++++++--------
>  1 file changed, 23 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..c8ba69c51cce 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1503,6 +1503,8 @@ static int hdcp2_deauthenticate_port(struct
> intel_connector *connector)  static int
> hdcp2_authentication_key_exchange(struct intel_connector *connector)  {
>  	struct intel_display *display =3D to_intel_display(connector);
> +	struct intel_digital_port *dig_port =3D
> +		intel_attached_dig_port(connector);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	union {
>  		struct hdcp2_ake_init ake_init;
> @@ -1513,31 +1515,39 @@ static int
> hdcp2_authentication_key_exchange(struct intel_connector *connector)
>  	} msgs;
>  	const struct intel_hdcp_shim *shim =3D hdcp->shim;
>  	size_t size;
> -	int ret, i;
> +	bool is_dp_encoder;
> +	int ret, i, max_retries;
>=20
>  	/* Init for seq_num */
>  	hdcp->seq_num_v =3D 0;
>  	hdcp->seq_num_m =3D 0;
>=20
> +	is_dp_encoder =3D	intel_encoder_is_dp(&dig_port->base) ||
> +		intel_encoder_is_mst(&dig_port->base);
> +	if (is_dp_encoder)
> +		max_retries =3D 10;
> +	else
> +		max_retries =3D 1;
> +
>  	ret =3D hdcp2_prepare_ake_init(connector, &msgs.ake_init);
>  	if (ret < 0)
>  		return ret;
>=20
>  	/*
>  	 * Retry the first read and write to downstream at least 10 times
> -	 * with a 50ms delay if not hdcp2 capable(dock decides to stop
> advertising
> -	 * hdcp2 capability for some reason). The reason being that
> -	 * during suspend resume dock usually keeps the HDCP2 registers
> inaccesible
> -	 * causing AUX error. This wouldn't be a big problem if the userspace
> -	 * just kept retrying with some delay while it continues to play low
> -	 * value content but most userpace applications end up throwing an
> error
> -	 * when it receives one from KMD. This makes sure we give the dock
> -	 * and the sink devices to complete its power cycle and then try HDCP
> -	 * authentication. The values of 10 and delay of 50ms was decided
> based
> -	 * on multiple trial and errors.
> +	 * with a 50ms delay if not hdcp2 capable for DP/DPMST encoders
> +	 * (dock decides to stop advertising hdcp2 capability for some
> reason).
> +	 * The reason being that during suspend resume dock usually keeps
> the
> +	 * HDCP2 registers inaccesible causing AUX error. This wouldn't be a
> +	 * big problem if the userspace just kept retrying with some delay
> while
> +	 * it continues to play low value content but most userpace
> applications
> +	 * end up throwing an error when it receives one from KMD. This
> makes
> +	 * sure we give the dock and the sink devices to complete its power
> cycle
> +	 * and then try HDCP authentication. The values of 10 and delay of
> 50ms
> +	 * was decided based on multiple trial and errors.
>  	 */
> -	for (i =3D 0; i < 10; i++) {
> -		if (!intel_hdcp2_get_capability(connector)) {
> +	for (i =3D 0; i < max_retries; i++) {
> +		if (!intel_hdcp2_get_capability(connector) &&
> is_dp_encoder) {

Now I am a bit confused, if you are using this Boolean here. Do you still n=
eed different values for max_retries?

Regards

Chaitanya

>  			msleep(50);
>  			continue;
>  		}
> --
> 2.34.1

