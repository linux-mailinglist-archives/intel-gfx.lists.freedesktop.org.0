Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4CF827666
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 18:37:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A75010E257;
	Mon,  8 Jan 2024 17:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B422310E257;
 Mon,  8 Jan 2024 17:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704735453; x=1736271453;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=LZlTs5YOBHNvt7KC3O1n2VZxwNjF/qxXejKIipiLUkw=;
 b=CRSMR7L8w9C4Ev3g2vQeoSJrG2qJ7P/F2K90mBQWvKYue1MFM7sHhwem
 MiP6MZu+M+SmzV8YPAwIy2idyr6st5h0vULDayCp/j6yq5gB2h7jGyukr
 olXihqwiZ5D6eH1sE1jeHEOzmoBzlta+a+giBwHNn44bwGNUN6F87URGA
 Eo0nGU4VjCHPbbnlN9mOSWw8onxmN8DFuYWFEUgw6yr09Uf9YQ3ft3Hgf
 VJit2XnGTtZ87rM0k4r8GqA6Y7KTobNMuIpnUS8i+Hz+4GftvMMFEwnWf
 HW0sD/2aq9NjaFv13/RzPuyWiw81lY5bp5ze/UBU7VBZrqNdXZ0Me0dFi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="4699505"
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; 
   d="scan'208";a="4699505"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 09:37:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="871950188"
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; d="scan'208";a="871950188"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 09:37:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 09:37:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 09:37:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 09:37:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 09:37:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FIU8HE5Mh2/fJe0W/S5+iLRWyezpOIV0Ev7kZSvtknjhL6Cbka42Tm19LmXxs1J9MuoNpGtNpgmIMgdLF4++2phKIVF1njSEvOGTxvlNTEzS9+b+GeEOV++w9V0FUHhysU2Z2du1Xuh3cqstYl9deMaZ44E7zBUhqAuXQ8t7QF9hCQQkVRD2EwOH9v+6imwTZPvp6K0ILi7RutZjiggitJoCpLnyApMKC58BYZ30n691R9wXhpQzuzeFIkJCbyKhJZwPmzPuDGy7aV1bHH3axLY8LtMuMgo0YwXFRkQipM81JtzDHcSpWFMenA6rmiqBLPzZnaI1u+XAI0hXpp6uxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xNXjQBa2VC31Kuf00TamfhoDm2P+tiVUTN1hz61ykEk=;
 b=H689obw1jHNTdumzQd1A56jdC1yMcMQAwMhc02rUU3dT+Y8xYOtZpooPVWfI/Eh6HrooKsEbwigjspSCMrzfU9gAiPHtCJiMxzzIzRrABcPvZdfGMgApk+Pr0WWOJ8NPSwvpkDmjqNrZSo4cZqt4cwHEHEil75L8ShDowsT3kS4LM7Bmi983gWAYt772JMRpBKUsT224GRjasqmsN/C9QiZcWuZxotZMUP4kMU6xNhHWrwrcdlrmccP626ZX3NNwxWUruyll63SIzxLTb3bvRo6V5V2Ltnoh4RrLpVmzGbDvHZklYEK68S7nURI8UojpFpCLghDRYUICwVsiA2aFfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7169.namprd11.prod.outlook.com (2603:10b6:930:90::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 17:37:28 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2d19:7dae:86c0:7513]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2d19:7dae:86c0:7513%6]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 17:37:28 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <170473486617.2509.12334250289552057392@gjsousa-mobl2>
References: <20240105140538.183553-1-gustavo.sousa@intel.com>
 <170450007739.57734.9730932781578833450@5338d5abeb45>
 <170472095605.1993.691108924719228706@gjsousa-mobl2>
 <170473486617.2509.12334250289552057392@gjsousa-mobl2>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.IGT: failure for Update
 bxt_sanitize_cdclk() for Xe2_LPD (rev3)
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 8 Jan 2024 14:37:24 -0300
Message-ID: <170473544419.2509.9279237983752134912@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR01CA0010.prod.exchangelabs.com (2603:10b6:a02:80::23)
 To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7169:EE_
