Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B686F47D9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 18:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D907E10E2E5;
	Tue,  2 May 2023 15:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 994A010E2E5
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683043196; x=1714579196;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=lrD0hEhjLrGKSj6CtXmxpI070WtTUuH04dvErfaqvWA=;
 b=j/zaHzAUBac6wJl38xdMUVYU5nBx4p6nrFTDVHcKUIbxJSzHzBDWCNkX
 jJkbdgXZe+8RB7OF9nWnhRc9II4TUvXwMBmP3j9YO1t05RXgt6zxGuy6i
 8TIcOtl6WxmaMMo8d8lOtEiiDNyARjCgdcNItBWpI6FYGXLDYYRG1R+Uz
 zw2COfPjtv8Ug9FlmDQMX7TTDk4o8+QaioUT6gPXIiBP+5dlVJemhnUgJ
 qwwcRWt1RLVcOsd3xsvDn/JLDH4LaD1+OYimVIzs3JRHKM8/GzoYClIxL
 AU5zFL9XlwwgSkoppeyFU1vnkdnisHTr8vsoYjrWStipIWrIBRfsX6Cw1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="376503439"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="376503439"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:59:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="761149662"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="761149662"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 02 May 2023 08:59:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 2 May 2023 08:59:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 2 May 2023 08:59:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 2 May 2023 08:59:54 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 2 May 2023 08:59:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kQkIZmP4d+ih09U09cTSqJZBiM4+hWLQ9zJQTYcY64nm9swFvsS6mc3n3SQDQ5CsbH54pJbCWsIbhAda7pDJ/5pJ5xcSg/6qk0HrYV7+dAbY1aVhCKLiuldJjhfJuECUqGp5XGbBtGzdiYmNowbcaRtlUlAP9pRgGL4HGKNZT9pCH1XFWzTNscx5TLnfwgMN632NnzyHKbd9AJ5/JJNE/JmfAs7Js4Q7WeKu4MWdOomspuAe5O8IHna71kimnAi9+Eq1ECqX9pfDuNFoRZbNbsiigZVtpGqqwugKqJclBG2L/v2Y3lT0jU3cS6Dl4mIjtI+qIF8pb4aBKDPLUZMcIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XmycfPelN3xxOwze9msJ5SpF1mmQ/B8LiRZDGwr/JzM=;
 b=R4CHVL66vG0YM3WfBgySLfKKJKYKeAjcmD4YE8TAWfQteECtgIRTQ21Kvr2GjqSm2piYyRTAeD0SQiFIS21lOknCMZeFYParUoQ73B7swstZGzL2GxMgyMe2aCwaTo4Srrp+tdi7/MDrTx53Rps048CLiRAU3oYyNBgVtvCTHUEU1eeFgIRoj9pmcrO1+yMrOlbZDwYHa1yDeWHyscY1EBNElNyzoGW3BLRm7YjuwKYoq5VLMthjPOsJA3Xg/u5u2Tf1AhGxJ+qjnlDNdPmLDUcOhKnjgPQQP3snER3yTDvxpbOrp50qvtlKMrhFYagadNg618fdsckSW9P5SGDBxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB6791.namprd11.prod.outlook.com (2603:10b6:a03:484::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.30; Tue, 2 May
 2023 15:59:51 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6340.031; Tue, 2 May 2023
 15:59:51 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230502083652.463435-1-suraj.kandpal@intel.com>
References: <20230502083652.463435-1-suraj.kandpal@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 2 May 2023 12:59:45 -0300
Message-ID: <168304318558.164334.14989539688905023229@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR04CA0008.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::18) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB6791:EE_
X-MS-Office365-Filtering-Correlation-Id: ba95000b-fb66-471e-688d-08db4b26435a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eaYEsYhoLXScTtH/peA4909TwIlhbX3XcEoAKoLMdzmZ0XPnu9SrcmI/Ymktu4yksaM/BCTNxLzfRf2LsPu0m302cMs8remuakoYctaaIoARwL2r71G0KWMd5mqTFLg5t7X8eLIPsV1CVs5zT2wUTDLmNRfokehA7zrCT3r+BZDi/CcY1UF3djteHsF93S6hc95xP47LHnuKji06QLvrD/QjVJh5av3m9fkUD333RyW7X+RzQY5nDPuGlURKRueJHMlOYr74niu1PczCRuWMkUKSEOg6m7BEWPuZoo255Q4suVOHrClV0aRAtq9I6ZTS0NHWTnTAlGR4K+W0IFFF2eIQFr0BTiij3PPp8D8fBRXLz6WJh6zzkCRF+e4qRsaH6zmEAZepJslsf7z8N5m3xyL8Hh0K49sDHWbKy/Q8Ilu5tkfC2CoN1XQYft3kkxbuW2mRiW2ltTNBkNy/IkMo4UEeTts2MKzZLFc1Rj2Uq5P4jjnYaWiqrCasY4UbVrnzh2soEVXN47Tt2oUoiuV2vVohQJRp7174mADsEYyzQERUzn/fXvcItrLTCl1scrZu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(136003)(396003)(346002)(366004)(39860400002)(451199021)(2906002)(478600001)(4744005)(66476007)(66556008)(66946007)(8676002)(8936002)(83380400001)(5660300002)(44832011)(38100700002)(41300700001)(316002)(82960400001)(6666004)(86362001)(186003)(33716001)(26005)(9686003)(6506007)(6512007)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTcyNXBma3lqUE5OeWg0cmkvK2tKNHVSNS9qRlhjbnd3VlNyRWlsdnJlMjdq?=
 =?utf-8?B?bkw3bURhVXU0aVAySlppeW44dm5vS2RDaWxnMWJ6K2ZYVWdLRFpidUFjclZB?=
 =?utf-8?B?aUExRnFLT1dMUWhwU3Z0eFh3NHRWV3B1QkdLbzdMdHlzS2wxRFJZRmt1WHJ0?=
 =?utf-8?B?UUIrcXRDcG5LMys0dzRCY1hvRFBydVN1VFYxUGs3SFYwMk1qaE1LNGxYekRl?=
 =?utf-8?B?TUZKQ0djbGV0dWU1bWE1Yi9ZZDNjWjFOQy9TWjdTVXJUYUgzMGZJL0ZvL1Bl?=
 =?utf-8?B?UFZQWUR0MXlWRy94OE9HWmFIOXFTaitubUMyZU9TQVdoc0dFUXFiUkxsSHdp?=
 =?utf-8?B?SkhjUjF0enJlUFVPM3d5NjNZZ1UwOFppMmZ3eHpWdjdzTE15c2ZSRzY3VUVn?=
 =?utf-8?B?aTQ0SXIvQWdYR1BRLzQ1b3NPNUtpSzVITks1cVVvUTVMQlNBdDR2L2VtOHI1?=
 =?utf-8?B?VUJQWFJQcDVFRndMTm5qZ09pbytXZmlFa3RtcXp1RU9mRXYxNHEySjFyUzha?=
 =?utf-8?B?UW5Jd3YxeW1IOUpaUXZFTDhyZ24xeXQ2M1Q5Y3FoNlhUa1RzVUtUeVNmVmU3?=
 =?utf-8?B?eFM5bEhqbWR5amd1Q2lldmxTUlVHYVc3a05hdHRmNENQeURYdHNINFh0WjVC?=
 =?utf-8?B?WW84bG53UUk2TktsSURQWjJrRnc0Rmw0c0RGckhPc0JlRTlpREJsQzIvUWtO?=
 =?utf-8?B?WWdBUFVZV0JLVGluUTJYa25lVktjRG1ldkUrWHpYS3E4dGtJaE8zclFIekhm?=
 =?utf-8?B?dGk5SWZEOCtjVWV5dHIycGNkckVadHJabUNjT2FQWXUwSHVpQzV0bWxhTlZx?=
 =?utf-8?B?eDA1KzE2SDRzOG1md2IvdTRxV3NVZDBGRFhFbzNzMUhDR0pBcmx5d2JWeTI2?=
 =?utf-8?B?V1JUWmxxWDFhRno0QUNSNTRmNEpEZHhYWGNodEtKdGxNaldpeEJWc2Zqem15?=
 =?utf-8?B?aUJDbUVVdGp2SUJwMzlFL1djeGpyNENubVBwNER3NlVLV21md0JYVkFCakxS?=
 =?utf-8?B?VzBMUXVYczkyWUthNWtzU3d2NUc3eHhidE8vTmtWbXQwMzFzKzZROXd1YlRx?=
 =?utf-8?B?VDJxOHZTcGU3Y2VLQWJEcGVRbFRLcHZZdnJUTmo3ZkZMTTMzY1RVZ0ZLWUI5?=
 =?utf-8?B?aDlHeGNsSUNZWis2RldiZ0paT3BWSEdxV3ppVUV5ZndjTmIwTFdycTBhVi9i?=
 =?utf-8?B?QUs2Uy9rVy9oWU9TZzhQTWp0NHJOUDRjSWhyN3VGZXd5WXlBbnN0K3FDbklk?=
 =?utf-8?B?L1RsVU8yTlRRUE5jT0Q2d0VIOTFvVCtJT3gxWHA5VUxQMVNZN0lxWC9tM3lD?=
 =?utf-8?B?TGRsNnpha1lJSlo1bDdCMVRubUNWWXFTbFdVN0czR3JkdWVvS3RlbjdGcE5o?=
 =?utf-8?B?SnBXdmtvVCsrSjlsVGpScjJiakVOUThuNU1ESXR1S1cwZXpQS1dLMzZuNTAv?=
 =?utf-8?B?Yk1UeGFtUUZ2b3VkamhmNnl2ckpCeFI3aEJreEJkTDZ6bUt1MkN1MWNWajZS?=
 =?utf-8?B?b1BLZlkzaE5pVFdkZjlRN0ZJVVI0eXZzYjA4ZkhDU2NkZXR2WkdNNyt2RWdu?=
 =?utf-8?B?UTQ4OWdSMWJZQnFsVzd0SUZ6VGRiWDlzZlFOTnVFb1FMc0c5UThVaTlycGNt?=
 =?utf-8?B?NG9LMVcvM0JpQTVlQWxWeEpOS0Nkc3dVV2w5bEpNdGlKNUljMHB5V2dZSmx0?=
 =?utf-8?B?Mnk2elVpL21QVUNxSGxmY0x6azQzaW1kR3VQQ1hrOWx0N2RqQ0JNajE0eHFR?=
 =?utf-8?B?RjZ0UTA3S3Y0ak4waXFIWUZHcmFQMFErdnhWMy96NVpHN3lWN3R3blc5SXFT?=
 =?utf-8?B?ejMwSzhMTXZ1cncyTjBXTFA1WlU0bFErUkRQR2JNbU1EVE1DQmdQaVZ1bXBs?=
 =?utf-8?B?YzBIOGFOQmljSUdrckdpM3ZLbmxaZXVSL0Y4V2o4cDdsQUJpU1VKRFJNd0tJ?=
 =?utf-8?B?ZXNtY1Z0RGxCelBQeWtzOGxWeGVqMktNaWVvN1ZKQS9XZTV5cjZBeFhWY2NI?=
 =?utf-8?B?SkhDMmpJNFNTQzBFNzFwSS9lZnJERk1GVUpKL2s3QmlBK2V6RzZ2RS92NTlG?=
 =?utf-8?B?OVVVWFkwWlhIK2hxVkx4L29MTHhGcWlsQzBSZ3p6encyYXYrUWorKytNeVlE?=
 =?utf-8?B?dnNmczlaWHUwUDZGS00wUXVXMHZ5cEVsdHFLWHZ4bWZaa1JuY2lwdUNjSTFh?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba95000b-fb66-471e-688d-08db4b26435a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2023 15:59:51.6694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2/9rfMDQPCjg2bCx+Y6ud+j99bft5Q91yJAGh6lJM1ZdEXTRtWCoqbzZCorQurZaKAKwTfP+qCUhUvd9vRxorA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6791
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Check if media_gt exists
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

Quoting Suraj Kandpal (2023-05-02 05:36:52)
>Check if media_gt exits if we are using gsc cs
>
>Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i=
915/display/intel_hdcp.c
>index 650232c4892b..f3956eca4ec4 100644
>--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>@@ -214,7 +214,7 @@ bool intel_hdcp2_capable(struct intel_connector *conne=
ctor)
>=20
>        /* If MTL+ make sure gsc is loaded and proxy is setup */
>        if (intel_hdcp_gsc_cs_required(dev_priv))
>-          if (!intel_uc_fw_is_running(&gsc->fw))
>+          if (!gt || !intel_uc_fw_is_running(&gsc->fw))
>                        return false;
>=20
>        /* MEI/GSC interface is solid depending on which is used */
>--=20
>2.25.1
>
