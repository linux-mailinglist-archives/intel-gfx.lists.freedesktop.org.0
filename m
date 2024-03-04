Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DCE870B29
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 21:06:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BED2E112537;
	Mon,  4 Mar 2024 20:06:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nXHVnSwE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2058011252F;
 Mon,  4 Mar 2024 20:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709582790; x=1741118790;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7aS/XqLFNJgq4qyzd877V99XhPOlINcoEUcGDTHiJSc=;
 b=nXHVnSwEBanYHFJ8nopU2Vuvml6RI1Tfy2cYYRldct8uXQsrLzvqkpJV
 6YDM8eTgqEFaDdN0idF0+0P/FgYEitlzAwfXQKpLsZtOlDeJHPvbJq/rV
 qVr0ROus5/IbPYHBTCNmbfl9bFGhcFfT/cS7iOOtVhS/Lm8i27yOGGUso
 FlDo8QXxEJulk6h6tytP3LQ8ePoOFVOoGQ+KVBtt/TPcFhuQiutl9mYA9
 aLYuZmwbKeBL7pg8V8B5Aijp1DiJ7VKoSUjTgfvHlcmT+eZ7ESqFLHRdm
 F78iG/8LdssgUE4QYTPmUdxmJtAubNcoInMd838iVAezeRdaKWKe/Hxk3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4263732"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="4263732"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 12:06:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="39978546"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 12:06:23 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 12:06:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 12:06:22 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 12:06:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8pHN0A2RTZPEsSRCBAwd/Jn532hT9znkxo0DN6eE3CpsKgMMH891iuK6qhbtqnS9ujC42qGq3FmQdGh32xl7/QD8SCwze2j121g9Zjvpl4TUX3ZBheEJKjfwdn9fFNr+HVYnDHctP0WIfNJYnJ926iRDWyRrh8iSZuTDFeNkKRXl7ExmdQ3Zy5TNheNgVmtwtnjO/kqwHcgEjzsCn5AeV3BBk3sq0V06zSWoGCP06vTZ65sBgT9adAGc4w43g3opfhtbTpmPD+Yq9wryRCewEpJHrJWUbnrR5/iZpbxLxqU2+KtcvbW+eR+SHF38IB7OTFGxNuGgdMwMyAl1fVaHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u8zjEdmWEzMvi7Nf9+Q8bC6MlL8eVs9+Yon+Ep7PX8Q=;
 b=jVFf8EbEM7l86BEPvk3yRg+90idHruzxC2fCqx9NxgqKyPLDwl97bWpG7XujJjde8fuzSZTO5eZ/4/wssz8NDgJu6xkRDmvRQdgqIsEziUXEjDtu4q/YSK1Dr+OT6EDiqcTDDwYM478F8crN8sNjguKkZCg+XmeecudpYxJLRVhhKms8Tmx4469vwBa6mdq5yf3A3Gf9lzIobN2DLUiwu33/Y46m2O0jm3WWhZx6OcOtPB2kGLI72TTHBjsjWSm3UMXmc7/bMcyTqEMmkWgzlyJahEMg9jGTjQM8Rzh4XX8rnFXvpzFpolUMhSdQDIqzLqkvjBWOPkb2fyS2Rztj1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB7206.namprd11.prod.outlook.com (2603:10b6:8:112::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.16; Mon, 4 Mar
 2024 20:06:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b%7]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 20:06:19 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <a3penzs4px34f4ue6cvadbmoxxjwbozzkfxxccgizxedj7p4id@5swom6lffbpk>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-8-gustavo.sousa@intel.com>
 <a3penzs4px34f4ue6cvadbmoxxjwbozzkfxxccgizxedj7p4id@5swom6lffbpk>