X-MS-Office365-Filtering-Correlation-Id: 027e1e74-36d0-42b5-085c-08dc10707ba5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xIFh/C2FoYOd9eZYGMzo9teOfix51AJ8LtXMXcTcRTZUq8LvIuXQyVjdzNipRv5DH1BYONhMaZQ5icY0Ky5UD0aj3XTF2tQF0SUMMm3J1ju+TPia6xxSfwXk+di9ljhrcdzp64LGcOiZRs/7OhQZCL39hMwKl7ucFmxze4eQo6+7fkf5Leiir4C1DyH9Y7UUT0nPnpgFOmg2BZEkcPu8i5twf/vyOpnLRvdI5NSIMGlAphmFJyo43ZRSUIL7WOz3V5ik4iMJWEaBn2jPvBe27erVXN8CGuATis87jAkSH9Vgvve4F6oHpGrdDlvvIVh0y74f/pL5ML0vjxz8jDmDZJ4jod5cB/VhPZ32tZDcXYQKVqdf6IF+xruXBOZApukYjr7BlMjS8GG+6TKKYy9DQ7/2b/2tvInVPcz28skhG9MVZH7cAOOT/QbBHy21exn/3ELA0dKzSj4ChyH81Dt4dB1RbhprWPgqtO3BIC56JfkRpekNeb+Y7G7gAn8sWzqwIcLqVWW76q7bsjkPFp7sOblblVuqjwE1spD4kyhyyz8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(396003)(366004)(39860400002)(136003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(33716001)(41300700001)(26005)(6486002)(6506007)(966005)(6512007)(9686003)(6666004)(478600001)(38100700002)(86362001)(82960400001)(83380400001)(2906002)(66556008)(66476007)(8936002)(316002)(66946007)(44832011)(15650500001)(5660300002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0ZoTHc0WlNsbnNEZUZrLzZSaXdVaFlhamtsWTlzRGRaZnQzNzVUSytoK1NH?=
 =?utf-8?B?YWFZWlV4Y1QyUlhkUVphR0FOSlZKTU94RTdjZFZ1UXVuTC9WMGQxTkVzVGl6?=
 =?utf-8?B?WWw0T0NaWWdsbmxobUhPRFQ4U3hPZGF0Ykg4cE04dnhFN0JXVGI3ZElCOHlH?=
 =?utf-8?B?UzNTdno5WWQwK3kyY1RiR0JUVitENUVvTmJZbG9vbG51bVgwaEw0TDRaSElO?=
 =?utf-8?B?ZFl2MzRHQ1lwSWVBdzJFbW9iWk5Qa1I4TWVJU3h2TzNPanlBRXdoMHo5ZWh3?=
 =?utf-8?B?WHRQNUMvbEVLalFtdmFURG1lQ2N5dFIxckRkNmJkaU1kY20wYVpielFmWld5?=
 =?utf-8?B?QmZCM2RhdS8rcmNPTXNQM0N4V2pJSG5TS2xqNlJpelVMYlFDaUJjUDhJdnpH?=
 =?utf-8?B?QWJjWnlSWDlWR2xTcTJVemNXL1lCTjlYOGt5WGtsTGtKVWNDank4RXN4OUZp?=
 =?utf-8?B?NC9ndk05YzZEcnhFelc3ck44ano2a3llTjQ4MUd0TTBjakFiV0hlL1kvU2VO?=
 =?utf-8?B?QnlMNEk4RG1TTWVzVDlUWXlCMkZINHhxdXJ4RVhmN2tuZXFxMC9UY3hxWTFM?=
 =?utf-8?B?bjN5cjhpeEtOcXpDZ0xXbHBLNDRyS05RQWx5eFB4b1FDOEhRMmJEbEpnUExh?=
 =?utf-8?B?ck5BSXROUkNmSGxWK2tXL0VuYmFoM1FQUnZiMFA5VFRZWHBnclFMd2gwV0Fo?=
 =?utf-8?B?bHNVM1RzSW40MGxpQkROZlNoeXJHd1NleWNMZXlTbDZ3RkRMMmFsSkJQOHM0?=
 =?utf-8?B?Tk5TbHUwSE9IU1dBbEFrNWVjdi9aWFpIWmhMSVlnUG56RDUxV0NQNEFtRXRt?=
 =?utf-8?B?OXFBSHUrVUJHMkY5cUVaSEFxTmErc25PaVh3ckZ5UUVOMmcrRUJhSG56enQy?=
 =?utf-8?B?UnFsMmNTdWZQZHZtUmxPa1NEaDNIb0R2akd3QUFneEY3Q2FXd2M0L3NmTGRU?=
 =?utf-8?B?UGl6djRGRlNIZTlwTVhaVWMxNW0xOXpvckhHWGFUSERwOHUvd0tiZXd3NCtj?=
 =?utf-8?B?Mlpwc1lxTWlqcjROOWl4VHNVS0RUd3doSmR5N1BpMDcrRkIyMVdvMUxKV3dN?=
 =?utf-8?B?cSs0VVNNR3U4eDlTVGV3eWhGK3JyeldtSlNVUkNmNTkvV2lvOVJPYUhBRlVi?=
 =?utf-8?B?dzBaTzNPQU5EVHQ4N3prekRNK0pNdjBSYkxTRU5sZEhuSW0zZEowL0xaZ1lT?=
 =?utf-8?B?dmpWMERKMk1rTCtLeldnWXJQQnBzdDB3VWRJNlA3dDRVUk9QZEpOaUM5d29Q?=
 =?utf-8?B?cFlsWkdjUkdDUW1uZXM1T2RyZXFOOU1yU2Ziam5qNGxEN0tIZDhNZnQ1T09M?=
 =?utf-8?B?cnE4RlB2czFORmVidGg2M2FobE5PTTBja3RKMWhVL29ZcE5ud294bzFuelRl?=
 =?utf-8?B?VUM1TWkzQUZoUncvckpmdkhLVW5OcWd5ODMvcThpZjE2N1pkTXNVSnlhMG91?=
 =?utf-8?B?ZlRFUEFvaWNNT2F0dmlMb2F4L3ZBZk12bUd5Rk5yanQ0b1hETnR6WXlldU1H?=
 =?utf-8?B?TlhOdGZ5VWxoNGZMR3ZiMlExV2pGUjBPNVJtVFBWRExBdmNSYjd5MWp0eXBG?=
 =?utf-8?B?MDA0UU5ZeTdpaG5SSUdQSFhVMUhNSUVQcDhLaGdJdXlsWHFyaWZDWXFObzdC?=
 =?utf-8?B?dXZQZnZKREhYNHFzM212czhBWmc3dGRzaHM0bkFHWnNRK0E1QWk2QWdqNGJn?=
 =?utf-8?B?bSs2RlRpUEVPVzhKODd6T0dzRFBjQzdEOHFSUEVYMnlVUS9GUmtmU2hSNmhi?=
 =?utf-8?B?TmxEQjZveTgxdVF1UTBwcTdrRy90RXpXMUloQU5WYXlOU0RxOS9lSllDMWlP?=
 =?utf-8?B?N0lESytldGJYeUxGRGhERGNac1pCV09DOVQwL2ZSMjkzdHp5VlRCc0hhSExN?=
 =?utf-8?B?eVNwZmhwOUtBdVJJd1hDMThuWXlJbEFtNHRDSFZqZTZ6dlRjejM1cFNrWjhm?=
 =?utf-8?B?STBMaGt6ZFZYNEJMV0h4L2lpRnp6WndMOGxoTkQrOHQ4RmsyaFgvUUZybjhS?=
 =?utf-8?B?ZkN4djdhS3REbzVCUWx5NGwwOTNqdWNLVGdEclpaS1hza3JxeEx4c0hPVSti?=
 =?utf-8?B?dzhFUFZveTBhOTRIVEh5NnZ4MzhCU1FHWVNOYVFML2p3OW96UUlkWlp5eHlR?=
 =?utf-8?B?RkswbDcxRWIyT2NId1VSd0MySDRVVGZTVFNSOEdUZnVuVUUwTGJnVkV3bmlV?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 027e1e74-36d0-42b5-085c-08dc10707ba5
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 17:37:27.9496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CUNGbFTlqjvqZd1l/50Fozzax/3KZ8gyvSGSKRyE54/EVcCS3Cf4m5bhT0naUs5qrKOCdnsSF3trvs7xNYWchw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7169
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Gustavo Sousa (2024-01-08 14:27:46-03:00)
>Quoting Gustavo Sousa (2024-01-08 10:35:56-03:00)
>>Quoting Patchwork (2024-01-05 21:14:37-03:00)
>>>=3D=3D Series Details =3D=3D
>>>
>>>Series: Update bxt_sanitize_cdclk() for Xe2_LPD (rev3)
>>>URL   : https://patchwork.freedesktop.org/series/128175/
>>>State : failure
>>>
>>>=3D=3D Summary =3D=3D
>>>
>>>CI Bug Log - changes from CI_DRM_14080_full -> Patchwork_128175v3_full
>>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>>>
>>>Summary
>>>-------
>>>
>>>  **FAILURE**
>>>
>>>  Serious unknown changes coming with Patchwork_128175v3_full absolutely=
 need to be
>>>  verified manually.
>>> =20
>>>  If you think the reported changes have nothing to do with the changes
>>>  introduced in Patchwork_128175v3_full, please notify your bug team (I9=
15-ci-infra@lists.freedesktop.org) to allow them
>>>  to document this new failure mode, which will reduce false positives i=
n CI.
>>>
>>> =20
>>>
>>>Participating hosts (8 -> 8)
>>>------------------------------
>>>
>>>  No changes in participating hosts
>>>
>>>Possible new issues
>>>-------------------
>>>
>>>  Here are the unknown changes that may have been introduced in Patchwor=
k_128175v3_full:
>>>
>>>### IGT changes ###
>>>
>>>#### Possible regressions ####
>>>
>>>  * igt@kms_vblank@query-busy-hang@pipe-c-hdmi-a-2:
>>>    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
>>>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk6=
/igt@kms_vblank@query-busy-hang@pipe-c-hdmi-a-2.html
>>>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk7/igt@kms_vblank@query-busy-hang@pipe-c-hdmi-a-2.html
>>
>>The dmesg output do not provide conclusive data for the INCOMPLETE status=
 and I
>>believe the issue is unrelated, since the real functional change is on th=
e
>>driver initialization path.
>>
>>However, for sanity sake, as GLK takes the bxt_sanitize_cdclk() path duri=
ng
>>initialization, could we re-report, please?
>
>Re-sending this now as a member of I915-ci-infra@lists.freedesktop.org; my
>previous email went into a moderation queue because I was not a member.

One last try, as it now complains that the message is too big...

--
Gustavo Sousa
