Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPcTEAqtCmqy5gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 08:09:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4722B5668A0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 08:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AFD510E5AA;
	Mon, 18 May 2026 06:09:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dLeflhhd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E632310E5AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2026 06:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779084550; x=1810620550;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SYlYIxSIMsTa6XEx2z3P/y3NkzrsygdQ+XGSDsLEzX8=;
 b=dLeflhhdcLaYQXB65oTQ+Gxb/ScQqreA4sBeWAn5TZTjElp+hBQbIhS4
 xFw23Mldh64SORg7GED0AaWEIaBZYk0/xirBfWTmx2Z4q1XS8WXyIFV6/
 DBcUnx4LHIcITpQD15OnNnEB7VcSjqXMlPMChLsH/jf2GkzT8Ect27dko
 SIzfb8WtKMcnkUBXuoqQWg9qhR0hpoO/xbcFKs3Iut6b1X+2qKrq2CCjp
 4hP3wxx6X3A8EXK/QUoRVjk4nGz5B/+eUAmIz6NdhI7uGBw5ywgLrTaMj
 XpZtD19Q1ew2yDTbVCkkrU6r21Hh2j/WsDXxIIcwQBeBxuewDNxSijJXj w==;
X-CSE-ConnectionGUID: 0U1xlQQIR/+IZArxPwycjg==
X-CSE-MsgGUID: q2YM4CmkQsiqMZrHNHO+fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="91390014"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="91390014"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 23:09:09 -0700
X-CSE-ConnectionGUID: REpMSjlmSgenXZHlNWRJYQ==
X-CSE-MsgGUID: I9kd8AI6SqqazlVIozG8NA==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 23:09:08 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 23:09:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 17 May 2026 23:09:07 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.34)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 23:09:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PofJXhfyIWfo6ocjZerw8UGpqwfEwvLcPbd2x+jvzdowARToT21VKIbbyDFZ8XPo8ICTOmwxcCEsvtRGHQRJndwGlMbElUGl2BgH0S+cmL0uX0Wknw/k77IWWB69kEab6V0HyK1UOlijKpRw9OM2PWPryYPt9siPFYhU9UbeGtFYT0Tesht3XXMMt+3VmloWkYoLD62mH8IYSxylfe6kscevh7QsqNsbaN9Ebdl9t9+3uEICczHIFTM+WjwiqIH/JXdGefUa4weQLHX0N/3SjMg65Dv3SngDlJ0h/rlNloOSIOWy+9KAdH0DxRpqNzTPPIwoTdKRVIaUo8zilcLj/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mutoGIfAjrb8h41Kn8wHs3UKW0J0XLrG+BzUx2A5U+g=;
 b=lbW1YfnR+j3B9dBxqwZkcvgYNbUdNL8MTxuc8SGleuoQEa739ZklitCuYl2ucjMcKYcztvGiiQkSE7J0xQiw6BnBQ5nE0lmNnVX/TzDqpG5FhVIj8Q7TGjuKoBhftQnkScUYtRlgpibim6tnoOo4B5D52HAg5l7JwIsuhAE1W6Pk1+LzSTQ/dsrFjUuHuWh6MDrcRVg8mmH7lZtC4OlIby1d2cmhMG3Ugv+abZJxByluuGVLzkbd9jOv5mDELrUB7rqm7vUfYeMQprbydFY8nIdPmdKXsATJW1Hv/EYW/E3FR9c1ZEzuonwWmnrBsYaB05XAFZblpdUl/LnVjIhaJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB5934.namprd11.prod.outlook.com (2603:10b6:303:189::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Mon, 18 May
 2026 06:08:58 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.21.0025.020; Mon, 18 May 2026
 06:08:58 +0000
Date: Mon, 18 May 2026 06:08:48 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915: Skip deprecated selftest
Message-ID: <k2o7vio5tyoa37lojr7yahsjlxamrvychuyrdwtf255tb5j7s2@7be2dvzrvdls>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260515133052.1628281-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260515133052.1628281-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: VI4PEPF0000013D.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:808:1::887) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB5934:EE_
X-MS-Office365-Filtering-Correlation-Id: 861d2c42-7e10-4f2d-a52a-08deb4a3f2f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003|11063799003;
X-Microsoft-Antispam-Message-Info: oQfDQnLhU4M21PVYvSSlG8E0YOiNb2J2RBwkGPiPoeXjX17qHkMMM+EFOp8oDj1DFAW+ZVGGs2OyjCoiLbShmhvbCVRHjcxWXI6MNcJx0wEAJeoggOrTD1Y9Y/5NfZbg+wMoa7DUnWmfLXCQ10FwmPhu++iWmtCnXjzCoxWyiPF6S1xapMZ65y0auoo26HyhCNuV34eLrzcG2tMd2UovTDIMM2H8wbXWokeyP4SzFG/x1Yc1V0h3UYcxJDQDOLY8nXz3c+1oVqRAuUsLJA5H6tmv2pj/lRqS+6v7FlEJXDd+97+n2Urh5BX50HoDqRlzNRoqb1MuCPSxeHq0lCjjA5Js1tC9MsZ9YyKUjapkX5uwJ5EV69c8QnCdJVo0iWKJSnYI2c3Uot8afcazT/PmbolL+IAmglah5R6j+OxIMnBedRiDGySmxzzIIDXp59Z9yS6rh+oJZvwdZsoL2wZO+OxD5McEZdiie7/BJ2ikJVSLNuLPDtw14U+m9EOSOTXlukXuE8faohTLPkVc1xESnTbM3fuhzuIHMxTHWY4rC9cW/2cZLc6v6Pb1FO18PlbnvbqkOnq/I+8n4LEAlUFsW+59H24nqBHpaTFQBDo5CP7BPZ3C/FLdFHZv6xMZEWeBINJeD1oSPiKdist2rE2/4w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2NxMThabCt5OTN5bDhydWI1SlJ6YXFncVNtaEMySElnUndETzJTMFVIT3pj?=
 =?utf-8?B?dHhMc2pLMGtaMUZBazdkc0daUS9DV2VqY0FPcnhUdFRjR0E0dWJiMDlhcWI3?=
 =?utf-8?B?NGtUSk9zaVdwNTg5bk1DRmh5WVNYclNqUHhzMWUyNWZ4Y3lVR2ErZmhOSWd4?=
 =?utf-8?B?dFU1QkIvMlp5Y1o1WWphM00yWUQvb1AzOUs0NGhXNjVhYUFwSmdpTGxhUkR2?=
 =?utf-8?B?TGJBeElIeFhtT1pZWjBwK09pOEdQbFpQc1pnajlML3lWK1YyMTVzSktadnRI?=
 =?utf-8?B?TW1QNUZUdDZXb2FVMzVqaTlZREV2THVwcm81UnI1K1RmNGI3YzVreGtKR2oz?=
 =?utf-8?B?YlRWUTZqYVNYbDhiajJmT1JPZzZqZmVVaEFURFdMU0VDRmYwNHFudlNkYlh2?=
 =?utf-8?B?Qmp5aXc0MEw0NmxPNDVjZHY3azdSajhlQVg1SmV6V0tHWjFkcHo5bkZEakht?=
 =?utf-8?B?MWdqK0FpcEwwWnpmSEp6S29OUUpWeVNZUWZjOGpQZ0xyYWNiVUpwd0lmeXdE?=
 =?utf-8?B?Tk5taCtZK1h0K1dqZTI1c05XdXFUcDQ5OHp6ampDVG8ydU1uNWFiSDRsVmFy?=
 =?utf-8?B?WE1qSVNYcnk1cGJ0cFdJTE9XaEZUSWdmSVJ0cHJxMDZtUVI3ZWRjTDJXK0xL?=
 =?utf-8?B?SUpOeU9uazdQN293YUZyY2NxekVqVmRobDduRjFNNG9UR0RXSTlxZExaMnhO?=
 =?utf-8?B?M1UxR2VqREEzbnZUU3d6b2s0UzlZWHJhSE4vNHZVZTBlcDNybXRucEdxU2pE?=
 =?utf-8?B?NGRHR1JLZ1hDenhTRVpKN1diTFJWeWdFWGwzL3orWnA1MllLb1hXTlp5M2ZP?=
 =?utf-8?B?ekZrU25Wb2hETzIyVHE3aCtZQS9FaEdQOVprNjVVbEZmZDRyRzZVMlowL1Ir?=
 =?utf-8?B?M0VmVHFwTTNsT05WVTJLZzN5Qzh0eUhIUUdOMEdndS9taFBQdDYzd0QzVE9F?=
 =?utf-8?B?UFVvNWdzcEZNUzJVN01pdVZxT3QyY0pSUE5GS3EyUVliRXMra1Iya2JsUWV6?=
 =?utf-8?B?MU0rR3puM0IxU0Y5aWZVNENMdGoxRlMyRjBKREJYTGVobjQ0SVdTUnVhc2FD?=
 =?utf-8?B?Z2w4K3lnSE51TmRYVDViSlBoWjN3dkM1K0RDSGQ4MDVXd2t0OVdjVXdMNUxH?=
 =?utf-8?B?ZzhtenIweFBKZkhrdlc1TlJmVVlQVC93TEFiYjhwaUxadkN4RWRSU0J1OXZI?=
 =?utf-8?B?S1BSRDdheGQ3T2NDUlZiazNxanh3bmxEYWlDRFNxQkM3QmVMRVNHQ2QwNGI3?=
 =?utf-8?B?bzF6UXdLak0zbjBZR3VQeFl0QVlCUW9YZ0RVdS9jOGxGNEpibGY3NFdyaU1N?=
 =?utf-8?B?L0ZDMzd4QWF5T1BqL0lRVENXWTRGTUxERjRYV3psdmdQQTBXT001RUI4Z1By?=
 =?utf-8?B?eWZzV2k5VFVYSDZXdWVxSGJacWxGUi9xcXd2RG9rMXY0YUNidzlEK3NQc3BR?=
 =?utf-8?B?S3ZETnpLdTduNDZIWWt6bHAwb1d0Z1A4TGQyWnVQYlF4NUZFS3VpamFvUHlG?=
 =?utf-8?B?cWIzSDdyc0ozSERTLzdKSy9FOU51bzIrYm84dkc4TCt3bFpCK0psVWsxbi9z?=
 =?utf-8?B?VzNoODZINGtiMHp3M0k3ejFOaCt1SlF5dFErS0tPb2NibHEwQjBTZWlVTjNj?=
 =?utf-8?B?cEJRM1RkalZzMzhwWVRXMmhyNExCV0VPVEhkRGhKdm9yNWVuY0kvWTRMZlRs?=
 =?utf-8?B?MnRXOE5zRVl0WHhKK1RTUVlidlZLU2N0Sm53UEhqbms4ejJKdUlWd0xYdHQ0?=
 =?utf-8?B?bHNqUG84LzFrYjIxRzhUMld3NE94WkMwb2FHaDZuajA2UlhyTTZ0bFJXRSsy?=
 =?utf-8?B?NVlJUFVvUWV0ZFZJd3VVcFlrL0xsaTRsdFB1MDlwSkI3SHA5UlB0OVpXMm40?=
 =?utf-8?B?dVQ1d2V4eTNWMWp6a1BZL1BUVEZOeXovc1VwbmVRc3FWaUhOMFZOUnpCcllt?=
 =?utf-8?B?RmNIQkNMV21odVRkVFFUM2NvYy9XRUMxMmh6TjZaVFZhVVgxdlgyaGtqNTZD?=
 =?utf-8?B?SVNPNTR3dUVwYzlrM00xSTNGNjNWTjBzdlp4MEpPRjlHamt2WUcwR2I2RXI2?=
 =?utf-8?B?QXBQcUZHRWpoeDhuWjhmeHo4SVQ0U2VXMDNXUWVhYlFzVVpjSEVWSndKMFAz?=
 =?utf-8?B?YkdVZTlRTXFoUXBrc05BUGpHd0wrK0RuNlo2eGJueDAwd2NZZVVOS3dqcUN4?=
 =?utf-8?B?TTVwd1RXZ3RMKy85KzFpc3F2RkNya1FpcmE3ajM5U3hvVjhwcERGWUNVRTZW?=
 =?utf-8?B?eWVtUGdKNzQyV0F6OTBoNXRwZStYUjdhMzl6aHVCVE10QnIyUXZOTnYzKzE3?=
 =?utf-8?B?VXUySjNHOHF4V3M5Q1hrM2YwN3IrVjI2c0dFTk93QllJM2NCRDZMYjFMbE5r?=
 =?utf-8?Q?2hNOnYH48Q/XkNUU=3D?=