Subject: Re: [PATCH 7/8] drm/i915/xe2lpd: Load DMC
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <vinod.govindapillai@intel.com>, <stanislav.lisovskiy@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Mon, 4 Mar 2024 17:06:14 -0300
Message-ID: <170958277430.2209.11644435060453586111@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0148.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB7206:EE_
X-MS-Office365-Filtering-Correlation-Id: b62fa166-ecad-42f6-56c3-08dc3c868ea2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uHPgvCEMZb6RbrQXlMvCUwyXvM7iBHeXPdnSqm2CREk/o6HYp32JgjTtiNx8CDVxI+DVN+CHeiMWlVzbjNn7gqoUPmeBaumfZiuZtGU6tRTNOR6I8Uf3gPCQJ/trjb2sfKQy8vTeeGJgbOwvBX/UjawcSkFVnB13aAnaDPS6JnNxWr6ZVK+VksvUeg8AZ4zyTtfMnF45oxgB+CICV7isCt5QQboSH3uaYLFXq0tYbxeD4Jwb1Zg86734nhtF83eu3rpqxMLxVq2ByyoQyDWohw8ev5IeX9O12uAydpx8LSGaiLWWvDtYeKX94fHAZ9ifcdlCKGXhC5/O7yB3fxCJrnXSm7IugkjwHJ5E4IhwcniQemiRkWG6RqAGZM4c9zifrzX40cvLWp6wC4YLsZpZ9ZoxNAJeE7vocJPsFgGF1OjLPJW37s2vw6JokhN94vylqkNMoNmU9JJwDOuAjyTta5alnAxNQcj4VTZaP0koeFCwiWMhiL20U7KqK/dp9KpOLUCACT67VlR3sC49aLBcubJQwnWrRrD4hx5wdS8Snl7ALVJF8f3pGx7Y2NYlr10THRkQ+xPK6qOXU/DMRUuAIg/i2BZOJKzSMGU5eKjEyBkwsX5+bwPuo2MQbVtxDpIYTPQCgs7rPTjFbu9UwJeAB/SKNevySQv12ZZ9sGouq4c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjExZXZWWndiQXJhR1VKUmlUS01XaXg1cTNkUzV6aTErNVQ2WlZJa1FXVGdU?=
 =?utf-8?B?YTZraXhidmwrV1RqWExISjFEMU4zSFVZSURCejhpTkYwY21MSXd0OTBWby9F?=
 =?utf-8?B?THB6VWZpbklORlBxcjJ1TVlOSmpMV2VIaHJVVUdHb3ZGNmh6SElQSFdYRnVj?=
 =?utf-8?B?VENGRFFRd1RkVVBBMUIwSXFaUjBSdmNUSXUyMHpEUHgwQXViL09BU2Y4MEto?=
 =?utf-8?B?YThZaGhncU53NDgzaUMwb1V6NmlZNTM0d1dtTGovVjJlWHRiT0JiZFllMWt1?=
 =?utf-8?B?anEwSnFEYm9CQWZKS2FKZUdLSGtzVG1aN3NlVzZIRGl3dFV5KzRKQS8wOTFN?=
 =?utf-8?B?ZUl5eEpPL2JleFdNQ1V6NTdadytVdHJvaDNhbm9FeXhVbmc1bWkwVXVxbCs2?=
 =?utf-8?B?VXlvUkRheDJqcGdtTFd1aStuVGlXaXYxWGFFMi9ESDBnSi9ERVJTQlFpd3BP?=
 =?utf-8?B?UzJLZlhJT0U1b2YrRmJXSGtOVTkvNHdlQmZOZWR4NjdKaHdadlNOMEE1L1lB?=
 =?utf-8?B?UkpVbVhVbnZkL2Z2Sk1EWEczclhDeVhYSTBCMnlhOHhVdlhkTmRCTURWQWs0?=
 =?utf-8?B?dktFT1lCbkw4Y0xYczU3RDd1Vy9zVWY4VHhTVjAzV1pvR3RFOVBBQ1I3cE1G?=
 =?utf-8?B?azVHSmJsZHdnWW9oTjhFd0RzUlpaam9zWHJWKzZuY212amJhMDY5WUwxWXRN?=
 =?utf-8?B?UWNIQVU3dm9SNDc3VTRNZ2N4T0NKakFNTjlEY2JHaWlIT1BTeDRZOEhFMGVV?=
 =?utf-8?B?K05lZFlCenN2YnVLb2Vjdyt6S1FNZ1NZRnh3dWZ0YmZ3N0k2MTVUSVd0V28v?=
 =?utf-8?B?N3JxZ3FUaFc2MGZwRE9qT2VJRVNUS09EdmlFZDJrNGMzTnFOMWtYOTFVSE5w?=
 =?utf-8?B?VDdGa1lJRUdsb2gwQkgzOS9pV3YrNGtmcTdWVWtDN21teTlMWlZLOEp2RHJk?=
 =?utf-8?B?L0tVdTZncnF4K29GOVpSc2UvZkNXUE4xTEI3MEltNW9VZFI2T2E4QWIzWE5O?=
 =?utf-8?B?emVWakw5QTBnR1l0Z0h6REpBMnlYWUNrdXZMeEFUbWFDREQyY0wybTJGeDNW?=
 =?utf-8?B?YlJSMzdvOXRhSXpnTllHOE5sV1A3amVoSFRtUVJnVCtJWjJIKzJvVU55S0Vs?=
 =?utf-8?B?OVJxUUUzYUE3d1ptaXczQ2hlRnRjZ1Vhb3R2YzF5Wjdzb0tUQXgvT0VZQUZz?=
 =?utf-8?B?OTlYK2dCc3h1MExSZ0gyNFFRQ1V4dXdGRUtmV0w1emtValR5bGZmaU95a3l2?=
 =?utf-8?B?NTdNRmdtRHZNenRaamVZaXBjOC9xdytleENGYS9nYzN1SmJPK1JTYzVreWJx?=
 =?utf-8?B?Z2FoTHB0eTBHNCtDK3RaNVhIOXVMUmFZSkk0VWF1UGZseEliMDZwSnR4V3dt?=
 =?utf-8?B?SFVhSDhrbTZqUkp5STRIdEM2Um1rU0RZcUFVQnZFUXdHN0YxOEkvQXVuNW10?=
 =?utf-8?B?czl1RDRGVG1tZkRqRDhHSDUxcXl3dmw4Um9xUE1jeUdUSnc4akpUVzBzUHg2?=
 =?utf-8?B?aFdPMTJJWUdBTC9hSDk5Q2wvZzBPZll1VlpXTkdYZXFDQ0JybTVzMXlVZVEv?=
 =?utf-8?B?bnprdStTRVp2K0hmMmw5Q2M4VUxGUlA0c2ladERZTFZWVmVmMzk2cFJvZjd2?=
 =?utf-8?B?MHdDQ3Z1T3Jwcm1qL0tUUVVmcGtWbnI1OFJkajhzSmtHZ2RTaTMrcWNpcUg2?=
 =?utf-8?B?S2NkRmZxdFlqUStQakp1aVpZbTVVZGVSVHFXUVd2dlEwbE5xOUV1cGk2UHFx?=
 =?utf-8?B?ZXloZGpyZGRIL3kxaUdSVHgvZ2o5dmxBb1ZJUnFBR1FBbFlqVjMvSTJhSFZ2?=
 =?utf-8?B?d3R4dVlyNHdBUWw2Z3Y2a0J4MmllYnNaNDlUMWFLMXV4cGdySW9DZW5VV3Ju?=
 =?utf-8?B?VGNoelhtTTlRNEhPT1QvQzd4NDVHYTBsVmtsZGdLcnJ3Ni94aGQwOWtjbit6?=
 =?utf-8?B?QnpyZ0RZK3I2bi9RWS9FalcrY0dwME5BWlcwR2tkdm5PaTV6NE9IRS9wSTRW?=
 =?utf-8?B?bWhhbVFFSTBlTGRxNm4wbE95czdtblFWSVBud2wxRDk2R3pGekEwaTRaTi9q?=
 =?utf-8?B?VllQZE1nNnA3T01DcHVmQ0xWcWhMNmUxZFhxTFNOMmJDVXBIL3p0cHFwR1Np?=
 =?utf-8?B?V1RWNFFYUkh1NlNDMTcwckM0TEJ3aXZXWFUrYlBEVFViUWxDeC9hamNwVjFy?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b62fa166-ecad-42f6-56c3-08dc3c868ea2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 20:06:19.8500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kE6sz1OQdPeZ8gUCR/slC0W+VS+P2ivRoWc4WGG7/qpsyg5LPCJPJhwSwM//aCuwwi/IVIxL4qMqnjJ0CRJMBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7206
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

