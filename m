Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2014A79E769
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 14:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA9D10E4A9;
	Wed, 13 Sep 2023 12:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44FA310E4AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 12:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694606416; x=1726142416;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=k1MC13B8qjuNHkqthHoU7LF90V/sGvJZQ3wmK1n8vJ8=;
 b=VZte7TGbmQmSyrrz2hfJm/S+pH5VSBDTeI5H/o9f2xZCOyDRSxE43FWm
 AopVC0D0bYVMUgrno71pfJbLGPE33NBuvRRgXrc6K03W2n9Hn2Lfa02M3
 40U+RHCfwa6dDWLGwib5M1bZDyqxmpxA0DbFHg2SngW3ztL3Qabo/xe3O
 Df5Pc2yfiv5GpdKud8yuGnS7vleer4euM3LVhVAsfeDN+2znxfd6HGjWO
 uC4LzZRmWGnOI2rYkDRGOs5QjMbFX8sLAEW5bEzKMVZWMbIcb6OWS7qNd
 SY/V8QBhDosJXPHoCh43zJglJZAte70RHT0ui1MenPOQW42wpNqmnPBgP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="358909206"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="358909206"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 05:00:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="917797047"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="917797047"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 05:00:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 05:00:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 05:00:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 05:00:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CEtEcvMmC1q4mI1XQO5YbwlvoTVZ9iACPSPNsa9awZPyfG3Poa8LXYRtp0IQsJvLnmOsDORhn/L3fUp3U7W1q3gEJYl1ksqR6zIiDiOImZlNsFolqvEvjeqzOWdExBgkAvQJNzVDIHi7tHM7WUwPGb6hBZI6/Z+RPKNJ4c/P5r2yCvrSYy+gS7MD+3THTxCUBFNe7ctZyxzczH8qB1mMDTUyVHTdfKrR/eFHu7YZZmR+PpWYj5AL2HZT119eizsbqxVaS87DNIqlBsDglNzUGy0jw48yVuTw6FcNT2F/KZR+FN1VJhXuJnwN4IMmlJwpWZo4xbncf6jchMExdC8JXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IOuTSxFUKdhiJWGaw89ngo4o5nbjZKqeP6Q8fjfga5Q=;
 b=LPrSKjcQQtPLHcODXIdPEx72wNHD5+HrVrZa4xlUrNyPz2bNJzatFL3UPvu0/nr8OnI/L5QQIgKBb8svEFagHNlA7IomyU7lIdwb+zqXXpW6zdL+bE5JpMm7xV9/U0+jhKIhPViHOyGNJaYCXEylLJlCkuiPdJxcaxORxzJqCS53klGGB1AReVoFZXxOzUv0Do9/NElw3QIso5jpvUvqJkPDolChlcKSDBNOjP/YbeY6UzoGp87PT+gib7XJLW0ym/tvXlcebl/JmZn9DNgp+sPngIFPiwxPO4i9AA9xik+ZosARQqs2JGmGtAvlKn3qfOZCI2dE4NgL7Rqg93aXdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA1PR11MB6918.namprd11.prod.outlook.com (2603:10b6:806:2bf::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Wed, 13 Sep
 2023 11:59:57 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6792.019; Wed, 13 Sep 2023
 11:59:56 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <169455745045.31796.15115191329144720878@emeril.freedesktop.org>
References: <20230912155923.39494-1-gustavo.sousa@intel.com>
 <169455745045.31796.15115191329144720878@emeril.freedesktop.org>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 13 Sep 2023 08:59:49 -0300
Message-ID: <169460638979.2539.7103315179259417319@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0193.namprd05.prod.outlook.com
 (2603:10b6:a03:330::18) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA1PR11MB6918:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e143a7e-834d-483a-8eb2-08dbb450f253
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SdjDlq90DAM+vmIlAesUz8ZYws0iIRIl0KujK6BMZIAX+J7M08xzhznRLMoWAA1hXHmUlwHAB1tVVSC4VrtQdKwnCmOxuhFXFhyWvu3Kn8+c5lOlcyd452S/0ah2VWPRhSWUqzbwuo3Xa3sGTughJjGJoF/ieSAlsMohUkxK0DqXJzjvVu1/wGKXOzjh54BWgTEBm75klSSFZ1ktYa6ZaK5QBJpcJWcUeac4g9VHqxs0yXClZmADIF49ZBqJfqzW6K9LejaUZBmOR16ehniVhTOAP804GAdoymG3JGdcQ2hwmG4FSW1U5u/JiRJfOABoKsfudDmNZJPXWIuOrAN87ay9rZ4sjEKvmHsQo9DA9KS0jj5VfakYfwuh/fFW9+pmB7OyDlcKPXRVjcw7Nzd+IZf6MIPEUK1OG06Fwbyf40vLeTkygRvhgmkQ9oXFU5Vsb9WeNPQsj27yyZ/I3/nhQ4tPWy3s/cJ6MMnF7/McoJxH7hciXBVAsqhtok8bsNHFqY1sSUfMuQYpIPLrPrvvt9VrS+pkUF9PAXPvFYhDaHbSNtU2l0gFwIj7JfB2OO98
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(366004)(136003)(39860400002)(396003)(186009)(1800799009)(451199024)(82960400001)(478600001)(966005)(38100700002)(33716001)(6486002)(6512007)(9686003)(6666004)(6506007)(26005)(66946007)(66556008)(66476007)(316002)(83380400001)(41300700001)(44832011)(5660300002)(4326008)(8936002)(2906002)(86362001)(30864003)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUp4aVN0cmp2UUdSYkdFTW91UGx1VU02Z0xEY0UxdmU0Z0UvaFdVRkFPYm9R?=
 =?utf-8?B?TEEyWnA3R1AxdE9JLzVXZUVuKzNqK2RuWGdRYVZVWkkwTk9JRXVjc29NMnJW?=
 =?utf-8?B?TFQzQ2xvN05FTTRyTUV4RjNSNTlvVGpNUWZJbGY2RmR2QkhWMzd3TDFZT1BK?=
 =?utf-8?B?eiswUGwreFJHRzhVbzFYdGdNdkNBem14WHhseElqTlUvUS9qOWszbCtLQWNt?=
 =?utf-8?B?Y1N2QkFQdlFKYlM4bVdVZ3dqRndjWlc2OEVHZ3hSWElxUjJIdkFNeUgyTVdY?=
 =?utf-8?B?OXAwU3JVREVQRjE2Yk5JN2hGUXZ6cXEzMVpEZUhUOWRycC95ZU43MmxJTVBX?=
 =?utf-8?B?QUdqUU55WnB2SFBsem5wUElQdk9iWUFPVStmU2JqOW05TnRJdXZWNG9CL0Jp?=
 =?utf-8?B?SjN3Y2RJbzBRNHVDK0NVbkg1K3ZMbFVLeXJzYjI2ckx3UlhyZmo3ZlJNS2Vs?=
 =?utf-8?B?YkNFNXgwT21TWUxad0pRc2xpdG9KNytpTFRDWlUrL0xSampGSHRZWXBHVHdO?=
 =?utf-8?B?dDJxS1ZBdUtXdzhnSWo0THB4dldZLzNOUDgvSmNDUmNtV1Nza1EzbFBrbVV0?=
 =?utf-8?B?T21MYWRFaFA5dlp6eUZFaTR3RTlYdWN1UkFFa2MvQmhINDBubk40dUtPQllL?=
 =?utf-8?B?bGRoaVlLakJkTy93emdWeXVtMUxsVGJiTmNyWWVGVjJSSWgzTW5xbUdGT29i?=
 =?utf-8?B?cXRTMklqWTNmdzZTd0RCTXFUSlJyOGswZEhuQjBpZ3VjbXEvcXpabk1JSVZh?=
 =?utf-8?B?ZWdzZGN5aEF6T2xpV1ZVOVIzdHVSclF6ZDgrY05aMzdQV2swNlI2NHRhaUFu?=
 =?utf-8?B?c2J0ZHprdkk5TzBZTWFWNnBSYXgzUTFRQnd3eURyYzhUYzgzTDBpak95eC9L?=
 =?utf-8?B?cGVPZlNpdGVWZnZndHJSd2xzRk5HRnFOT3pMK0EweklSVG1CaHgzbzhTMGk5?=
 =?utf-8?B?N0o4Y0Y3UE5LaSt5aVRjTFk5dGRUa2dvTzJtWGxrRFpReUV4aVk4QmZNL2Vi?=
 =?utf-8?B?eWRaWTlhNFJJQkJ1dW9BU3J5VjZxSXpLZDV6MTJ4aCt3U0RzUGI3b2IvV2ZC?=
 =?utf-8?B?N1F5Q1k0WHZ5T3RLeWxOM3hvN1hId09qTjZpVHBTZ2xvam1hazVYdTNuNzdZ?=
 =?utf-8?B?WDNnSURhWDdiNkM4c3g3dUJOb2ZDc3RNaTNlOEVrQ2laeFpSZXJIVkFWTm8r?=
 =?utf-8?B?R0EyRldIc2FpSkhyNnhiWHU0T0NvTHZDSDV2dmZwenUzV3lzQXRkWmtUeWVK?=
 =?utf-8?B?ZTZjOFgrNW0vTjI5bWoxRit2aUJWdGNET3N6RGxBY1ZaQmxIWWROdWFyTDJT?=
 =?utf-8?B?ZUp1Uys4c2ZWNUxrVk1GRitURmtROVlJZER6M0F6RFF0WldSU0xOdldsakUr?=
 =?utf-8?B?YVU0cjNvZGtkemNFNXBUT2FpT0RaRGlOWFBORWVDMU0ycmJibWhxZFZkZUtZ?=
 =?utf-8?B?WEU4UDZRajY4Q2hTVmFJZXhwWU9va0dhZ2FBRmNMOWhWUFZMMmEyS3RqNEhK?=
 =?utf-8?B?SzlIWFZiczVGaWJybDM0cFM2QVZTU0FtOXJyNEFEVzFXcCtUcldyd3ByKy83?=
 =?utf-8?B?dUZzZ285MEt6NU13NndpMWwrYW5IdTVhVkNoc2FWQWh2VlVaQmtqUVNobTRR?=
 =?utf-8?B?dXZSWFI4Nm42andzT1EvekVIZjE4aE5EbXdlMEJVNFAxMHlkWWdqaGQ5ajh0?=
 =?utf-8?B?M3htUURpbXF0OGFmeUxrMk5YOVZtd1NyUjFackpxd0lCcDV6TkFMcFBlNUlU?=
 =?utf-8?B?K0pDQXVQMFBIRGx3YXVoNVdhakNsS1RYcjlubjFVSnljQXlQRU1naThqa1ZR?=
 =?utf-8?B?RXNUcmRDMWtnc2tJUHhhbGxGY1JpMzM1dllFZGNjakdxYWFKQlZtR05SMUMv?=
 =?utf-8?B?NmpkZ0x2aGdkbFpkMnJKUnhoeXBjMmRDS3Y3L3dsTG12ZmlzenUwTmFYdHhz?=
 =?utf-8?B?NUlUaGE1UUEyQ2N5aG5OWnBnVXdmWnQ0WEp5VHNRK1IrUCtOUnNqb0ZrdTAv?=
 =?utf-8?B?N3d3WVkxWjJJcnFHbGxXY2pJc0t6ZjkvTm5JWHAvUWsrRVNpN1BDMkNFZ0RF?=
 =?utf-8?B?REkzeFgvTWdYblV1MVdNNzFvZEpVc3VOSExnb3dzeVJYWEtCUWkxN2IwanU5?=
 =?utf-8?B?YWhtN3k5VThJM0NDcTZXT2NIdFNMRnYwbW5HWHI1eE1sLy93NW51SWttVm9M?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e143a7e-834d-483a-8eb2-08dbb450f253
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2023 11:59:56.4561 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +JTuB8llWlLpdlpUzog9TmVLf9H4z05omOhynV0RZNip+AdXUtUY4nj9gH3JQTgBDN+tcnZ3FGR8RfbJqw2dfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6918
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/cx0=3A_Add_step_for_programming_msgbus_timer_=28rev2=29?=
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

Quoting Patchwork (2023-09-12 19:24:10-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/cx0: Add step for programming msgbus timer (rev2)
>URL   : https://patchwork.freedesktop.org/series/123551/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_13623_full -> Patchwork_123551v2_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_123551v2_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_123551v2_full, please notify your bug team (lgci=
.bug.filing@intel.com) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (9 -> 9)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
123551v2_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_eio@in-flight-contexts-10ms:
>    - shard-snb:          [PASS][1] -> [FAIL][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-snb6/i=
gt@gem_eio@in-flight-contexts-10ms.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard-=
snb4/igt@gem_eio@in-flight-contexts-10ms.html
>
>  * igt@gen9_exec_parse@allowed-single:
>    - shard-apl:          [PASS][3] -> [INCOMPLETE][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-apl4/i=
gt@gen9_exec_parse@allowed-single.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard-=
apl6/igt@gen9_exec_parse@allowed-single.html
>
>  * igt@kms_rotation_crc@primary-rotation-270:
>    - shard-rkl:          [PASS][5] -> [INCOMPLETE][6] +1 other test incom=
plete
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-rkl-2/=
igt@kms_rotation_crc@primary-rotation-270.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard-=
rkl-1/igt@kms_rotation_crc@primary-rotation-270.html
>
>  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
>    - shard-glk:          [PASS][7] -> [FAIL][8]
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-glk1/i=
gt@kms_universal_plane@cursor-fb-leak-pipe-a.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard-=
glk3/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
>
>  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>    - shard-dg2:          [PASS][9] -> [INCOMPLETE][10]
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-1/=
igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>

None of those should be related to this patch since those machines do not u=
se
the C10 or C20 PHYs.

Gustavo Sousa

> =20
>Known issues
>------------
>
>  Here are the changes found in Patchwork_123551v2_full that come from kno=
wn issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@api_intel_bb@object-reloc-keep-cache:
>    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#8411])
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@api_intel_bb@object-reloc-keep-cache.html
>
>  * igt@api_intel_bb@object-reloc-purge-cache:
>    - shard-mtlp:         NOTRUN -> [SKIP][12] ([i915#8411])
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-4/igt@api_intel_bb@object-reloc-purge-cache.html
>
>  * igt@device_reset@cold-reset-bound:
>    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#7701])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@device_reset@cold-reset-bound.html
>
>  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
>    - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#8414]) +9 other test=
s skip
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html
>
>  * igt@feature_discovery@psr1:
>    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#658])
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@feature_discovery@psr1.html
>
>  * igt@gem_close_race@multigpu-basic-process:
>    - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#7697])
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-4/igt@gem_close_race@multigpu-basic-process.html
>
>  * igt@gem_close_race@multigpu-basic-threads:
>    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#7697])
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-6/igt@gem_close_race@multigpu-basic-threads.html
>
>  * igt@gem_create@create-ext-cpu-access-big:
>    - shard-dg2:          NOTRUN -> [ABORT][18] ([i915#7461])
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@gem_create@create-ext-cpu-access-big.html
>
>  * igt@gem_ctx_param@set-priority-not-supported:
>    - shard-dg2:          NOTRUN -> [SKIP][19] ([fdo#109314])
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-6/igt@gem_ctx_param@set-priority-not-supported.html
>
>  * igt@gem_ctx_persistence@heartbeat-hang:
>    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#8555])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@gem_ctx_persistence@heartbeat-hang.html
>
>  * igt@gem_ctx_persistence@processes:
>    - shard-snb:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#1099]=
) +1 other test skip
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-snb5/igt@gem_ctx_persistence@processes.html
>
>  * igt@gem_eio@unwedge-stress:
>    - shard-dg1:          [PASS][22] -> [FAIL][23] ([i915#5784])
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-1=
9/igt@gem_eio@unwedge-stress.html
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg1-14/igt@gem_eio@unwedge-stress.html
>
>  * igt@gem_exec_balancer@bonded-pair:
>    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4771])
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@gem_exec_balancer@bonded-pair.html
>
>  * igt@gem_exec_fair@basic-pace@vecs0:
>    - shard-rkl:          [PASS][25] -> [FAIL][26] ([i915#2842]) +1 other =
test fail
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-rkl-4=
/igt@gem_exec_fair@basic-pace@vecs0.html
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html
>
>  * igt@gem_exec_fair@basic-throttle:
>    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#3539])
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@gem_exec_fair@basic-throttle.html
>
>  * igt@gem_exec_flush@basic-wb-prw-default:
>    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852])=
 +2 other tests skip
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-6/igt@gem_exec_flush@basic-wb-prw-default.html
>
>  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
>    - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#3281])
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-4/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html
>
>  * igt@gem_exec_reloc@basic-write-wc-noreloc:
>    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3281]) +6 other test=
s skip
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@gem_exec_reloc@basic-write-wc-noreloc.html
>
>  * igt@gem_exec_schedule@preempt-hang@vcs0:
>    - shard-mtlp:         NOTRUN -> [ABORT][31] ([i915#9262]) +1 other tes=
t abort
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-4/igt@gem_exec_schedule@preempt-hang@vcs0.html
>
>  * igt@gem_exec_schedule@preempt-hang@vecs0:
>    - shard-mtlp:         NOTRUN -> [DMESG-WARN][32] ([i915#9262])
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-4/igt@gem_exec_schedule@preempt-hang@vecs0.html
>
>  * igt@gem_exec_schedule@preempt-queue-contexts:
>    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4537] / [i915#4812])
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@gem_exec_schedule@preempt-queue-contexts.html
>
>  * igt@gem_exec_suspend@basic-s3@smem:
>    - shard-mtlp:         [PASS][34] -> [ABORT][35] ([i915#9262]) +2 other=
 tests abort
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-mtlp-=
4/igt@gem_exec_suspend@basic-s3@smem.html
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-8/igt@gem_exec_suspend@basic-s3@smem.html
>
>  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>    - shard-dg2:          [PASS][36] -> [ABORT][37] ([i915#7975] / [i915#8=
213]) +1 other test abort
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-1=
1/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>
>  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
>    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4860])
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
>
>  * igt@gem_lmem_swapping@heavy-multi:
>    - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#4613])
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-9/igt@gem_lmem_swapping@heavy-multi.html
>
>  * igt@gem_lmem_swapping@smem-oom@lmem0:
>    - shard-dg1:          [PASS][40] -> [TIMEOUT][41] ([i915#5493])
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-1=
6/igt@gem_lmem_swapping@smem-oom@lmem0.html
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
>
>  * igt@gem_mmap_gtt@fault-concurrent-y:
>    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4077]) +6 other test=
s skip
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-6/igt@gem_mmap_gtt@fault-concurrent-y.html
>
>  * igt@gem_mmap_wc@close:
>    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4083]) +8 other test=
s skip
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@gem_mmap_wc@close.html
>
>  * igt@gem_partial_pwrite_pread@reads-uncached:
>    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3282]) +4 other test=
s skip
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@gem_partial_pwrite_pread@reads-uncached.html
>
>  * igt@gem_pwrite@basic-exhaustion:
>    - shard-snb:          NOTRUN -> [WARN][45] ([i915#2658])
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-snb5/igt@gem_pwrite@basic-exhaustion.html
>
>  * igt@gem_pxp@regular-baseline-src-copy-readible:
>    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4270]) +2 other test=
s skip
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@gem_pxp@regular-baseline-src-copy-readible.html
>
>  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
>    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#8428])
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-4/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html
>
>  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4079])
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>
>  * igt@gem_softpin@evict-snoop-interruptible:
>    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#4885])
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html
>
>  * igt@gem_spin_batch@spin-all-new:
>    - shard-dg2:          NOTRUN -> [FAIL][50] ([i915#5889])
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@gem_spin_batch@spin-all-new.html
>
>  * igt@gem_userptr_blits@access-control:
>    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3297])
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-6/igt@gem_userptr_blits@access-control.html
>
>  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#3297] / [i915#4880])=
 +1 other test skip
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
>
>  * igt@gem_userptr_blits@unsync-unmap:
>    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#3297])
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-9/igt@gem_userptr_blits@unsync-unmap.html
>
>  * igt@gem_userptr_blits@vma-merge:
>    - shard-tglu:         NOTRUN -> [FAIL][54] ([i915#3318])
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-9/igt@gem_userptr_blits@vma-merge.html
>
>  * igt@gen3_render_linear_blits:
>    - shard-dg2:          NOTRUN -> [SKIP][55] ([fdo#109289]) +5 other tes=
ts skip
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@gen3_render_linear_blits.html
>
>  * igt@gen9_exec_parse@bb-start-param:
>    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#2856]) +1 other test=
 skip
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@gen9_exec_parse@bb-start-param.html
>
>  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>    - shard-mtlp:         [PASS][57] -> [FAIL][58] ([i915#8691])
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-mtlp-=
1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-4/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>
>  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>    - shard-tglu:         NOTRUN -> [WARN][59] ([i915#2681]) +3 other test=
s warn
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>
>  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>    - shard-rkl:          [PASS][60] -> [SKIP][61] ([i915#1397])
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-rkl-6=
/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>
>  * igt@i915_pm_rpm@modeset-lpsp:
>    - shard-dg2:          [PASS][62] -> [SKIP][63] ([i915#1397])
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-1=
0/igt@i915_pm_rpm@modeset-lpsp.html
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-5/igt@i915_pm_rpm@modeset-lpsp.html
>
>  * igt@i915_pm_rpm@modeset-lpsp-stress:
>    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#1397])
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@i915_pm_rpm@modeset-lpsp-stress.html
>
>  * igt@i915_pm_rpm@modeset-non-lpsp:
>    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#1397])
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-7/igt@i915_pm_rpm@modeset-non-lpsp.html
>
>  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>    - shard-dg1:          [PASS][66] -> [SKIP][67] ([i915#1397]) +2 other =
tests skip
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-1=
2/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>
>  * igt@i915_pm_rps@thresholds-park@gt0:
>    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#8925])
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@i915_pm_rps@thresholds-park@gt0.html
>
>  * igt@i915_query@query-topology-unsupported:
>    - shard-dg2:          NOTRUN -> [SKIP][69] ([fdo#109302])
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@i915_query@query-topology-unsupported.html
>
>  * igt@kms_addfb_basic@clobberred-modifier:
>    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4212]) +1 other test=
 skip
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@kms_addfb_basic@clobberred-modifier.html
>
>  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#3826])
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
>
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y=
-rc_ccs:
>    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#8502]) +7 other test=
s skip
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-=
4-y-rc_ccs.html
>
>  * igt@kms_async_flips@crc@pipe-b-hdmi-a-1:
>    - shard-dg2:          NOTRUN -> [FAIL][73] ([i915#8247]) +3 other test=
s fail
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html
>
>  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#404])
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>
>  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels=
:
>    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#1769]=
)
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-apl7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panel=
s.html
>
>  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>    - shard-dg2:          NOTRUN -> [SKIP][76] ([fdo#111614]) +3 other tes=
ts skip
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
>
>  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#5190]) +10 other tes=
ts skip
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
>
>  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>    - shard-tglu:         [PASS][78] -> [FAIL][79] ([i915#3743]) +1 other =
test fail
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-tglu-=
3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>
>  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +22 other te=
sts skip
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>
>  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>    - shard-mtlp:         NOTRUN -> [SKIP][81] ([fdo#111615]) +1 other tes=
t skip
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>
>  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4538] / [i915#5190])=
 +6 other tests skip
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>    - shard-tglu:         NOTRUN -> [SKIP][83] ([fdo#111615])
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-fl=
ip.html
>
>  * igt@kms_big_joiner@2x-modeset:
>    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#2705])
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@kms_big_joiner@2x-modeset.html
>
>  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#3689] / [i915#3886] =
/ [i915#5354] / [i915#6095])
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-9/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_rc_ccs_cc:
>    - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#5354] / [i915#6095])=
 +4 other tests skip
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-9/igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_rc_ccs_cc.html
>
>  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
>    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#6095]) +3 other test=
s skip
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-4/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html
>
>  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3689] / [i915#3886] =
/ [i915#5354]) +8 other tests skip
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#3886] / [i915#6095])
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-1/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
>
>  * igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:
>    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3689] / [i915#5354])=
 +16 other tests skip
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-10/igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs.html
>
>  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886]=
)
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-apl7/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_mc_ccs:
>    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#3689] / [i915#5354] =
/ [i915#6095]) +1 other test skip
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-9/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_mc_ccs.html
>
>  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4087] / [i915#7213])=
 +3 other tests skip
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
>
>  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
>    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#4087]) +3 other test=
s skip
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html
>
>  * igt@kms_chamelium_color@ctm-0-25:
>    - shard-tglu:         NOTRUN -> [SKIP][95] ([fdo#111827])
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-9/igt@kms_chamelium_color@ctm-0-25.html
>
>  * igt@kms_chamelium_color@ctm-red-to-blue:
>    - shard-dg2:          NOTRUN -> [SKIP][96] ([fdo#111827]) +1 other tes=
t skip
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-7/igt@kms_chamelium_color@ctm-red-to-blue.html
>
>  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#7828]) +7 other test=
s skip
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-dg2-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
>
>  * igt@kms_chamelium_frames@dp-crc-fast:
>    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#7828])
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-tglu-9/igt@kms_chamelium_frames@dp-crc-fast.html
>
>  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#7828])
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shard=
-mtlp-1/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
>
>  * igt@kms_color@deep-color:
>    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#3555]) +5 other tes=
ts skip
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-6/igt@kms_color@deep-color.html
>
>  * igt@kms_content_protection@atomic:
>    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#6944] / [i915#7116]=
 / [i915#7118]) +1 other test skip
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@kms_content_protection@atomic.html
>
>  * igt@kms_content_protection@dp-mst-lic-type-0:
>    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3299])
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_content_protection@dp-mst-lic-type-0.html
>
>  * igt@kms_content_protection@srm:
>    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#7118]) +1 other tes=
t skip
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-6/igt@kms_content_protection@srm.html
>
>  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#3359])
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>
>  * igt@kms_cursor_crc@cursor-sliding-512x170:
>    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3359])
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-10/igt@kms_cursor_crc@cursor-sliding-512x170.html
>
>  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>    - shard-tglu:         NOTRUN -> [SKIP][106] ([fdo#109274])
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>
>  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>    - shard-dg2:          NOTRUN -> [SKIP][107] ([fdo#109274] / [i915#5354=
]) +5 other tests skip
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
>
>  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>    - shard-dg2:          NOTRUN -> [SKIP][108] ([fdo#109274] / [fdo#11176=
7] / [i915#5354])
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>    - shard-glk:          [PASS][109] -> [FAIL][110] ([i915#2346])
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-glk7=
/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>    - shard-apl:          [PASS][111] -> [FAIL][112] ([i915#2346])
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-apl3=
/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size=
.html
>
>  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4103] / [i915#4213]=
)
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-10/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>
>  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
>    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#9227])
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-15/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html
>
>  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
>    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#9226] / [i915#9261]=
) +1 other test skip
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-15/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html
>
>  * igt@kms_dsc@dsc-basic:
>    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3555] / [i915#3840]=
) +1 other test skip
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_dsc@dsc-basic.html
>    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#3555] / [i915#3840]=
 / [i915#9159])
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-7/igt@kms_dsc@dsc-basic.html
>
>  * igt@kms_flip@2x-dpms-vs-vblank-race:
>    - shard-tglu:         NOTRUN -> [SKIP][118] ([fdo#109274] / [i915#3637=
])
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@kms_flip@2x-dpms-vs-vblank-race.html
>
>  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>    - shard-dg2:          NOTRUN -> [SKIP][119] ([fdo#109274] / [fdo#11176=
7])
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>
>  * igt@kms_flip@2x-flip-vs-fences-interruptible:
>    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#8381])
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-10/igt@kms_flip@2x-flip-vs-fences-interruptible.html
>
>  * igt@kms_flip@2x-plain-flip:
>    - shard-dg2:          NOTRUN -> [SKIP][121] ([fdo#109274])
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-6/igt@kms_flip@2x-plain-flip.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@p=
ipe-a-valid-mode:
>    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#2672]) +1 other tes=
t skip
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscalin=
g@pipe-a-valid-mode.html
>
>  * igt@kms_force_connector_basic@force-load-detect:
>    - shard-mtlp:         NOTRUN -> [SKIP][123] ([fdo#109285])
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-4/igt@kms_force_connector_basic@force-load-detect.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
>    - shard-dg2:          [PASS][124] -> [FAIL][125] ([i915#6880])
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-=
11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.htm=
l
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cp=
u.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#5354]) +33 other te=
sts skip
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.htm=
l
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
>    - shard-tglu:         NOTRUN -> [SKIP][127] ([fdo#109280]) +4 other te=
sts skip
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite=
.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
>    - shard-snb:          NOTRUN -> [SKIP][128] ([fdo#109271]) +101 other =
tests skip
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
>
>  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
>    - shard-dg2:          NOTRUN -> [FAIL][129] ([i915#6880])
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
>
>  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#5460])
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-4/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cp=
u:
>    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3458]) +14 other te=
sts skip
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap=
-cpu.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
>    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#1825])
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-ren=
der.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
>    - shard-tglu:         NOTRUN -> [SKIP][133] ([fdo#110189]) +5 other te=
sts skip
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-c=
pu.html
>
>  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#8708]) +22 other te=
sts skip
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
>
>  * igt@kms_hdr@invalid-metadata-sizes:
>    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3555] / [i915#8228]=
) +1 other test skip
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html
>
>  * igt@kms_plane_multiple@tiling-yf:
>    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#3555]) +1 other tes=
t skip
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@kms_plane_multiple@tiling-yf.html
>
>  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
>    - shard-dg2:          NOTRUN -> [FAIL][137] ([i915#8292])
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html
>
>  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b=
-hdmi-a-1:
>    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#5176]) +11 other te=
sts skip
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-10/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pi=
pe-b-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b=
-hdmi-a-2:
>    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#5176]) +1 other tes=
t skip
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-rkl-4/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pip=
e-b-hdmi-a-2.html
>
>  * igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-=
1:
>    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#5176]) +15 other te=
sts skip
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-19/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdm=
i-a-1.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-=
c-hdmi-a-1:
>    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#5235]) +23 other te=
sts skip
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@p=
ipe-c-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25=
@pipe-d-hdmi-a-3:
>    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#5235]) +23 other te=
sts skip
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0=
-25@pipe-d-hdmi-a-3.html
>
>  * igt@kms_prime@basic-crc-hybrid:
>    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#6524] / [i915#6805]=
)
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-10/igt@kms_prime@basic-crc-hybrid.html
>
>  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#658])
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>
>  * igt@kms_psr2_su@page_flip-xrgb8888:
>    - shard-apl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#658]=
)
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-apl7/igt@kms_psr2_su@page_flip-xrgb8888.html
>
>  * igt@kms_psr@primary_page_flip:
>    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#1072]) +6 other tes=
ts skip
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-10/igt@kms_psr@primary_page_flip.html
>
>  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#4235]) +1 other tes=
t skip
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-6/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
>
>  * igt@kms_selftest@drm_format:
>    - shard-apl:          NOTRUN -> [SKIP][148] ([fdo#109271] / [i915#8661=
])
>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-apl7/igt@kms_selftest@drm_format.html
>
>  * igt@kms_universal_plane@cursor-fb-leak-pipe-d:
>    - shard-tglu:         [PASS][149] -> [FAIL][150] ([i915#9196]) +1 othe=
r test fail
>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-tglu=
-2/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
>   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-7/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
>    - shard-dg2:          [PASS][151] -> [FAIL][152] ([i915#9196])
>   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-=
5/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
>   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-2/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
>
>  * igt@perf@gen8-unprivileged-single-ctx-counters:
>    - shard-mtlp:         NOTRUN -> [SKIP][153] ([fdo#109289])
>   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-4/igt@perf@gen8-unprivileged-single-ctx-counters.html
>
>  * igt@perf_pmu@event-wait@rcs0:
>    - shard-dg2:          NOTRUN -> [SKIP][154] ([fdo#112283])
>   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@perf_pmu@event-wait@rcs0.html
>
>  * igt@perf_pmu@rc6-suspend:
>    - shard-dg2:          [PASS][155] -> [FAIL][156] ([fdo#103375])
>   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-=
10/igt@perf_pmu@rc6-suspend.html
>   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-5/igt@perf_pmu@rc6-suspend.html
>
>  * igt@prime_vgem@basic-read:
>    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3291] / [i915#3708]=
)
>   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@prime_vgem@basic-read.html
>
>  * igt@prime_vgem@fence-write-hang:
>    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#3708])
>   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-10/igt@prime_vgem@fence-write-hang.html
>
>  * igt@runner@aborted:
>    - shard-mtlp:         NOTRUN -> ([FAIL][159], [FAIL][160]) ([i915#7812=
])
>   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-7/igt@runner@aborted.html
>   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-1/igt@runner@aborted.html
>
>  * igt@sysfs_heartbeat_interval@mixed@ccs0:
>    - shard-mtlp:         [PASS][161] -> [DMESG-WARN][162] ([i915#8552])
>   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-mtlp=
-6/igt@sysfs_heartbeat_interval@mixed@ccs0.html
>   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-2/igt@sysfs_heartbeat_interval@mixed@ccs0.html
>
>  * igt@v3d/v3d_submit_cl@simple-flush-cache:
>    - shard-tglu:         NOTRUN -> [SKIP][163] ([fdo#109315] / [i915#2575=
]) +1 other test skip
>   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@v3d/v3d_submit_cl@simple-flush-cache.html
>
>  * igt@v3d/v3d_submit_csd@multiple-job-submission:
>    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#2575]) +11 other te=
sts skip
>   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@v3d/v3d_submit_csd@multiple-job-submission.html
>
>  * igt@v3d/v3d_submit_csd@single-in-sync:
>    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#2575])
>   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-7/igt@v3d/v3d_submit_csd@single-in-sync.html
>
>  * igt@vc4/vc4_label_bo@set-kernel-name:
>    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#7711]) +6 other tes=
ts skip
>   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-6/igt@vc4/vc4_label_bo@set-kernel-name.html
>
>  * igt@vc4/vc4_purgeable_bo@mark-willneed:
>    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#2575]) +1 other tes=
t skip
>   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@vc4/vc4_purgeable_bo@mark-willneed.html
>
>  * igt@vc4/vc4_wait_bo@unused-bo-1ns:
>    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#7711]) +2 other tes=
ts skip
>   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-4/igt@vc4/vc4_wait_bo@unused-bo-1ns.html
>
> =20
>#### Possible fixes ####
>
>  * igt@drm_fdinfo@most-busy-check-all@rcs0:
>    - shard-rkl:          [FAIL][169] ([i915#7742]) -> [PASS][170] +1 othe=
r test pass
>   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-rkl-=
4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>
>  * igt@gem_ctx_exec@basic-nohangcheck:
>    - shard-rkl:          [FAIL][171] ([i915#6268]) -> [PASS][172]
>   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-rkl-=
1/igt@gem_ctx_exec@basic-nohangcheck.html
>   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
>
>  * igt@gem_eio@hibernate:
>    - shard-tglu:         [ABORT][173] ([i915#7975] / [i915#8213] / [i915#=
8398]) -> [PASS][174]
>   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-tglu=
-10/igt@gem_eio@hibernate.html
>   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-9/igt@gem_eio@hibernate.html
>
>  * igt@gem_exec_fair@basic-none-share@rcs0:
>    - shard-rkl:          [FAIL][175] ([i915#2842]) -> [PASS][176]
>   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-rkl-=
4/igt@gem_exec_fair@basic-none-share@rcs0.html
>   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-glk:          [FAIL][177] ([i915#2842]) -> [PASS][178]
>   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-glk1=
/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_softpin@noreloc-s3:
>    - shard-dg2:          [FAIL][179] ([fdo#103375]) -> [PASS][180]
>   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-=
5/igt@gem_softpin@noreloc-s3.html
>   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-11/igt@gem_softpin@noreloc-s3.html
>
>  * igt@i915_hangman@gt-error-state-capture@vecs0:
>    - shard-mtlp:         [ABORT][181] ([i915#9262]) -> [PASS][182] +4 oth=
er tests pass
>   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-mtlp=
-3/igt@i915_hangman@gt-error-state-capture@vecs0.html
>   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-7/igt@i915_hangman@gt-error-state-capture@vecs0.html
>
>  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>    - shard-dg1:          [FAIL][183] ([i915#3591]) -> [PASS][184] +1 othe=
r test pass
>   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-=
12/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>
>  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>    - shard-dg1:          [SKIP][185] ([i915#1397]) -> [PASS][186] +2 othe=
r tests pass
>   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-=
19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-14/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>
>  * igt@i915_pm_rpm@i2c:
>    - shard-dg2:          [FAIL][187] ([i915#8717]) -> [PASS][188]
>   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-=
2/igt@i915_pm_rpm@i2c.html
>   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@i915_pm_rpm@i2c.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip=
:
>    - shard-tglu:         [FAIL][189] ([i915#3743]) -> [PASS][190]
>   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-tglu=
-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.h=
tml
>   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-=
flip.html
>
>  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3:
>    - shard-dg2:          [INCOMPLETE][191] ([i915#9203]) -> [PASS][192]
>   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-=
5/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html
>   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-7/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>    - shard-dg2:          [FAIL][193] ([i915#6880]) -> [PASS][194]
>   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-=
5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>
>  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
>    - shard-apl:          [INCOMPLETE][195] -> [PASS][196]
>   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-apl1=
/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
>   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
>
>  * igt@kms_universal_plane@cursor-fb-leak-pipe-c:
>    - shard-tglu:         [FAIL][197] ([i915#9196]) -> [PASS][198]
>   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-tglu=
-2/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html
>   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-tglu-7/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html
>
>  * igt@perf_pmu@busy-double-start@vecs1:
>    - shard-dg2:          [FAIL][199] ([i915#4349]) -> [PASS][200] +3 othe=
r tests pass
>   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-=
10/igt@perf_pmu@busy-double-start@vecs1.html
>   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
>
>  * igt@syncobj_wait@invalid-single-wait-unsubmitted:
>    - shard-dg1:          [DMESG-WARN][201] ([i915#1982] / [i915#4423]) ->=
 [PASS][202]
>   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-=
14/igt@syncobj_wait@invalid-single-wait-unsubmitted.html
>   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-18/igt@syncobj_wait@invalid-single-wait-unsubmitted.html
>
> =20
>#### Warnings ####
>
>  * igt@gem_lmem_swapping@smem-oom@lmem0:
>    - shard-dg2:          [TIMEOUT][203] ([i915#5493]) -> [DMESG-WARN][204=
] ([i915#4936] / [i915#5493])
>   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-=
5/igt@gem_lmem_swapping@smem-oom@lmem0.html
>   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
>
>  * igt@i915_hangman@engine-error-state-capture@vecs0:
>    - shard-mtlp:         [DMESG-WARN][205] ([i915#9262]) -> [ABORT][206] =
([i915#9262])
>   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-mtlp=
-1/igt@i915_hangman@engine-error-state-capture@vecs0.html
>   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-4/igt@i915_hangman@engine-error-state-capture@vecs0.html
>
>  * igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_mtl_rc_ccs:
>    - shard-dg1:          [SKIP][207] ([i915#4423] / [i915#5354] / [i915#6=
095]) -> [SKIP][208] ([i915#5354] / [i915#6095])
>   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-=
14/igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_mtl_rc_ccs.html
>   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-18/igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_mtl_rc_ccs.html
>
>  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
>    - shard-dg1:          [SKIP][209] ([i915#3689] / [i915#4423] / [i915#5=
354] / [i915#6095]) -> [SKIP][210] ([i915#3689] / [i915#5354] / [i915#6095]=
)
>   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-=
14/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html
>   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-18/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html
>
>  * igt@kms_content_protection@type1:
>    - shard-dg2:          [SKIP][211] ([i915#7118] / [i915#7162]) -> [SKIP=
][212] ([i915#7118])
>   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg2-=
11/igt@kms_content_protection@type1.html
>   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg2-6/igt@kms_content_protection@type1.html
>
>  * igt@kms_fbcon_fbt@psr-suspend:
>    - shard-rkl:          [SKIP][213] ([i915#3955]) -> [SKIP][214] ([fdo#1=
10189] / [i915#3955])
>   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-rkl-=
4/igt@kms_fbcon_fbt@psr-suspend.html
>   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
>
>  * igt@kms_force_connector_basic@force-load-detect:
>    - shard-rkl:          [SKIP][215] ([fdo#109285] / [i915#4098]) -> [SKI=
P][216] ([fdo#109285])
>   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-rkl-=
2/igt@kms_force_connector_basic@force-load-detect.html
>   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-rkl-6/igt@kms_force_connector_basic@force-load-detect.html
>
>  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
>    - shard-dg1:          [SKIP][217] ([i915#3458] / [i915#4423]) -> [SKIP=
][218] ([i915#3458])
>   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-=
14/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
>   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-18/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
>
>  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pi=
pe-a-hdmi-a-4:
>    - shard-dg1:          [SKIP][219] ([i915#4423] / [i915#5176]) -> [SKIP=
][220] ([i915#5176])
>   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-=
14/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe=
-a-hdmi-a-4.html
>   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-18/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-2=
5@pipe-a-hdmi-a-4.html
>
>  * igt@kms_psr@cursor_plane_move:
>    - shard-dg1:          [SKIP][221] ([i915#1072]) -> [SKIP][222] ([i915#=
1072] / [i915#4078])
>   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-=
19/igt@kms_psr@cursor_plane_move.html
>   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-12/igt@kms_psr@cursor_plane_move.html
>
>  * igt@kms_psr@sprite_plane_onoff:
>    - shard-dg1:          [SKIP][223] ([i915#1072] / [i915#4078]) -> [SKIP=
][224] ([i915#1072]) +1 other test skip
>   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-dg1-=
12/igt@kms_psr@sprite_plane_onoff.html
>   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-dg1-15/igt@kms_psr@sprite_plane_onoff.html
>
>  * igt@sysfs_heartbeat_interval@mixed@vecs0:
>    - shard-mtlp:         [FAIL][225] ([i915#1731]) -> [ABORT][226] ([i915=
#8552])
>   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13623/shard-mtlp=
-6/igt@sysfs_heartbeat_interval@mixed@vecs0.html
>   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123551v2/shar=
d-mtlp-2/igt@sysfs_heartbeat_interval@mixed@vecs0.html
>
> =20
>  {name}: This element is suppressed. This means it is ignored when comput=
ing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=3D103375
>  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109271
>  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109274
>  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109280
>  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109285
>  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109289
>  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109302
>  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109314
>  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109315
>  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=3D110189
>  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111614
>  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111615
>  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111767
>  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111827
>  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=3D112283
>  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>  [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
>  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>  [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
>  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>  [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
>  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>  [i915#8552]: https://gitlab.freedesktop.org/drm/intel/issues/8552
>  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>  [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
>  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>  [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
>  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>  [i915#9159]: https://gitlab.freedesktop.org/drm/intel/issues/9159
>  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>  [i915#9203]: https://gitlab.freedesktop.org/drm/intel/issues/9203
>  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
>  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
>  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_13623 -> Patchwork_123551v2
>
>  CI-20190529: 20190529
>  CI_DRM_13623: eb35627e1c4a3781c161cd04944e403ce6df3e1c @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_7480: a8d38db9ac258d7fd71b2cf7607e259a864f95be @ https://gitlab.free=
desktop.org/drm/igt-gpu-tools.git
>  Patchwork_123551v2: eb35627e1c4a3781c161cd04944e403ce6df3e1c @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fr=
eedesktop.org/piglit
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
23551v2/index.html