X-Exchange-RoutingPolicyChecked: YZV5avoqAT4UQcgnaCT/zAJU2orNMYvZ0qrtdUqkmskAEWhRpmXPvMdliF4xMX0wCUfMLNa/NrHy5voqShCp9nyfmyj6Btm+WxXP7+BUdXMh5x8ym9a4j2cQUIA+Yh7CNRpBJ4JHgieNFHKRsNsZzOWfs0QFm1XsUyz09BPQwi33xDb/Y/w4YFtU7Ysb+P8LXl88E713oyafloLUXwmvkfWXGYJutFtZwc4T2LDuaajzkpwuW0Ew9dVvPE9XY7PwuQT1lbtOwUwzWOKCUg8iYTMK36O3uqXKYMRlmaEDuy4tztjk7xvHBeg8mQYYIbneKB7m1EDcJpTX5FBLtVpXzg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 861d2c42-7e10-4f2d-a52a-08deb4a3f2f8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 06:08:58.3874 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e9qqSQb9kNa83tJvRyc/u53bzEbsUkeEZUv0MaFTwYrJy0K/3ysUSv0/45MZvT1D9Z+d74G5B42/NIDL5ffURnSyBE2ux05AQokAsQSRoAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5934
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
X-Rspamd-Queue-Id: 4722B5668A0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:janusz.krzysztofik@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.niemiec@intel.com,m:sebastian.brzezinka@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi Janusz,

On 2026-05-15 at 15:30:38 +0200, Janusz Krzysztofik wrote:
> One of workaround test cases is now deprecated on modern platfroms,
> skip it.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/12061
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_workarounds.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> index 81cdecd38346a..4e4c420ae67fb 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> @@ -1064,6 +1064,9 @@ static int live_isolated_whitelist(void *arg)
>  	enum intel_engine_id id;
>  	int i, err = 0;
>  
> +	if (IS_DG2(gt->i915) || IS_METEORLAKE(gt->i915))
> +		return 0;
> +
>  	/*
>  	 * Check that a write into a whitelist register works, but
>  	 * invisible to a second context.
> -- 
> 2.53.0
> 

We talked about this on multiple occasions already, so this
is no surprise for me and I agree with your decision:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