Quoting Lucas De Marchi (2024-03-04 16:50:49-03:00)
>On Mon, Mar 04, 2024 at 03:30:26PM -0300, Gustavo Sousa wrote:
>>From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>>
>>Load DMC for Xe2LPD. The value 0x8000 is the maximum payload size for
>>any Xe2LPD DMC firmware.
>>
>>Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@int=
el.com>
>>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
>> 1 file changed, 8 insertions(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
>>index 835781624482..54c5909de293 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -89,10 +89,14 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_=
private *i915)
>>         __stringify(major) "_"                        \
>>         __stringify(minor) ".bin"
>>
>>+#define XE2LPD_MAX_FW_SIZE                0x8000
>
>                 ^ missing DMC_ here to be like the other macros below?

Oh, yeah. That went unnoticed. Thanks!

--
Gustavo

>
>other than that, Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Lucas De Marchi
>
>> #define XELPDP_DMC_MAX_FW_SIZE                0x7000
>> #define DISPLAY_VER13_DMC_MAX_FW_SIZE        0x20000
>> #define DISPLAY_VER12_DMC_MAX_FW_SIZE        ICL_DMC_MAX_FW_SIZE
>>
>>+#define XE2LPD_DMC_PATH                        DMC_PATH(xe2lpd)
>>+MODULE_FIRMWARE(XE2LPD_DMC_PATH);
>>+
>> #define MTL_DMC_PATH                        DMC_PATH(mtl)
>> MODULE_FIRMWARE(MTL_DMC_PATH);
>>
>>@@ -987,7 +991,10 @@ void intel_dmc_init(struct drm_i915_private *i915)
>>
>>         INIT_WORK(&dmc->work, dmc_load_work_fn);
>>
>>-        if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0)) {
>>+        if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(20, 0)) {
>>+                dmc->fw_path =3D XE2LPD_DMC_PATH;
>>+                dmc->max_fw_size =3D XE2LPD_MAX_FW_SIZE;
>>+        } else if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0)) {
>>                 dmc->fw_path =3D MTL_DMC_PATH;
>>                 dmc->max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
>>         } else if (IS_DG2(i915)) {
>>--=20
>>2.44.0
>>
