Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDf4BHM9emlB4wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 17:46:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EFAA617B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 17:46:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1318210E736;
	Wed, 28 Jan 2026 16:46:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CrAgpQTT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74BE010E732;
 Wed, 28 Jan 2026 16:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769618798; x=1801154798;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=n7tz84jrmZXG9nJPLxlSPfCMuUXSPLl3DBs4ssTSXz8=;
 b=CrAgpQTTMfw8c3K/ayYA5YPPEbHRIcdvfagZBHfTTOkFOTv2BzS7B3YG
 /adlmKa9jIiBzl+A+3BakHc5KonkagXKu3K6T26g9fD0107aNJF8GyUnr
 GWcDpuyQ1rVShMmunBiE0uH+AeKuRkUcf39LZhIO6y3lJUBPo88+iXS9X
 CugpaU971NkM8Nk7HGZMQefix07sAuBe2fJ0piakbjhBwpYHXLA3/vxmW
 aMl3FrFAJIlc1eJYPHXD/O3UCdZJVHMjezLPSouShajhVki0MumoKdF0F
 AifY+KbLu+KjpSDEurafNxKeO4U7RF8CoCsZwAmTFWaaLDeX6OyLD0aja w==;
X-CSE-ConnectionGUID: deuxiHPXR7yaE4njARvhFw==
X-CSE-MsgGUID: 7SHsLS2fSsi7c09+tyk96Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="88412726"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="88412726"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 08:46:38 -0800
X-CSE-ConnectionGUID: 5PUqLFFoSni+B6tn9atHrg==
X-CSE-MsgGUID: /cOtskVVQwqAK3F8tlESzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208221748"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 08:46:38 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 08:46:37 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 08:46:37 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.36)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 08:46:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UBp9nvr41+mXNzzVCgCiV1PtK+C5fcZxjaX2tugs9BFbTgW16dmkr8NrKhk3Y4TmRmDKnnVvqnIYJJnV8SG8A/Fe2yLRg6OLErGPrjEZUpMCVSEUL5h1Xi+56X1uteJxnBuA88epjsLW77rutsaYEG7riaPL3Udg2gXtkHseZvxBmso9JqTxNrRkzsle4NcqQoaiILhbFjMJWP4MtrseIHt7vxZo+UuYypXJd0PXW8l9/dKf5sLOTRo+T4C5iarjyjz4sdndYarEsNobgefgjm1pxAuV3peDGFI5movrjvIjOQPeT64/CUck8e4L9r9ZF/lntnbnZPqXwXAtWn91tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4cYPe3SA/igulaOW3qTwUnxeOXOF7/jt1ZmVnmUtfxQ=;
 b=C7v47ODFIt4Q4F5oJhaJNI/cM8CRF0+fKIBdUveCyw8e8YK89vizvFgzPpSC789u6NSfJj9mRl6fXaIb2gjSe1ttIrKaLcFzJqE3PJMDO92SU4vFi368CpIhTmEMC7+K/dE5BCphO0yL6E7/Tp1Jc12aGM5zE0ovg5WLGAtOTz3irATMqrktB2t9dtEvTwK8TyqnpYngjGnl+Ntqvp+G11i1y/oGrWjgnCswRUXhAY0iq30GLGENv2m/5JYZKEN3LHX4g4UnS/OIDj8fZd9CeXYMpEOftnZwV4Uz34L+azxXln811Z2zL9sDvUKFOw4GxIDZN7/tkrcfHd7TX2w9MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB6491.namprd11.prod.outlook.com (2603:10b6:208:3a5::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 16:46:32 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 28 Jan 2026
 16:46:32 +0000
Date: Wed, 28 Jan 2026 18:46:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 04/16] drm/i915/dp: Rework pipe joiner logic in mode_valid
Message-ID: <aXo8dwGBqxY5vE6o@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-5-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260128140636.3527799-5-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0104.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::24) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB6491:EE_
X-MS-Office365-Filtering-Correlation-Id: 55b59432-6ea3-41c0-7b71-08de5e8ccaf8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OVJVd1FqT0FsbFp4NFErL00rbWlGVjREOTR1N2Z1aml2ZXRpRFZ6MmhFSzU4?=
 =?utf-8?B?RFNadmtnT0VUZ3loY2R5VHYzZWlTbHY2QWp5OHQyYlplZVk4RnRYNlFTZHRN?=
 =?utf-8?B?OHQ2bVU0Y0Fpem55WkFhTlJ3TGxmenlLdC9rZEgwYTFNRGZkVFBFTUw4N1k3?=
 =?utf-8?B?aWV2dlJsWG5WQzJlejhnaUpYWFpiQitsWnVDdXYxY0hWMzVIZ0t0Zmk2Mm04?=
 =?utf-8?B?S1NnOEpXTEsyVmhjcmszNFFaeTI3NnVjL0IxQndXbjNPaTB3Zmt2RzlPRTVp?=
 =?utf-8?B?eklGYTAweDlWZWpGQ0lLU3RCb05ndVhJbTN4TFF5dXhOT3pPL2orMmMxWjdx?=
 =?utf-8?B?Yk5HcWw3a1JUWjFRNkdXTjhsV0pNS3I5M01veFliRnZJa0hoTzlMM3BxRlVh?=
 =?utf-8?B?S3o2eEJFNkxVSkd2Q0p1eTBPSTRsazNhS0laNitxei9VMmVQd2pES29sRkgv?=
 =?utf-8?B?OG5mcWJaNWFmdkZ2bEhMWEZ5OG9EblhFSkg1S0x5SENEWk5NYVZKN3AxRzg1?=
 =?utf-8?B?ZVh3SytHQ0lhdG5lSFhDdFJPRVE3T0N6VDE1Uko5a3MvSW9hTWdONFJNTmk4?=
 =?utf-8?B?QXJRYmZtZUJETHQ3QlhMWUdzWmNmalg3ZDZ6VlBINHY0UkpjMzl0YmxKOW9X?=
 =?utf-8?B?UUNmVUdwN0d0eEN5NWdaNWl1SVYzanhkUWhxVVE1RGhGbkdnY3NBSVNjM0M5?=
 =?utf-8?B?WUNxVDVpdnhoYjhTRUh1V2hMUHZSWW5xZmJaRGV0c3NnSittYVNNR1Qza1hu?=
 =?utf-8?B?b2VzMCtMRTl4YWhhRGc0cmU0WHBNTkJyUkFpTDBsd3NsMllkUXdnWHZnb0pU?=
 =?utf-8?B?VUZwTG1QN2g3YXZvTXQyME55Z3VkeTJROW1QbHE4V2toWGlTSUpPUnZITklm?=
 =?utf-8?B?UUxpRk44MWI1VXdvWnVpbVZwUFJNL1UxMjZVOWhnWWNDQkVxODRnU1lIRWhq?=
 =?utf-8?B?U1pvaTd3V0ZyWGVQL085QUcvZXZMTWo2NzY4SGU3cWtheU1ha2hPVStndU5F?=
 =?utf-8?B?c0JXQ2NHZ2NMQ1h0QXR4d2pFUCtrNVdmTFdvYlU3YmtxNDB6SXRvZ0k4Q0tG?=
 =?utf-8?B?cGIrem1GazJiYmU4QXVkbzlJeUhjMUVXYnpvSWUybGhaVFJqcUlqakRuT3BG?=
 =?utf-8?B?WGdkRWZ6MGdIbnoxaEZOWVBEelBzbVlicFpLdXQyVlVMSTZmbWFkb3J0Tyta?=
 =?utf-8?B?U3k0YlczMjZDV2x5cmx6SERxalUrZWo5akVGalllOUlzdTJaZDdkQTVmbUJV?=
 =?utf-8?B?K3lheE5rUVFiOVV0VnJRWmxWc2x1ZHd1c29mZkZsWlpCMDB2a05OaGJLRDZ3?=
 =?utf-8?B?ZFJLa2paVWNxT3FMUWo1T2RaWmFxOXNYOHREcmlKTG5mVDJqaGZFNkU1V2Jq?=
 =?utf-8?B?OEpMa0tvaFVsNlNMa1RZRDR5bngzZ2IzdFRQV1U2VmdBMytpdlQ5MnNPcDM4?=
 =?utf-8?B?aUJWR21yeUxuVWZPdUhBWXdycmN4MFdVMW1YYUFlTVZJTHg5NVNORXg5Ymk4?=
 =?utf-8?B?Y1FtUXAwUFBOVGNCb3djSXFrVEFPMHlsc1RJV2JWTnhmSUpyQi9pNmRacVR5?=
 =?utf-8?B?UkhHK2xkMlI4c1JjU1VNcUVqaW4rRS9YYnRKTG9aN0Z0R0VpUDZ0NlVMTUVR?=
 =?utf-8?B?cU5CQVBRVnJsdUhzL1hmdEFxY2hvNERyYjhKTHYrMUhGdld0cVorN0VzWldo?=
 =?utf-8?B?UksrMzRwdUZybUVIdFB3MHRpYnp2dHY2WUNQRXUrcWFTWmFEZDRiZU5tajF6?=
 =?utf-8?B?Tk1SRTFsQ2hKM2QxS2lmSmFLTjNheW9JOHEzY3V0SDZlUlRTc09BZ0habktE?=
 =?utf-8?B?a2wrRytkZmRIYURkQ0hxVE84RjNrY3BYQWZRTjVBMVZ0dkJiYkdRTlpMMkNM?=
 =?utf-8?B?RUVVcFR2RmVQc2tBTDlWcWg1Y2VOb3lIbE9sNmZOdC9IUUtnaExwdmgzUTJK?=
 =?utf-8?B?R1JpY3JaZ1JSWWxRTFNqK24yajlUbWdqYkJzMDBBazNMTFNNWU90M1hrT1Vw?=
 =?utf-8?B?TnFMYm96U1BZbkZjUU1BTktXamRvMTVoZEVKLzk0ZWdDVXFEUVUyZmhkVVR2?=
 =?utf-8?B?WkRLTVRzdEdyc2ZoY0NnMFp2ckQvU3BjK2Q3ZXVhMzFqeFp4QWtMenJWRW1p?=
 =?utf-8?Q?O9lM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWkzMUtoYmVWcFBPL0FOYXB0MzdyRnRWZnRDbVprWldJM0pNVjByYVBzRzlS?=
 =?utf-8?B?b3pIZVppcCtUTngzR2FuY0xhdmM5LzV4eThxV0x6MXRUS0F0RUM1WDYrUU9C?=
 =?utf-8?B?em1TVHV6NWdOWFU4YVNVQ0Q3N1A3dGtSR25kL21kUCtPWnVaTVhCd0sxRHBT?=
 =?utf-8?B?bCtncE9zOUhwR014bEtMdDZ0cFdlMW04cXU2eU5SNWl3M3VBcnA2VUV4MjJ5?=
 =?utf-8?B?YUloNDd3dDhmNDQ5SkREYkE4YmV5bmZpZVV0RVJrVWVhbzEvRUx2VFk3dnRM?=
 =?utf-8?B?VzZ4bEo0bGVBdndpTlVWSEFJS2Zzc3FVN2NvMHoyTm5mcE5Da2gvVnFueStt?=
 =?utf-8?B?Qm9GWi9kM2U2WEl5ZDFNWWIwKzNHcndoVWJkODV1eUZ5MGVYOHE3RCtXLzcv?=
 =?utf-8?B?dnViNnRucjV3WnFRRjAzV2xrSEdsQ1ZXb3hoMmV2UEJxa1pmNzMwcUlLeGxn?=
 =?utf-8?B?eWRWcVFRY0VXT3B5OE5jbXVqYWY1Mmt6QXVQY2xIdjVrM0gwZEZCRWpldGc2?=
 =?utf-8?B?ZDFMckoyQjcwa01YY0U4Sy9oamk2bktlMjFWTWVxWGozdVVQUWZXeGZvTC9i?=
 =?utf-8?B?WDFEci9sZHlWV0YveXEvMTZRUkVhT2hjNmI1ZGFMS25vZVFsUGRiV0dMbUwz?=
 =?utf-8?B?eUxUREpYVWFyVFAwTUVCcVdVWlJHTEdYME9vU0lJTkZzWVk1TkUrUUx1Q1Iw?=
 =?utf-8?B?Ukk1N2JhNDVzK2VMRlgrNXhrNGIwU1ZjZU4wdHJMYWlNam5SZHB4Q2N2Tmo0?=
 =?utf-8?B?aXRQbjNGYlhpc2x4S0c3d3ozWUR2YVJxRGlVMjhMdU1BU3REd25IQzJnSTB4?=
 =?utf-8?B?dDBwVDdyL2ZTajE3L3ZlcnIydjJ3YnJWSmpHTGp6dFdxOWdRK0ZsUCtYdHpU?=
 =?utf-8?B?S2JmOHNWd1hNRkJkeVhtcjg3aWdhUHZ6a0F1ZlVCUGtrZnBVWmRGNlRvZUdv?=
 =?utf-8?B?MG9VZzlnSnVKZ21tYXJPdlJTaU9OSk9Ca3BaRWNNaWtvckozbjVoa09UbXNk?=
 =?utf-8?B?dzFWN2pOR3J6SnByb3Avcm9vZ1Erd2w5WWxETE9MeUtmZDNlenM5djNSdUxw?=
 =?utf-8?B?Um9hZGxrM2gzY3BWaTRONnQ1MmJsY0loMGU3TS91MXV1c1cycVI5cTFraEwx?=
 =?utf-8?B?ZGJRb2daRlNYM2pJVFMreXNneWZSRzhZa0drd0ZuOXIvdG9WUzlRUWdmVnIx?=
 =?utf-8?B?NjZPUkVVVFAwTUlENjV6Tjc3L0RWTXZkdkVpbU5NUlptOWdCVTlXRjBUUFd6?=
 =?utf-8?B?eTFLMnZhcHY1eUh6NkJrK25ZVjFaRmZxS3VOak8wNDV1Z0g5enlyWDFQSFRL?=
 =?utf-8?B?YzJCSGpteGlMN1doc1FRREpJQ0o5T29pRUZmZm10SmZmOGp5Rk5Yd05uRTFh?=
 =?utf-8?B?WnRKbTdLOHd1RFRpS3FOUkI5NEpZYkNoUkpNUTNvaVdaZ2dubkFWY1VWNDNz?=
 =?utf-8?B?Y2NxcXhMWFRBdFhYbW5GSk9BcENRdlVxWVh3LzlPL2h1a2tNVlFoWGk3byt0?=
 =?utf-8?B?bmMwTnY5djRnSk01VFk3N0Z5KzJaT3gzVGwzUVB6bDJZTlFET3NmcTBGTnlJ?=
 =?utf-8?B?STdtUE52SkhqSDJrU2Zrdkw3dHZLVTIxQU1WWFRHVVFmU2haRkFWcHBVM21a?=
 =?utf-8?B?Y2NQckFFSm10KzhvQVltS0ViOFdTSEovZGNQTTNTWmh1aFJ4YmxqdktEYW4x?=
 =?utf-8?B?TW5XcHp3RmRYZTczbk9YZjJoMHVGSkxCT1IyUzErUzdiTE00MjVabGoybS9Y?=
 =?utf-8?B?MElzcUtWL2FZU0ZHQ0Q0elZ0S2l5MmxpbWJYcUovTGJLUWtGMEdCSWxBSFJI?=
 =?utf-8?B?bVQ1cWwvdmpXQzEzcjdXYmRVVXZrdTlBRkNwQ2pHR01MUDlFUHBjZWVPa3E2?=
 =?utf-8?B?M3YzaEtoNXhpd0M5SUw1dnBoOUVmcE9TMGxxTWluZUl1d2VzWUF5MW9OZWJW?=
 =?utf-8?B?SUhVZjRJYVZIQndFMGtyVzlGZ1BKYnI0ZWZMVmVDUzFCM2ZHV2N4cTFoakp3?=
 =?utf-8?B?VnJoRUhXMklWeG5BS2hXZlplWm5qY2NKY3hLYjJGY3BPZkxySkZxajBqVFlR?=
 =?utf-8?B?UDZoNGdkTHZ4UDdpakJxNjFlcGtjaUt0SGZrVGtrMzFPRXpvNW5WVzMrTFpN?=
 =?utf-8?B?emVSei9TYW1xZzR0RUVMWi8zVHJpcjlURktmWGFwS3ZjTXlKZWl0cWc0UGIy?=
 =?utf-8?B?bFBmWXBGSFUyYnd6dUVoQlFUdmxPMDlwek5haXBrczdWZDd1VzNSL0Q5WmdU?=
 =?utf-8?B?ZDFVY1NDUzRSMjBOZ2FkVldEZXg5S21vcEt0SXREd3BLd3UxbEQvZEJNalkr?=
 =?utf-8?B?V3pNYjN6S2xMY2pQVUZHMTFkbFRxSlJrVXBLYlRERTFtZjNvYW5BQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55b59432-6ea3-41c0-7b71-08de5e8ccaf8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 16:46:32.8099 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RADrJcn1Q55TDNdabNA5GXV3cpYWtFKvmByQNLrxt7/KGBHziBpMIsV6gu7Z4AGErr3c5EsCLkkliXzTiOdAdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6491
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 93EFAA617B
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:24PM +0530, Ankit Nautiyal wrote:
> Currently in intel_dp_mode_valid(), we compute the number of joined pipes
> required before deciding whether DSC is needed. This ordering prevents us
> from accounting for DSC-related overhead when determining pipe
> requirements.
> 
> It is not possible to first decide whether DSC is needed and then compute
> the required number of joined pipes, because the two depend on each other:
> 
>  - DSC need is a function of the pipe count (e.g., 4‑pipe always requires
>    DSC; 2‑pipe may require it if uncompressed joiner is unavailable).
> 
>  - Whether a given pipe‑join configuration is sufficient depends on
>    effective bandwidth, which itself changes when DSC is used.
> 
> As a result, the only correct approach is to iterate candidate pipe counts.
> 
> So, refactor the logic to start with a single pipe and incrementally try
> additional pipes only if needed. While DSC overhead is not yet computed
> here, this restructuring prepares the code to support that in a follow-up
> changes.
> 
> Additionally, if a forced joiner configuration is present, we first check
> whether it satisfies the bandwidth and timing constraints. If it does not,
> we fall back to evaluating configurations with 1, 2, or 4 pipes joined
> and prune or keep the mode accordingly.
> 
> v2:
>  - Iterate over number of pipes to be joined instead of joiner
>    candidates. (Jani)
>  - Document the rationale of iterating over number of joined pipes.
>    (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 158 +++++++++++++++---------
>  1 file changed, 103 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4c3a1b6d0015..599965a6e1a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  	return true;
>  }
>  
> +static
> +bool intel_dp_can_join(struct intel_display *display,
> +		       int num_joined_pipes)
> +{
> +	switch (num_joined_pipes) {
> +	case 1:
> +		return true;
> +	case 2:
> +		return HAS_BIGJOINER(display) ||
> +		       HAS_UNCOMPRESSED_JOINER(display);
> +	case 4:
> +		return HAS_ULTRAJOINER(display);
> +	default:
> +		return false;
> +	}
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *_connector,
>  		    const struct drm_display_mode *mode)
> @@ -1445,13 +1462,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	const struct drm_display_mode *fixed_mode;
>  	int target_clock = mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
> -	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	u16 dsc_max_compressed_bpp = 0;
>  	u8 dsc_slice_count = 0;
>  	enum drm_mode_status status;
>  	bool dsc = false;
>  	int num_joined_pipes;
>  	int link_bpp_x16;
> +	int num_pipes;
>  
>  	status = intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status != MODE_OK)
> @@ -1488,67 +1505,98 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  					   target_clock, mode->hdisplay,
>  					   link_bpp_x16, 0);
>  
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     mode->hdisplay, target_clock);
> -	max_dotclk *= num_joined_pipes;
> -
> -	if (target_clock > max_dotclk)
> -		return MODE_CLOCK_HIGH;
> -
> -	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> -	if (status != MODE_OK)
> -		return status;
> -
> -	if (intel_dp_has_dsc(connector)) {
> -		int pipe_bpp;
> -
> -		/*
> -		 * TBD pass the connector BPC,
> -		 * for now U8_MAX so that max BPC on that platform would be picked
> -		 */
> -		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> -
> -		/*
> -		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> -		 * integer value since we support only integer values of bpp.
> -		 */
> -		if (intel_dp_is_edp(intel_dp)) {
> -			dsc_max_compressed_bpp =
> -				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
> -
> -			dsc_slice_count =
> -				intel_dp_dsc_get_slice_count(connector,
> -							     target_clock,
> -							     mode->hdisplay,
> -							     num_joined_pipes);
> -
> -			dsc = dsc_max_compressed_bpp && dsc_slice_count;
> -		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> -			unsigned long bw_overhead_flags = 0;
> -
> -			if (!drm_dp_is_uhbr_rate(max_link_clock))
> -				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> -
> -			dsc = intel_dp_mode_valid_with_dsc(connector,
> -							   max_link_clock, max_lanes,
> -							   target_clock, mode->hdisplay,
> -							   num_joined_pipes,
> -							   output_format, pipe_bpp,
> -							   bw_overhead_flags);
> +	/*
> +	 * We cannot determine the required pipe‑join count before knowing whether
> +	 * DSC is needed, nor can we determine DSC need without knowing the pipe
> +	 * count.
> +	 * Because of this dependency cycle, the only correct approach is to iterate
> +	 * over candidate pipe counts and evaluate each combination.
> +	 */
> +	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> +		int max_dotclk = display->cdclk.max_dotclk_freq;
> +
> +		status = MODE_CLOCK_HIGH;
> +
> +		if (num_pipes == 0) {
> +			if (!connector->force_joined_pipes)
> +				continue;
> +			num_joined_pipes = connector->force_joined_pipes;
> +		} else {
> +			num_joined_pipes = num_pipes;
> +		}

The current way is to try connector->force_joined_pipes and fail the
commit if that doesn't work. Here you'd change that to fall back trying
non-forced pipe-joined configs in that case. If that's needed (not sure
if that's a good idea, since then the user wouldn't know which case
succeeded or failed), it should be a separate change. Here it could be
simply an if (forced_joined_pipes && num_pipes != forced_joined_pipes)
continue and then use num_pipes instead of num_joined_pipes later in the
loop.

> +
> +		if (!intel_dp_can_join(display, num_joined_pipes))
> +			continue;
> +
> +		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +			continue;
> +
> +		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> +		if (status != MODE_OK)
> +			continue;
> +
> +		if (intel_dp_has_dsc(connector)) {
> +			int pipe_bpp;
> +
> +			/*
> +			 * TBD pass the connector BPC,
> +			 * for now U8_MAX so that max BPC on that platform would be picked
> +			 */
> +			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> +
> +			/*
> +			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> +			 * integer value since we support only integer values of bpp.
> +			 */
> +			if (intel_dp_is_edp(intel_dp)) {
> +				dsc_max_compressed_bpp =
> +					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
> +
> +				dsc_slice_count =
> +					intel_dp_dsc_get_slice_count(connector,
> +								     target_clock,
> +								     mode->hdisplay,
> +								     num_joined_pipes);
> +
> +				dsc = dsc_max_compressed_bpp && dsc_slice_count;
> +			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> +				unsigned long bw_overhead_flags = 0;
> +
> +				if (!drm_dp_is_uhbr_rate(max_link_clock))
> +					bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> +
> +				dsc = intel_dp_mode_valid_with_dsc(connector,
> +								   max_link_clock, max_lanes,
> +								   target_clock, mode->hdisplay,
> +								   num_joined_pipes,
> +								   output_format, pipe_bpp,
> +								   bw_overhead_flags);
> +			}
> +		}
> +
> +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> +			continue;
> +
> +		if (mode_rate > max_rate && !dsc)
> +			continue;
> +
> +		status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +		if (status != MODE_OK)
> +			continue;
> +
> +		max_dotclk *= num_joined_pipes;
> +
> +		if (target_clock <= max_dotclk) {
> +			status = MODE_OK;

status stays MODE_OK if target_clock > max_dotclk.

> +			break;
>  		}
>  	}
>  
> -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> -		return MODE_CLOCK_HIGH;
> -
> -	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>  	if (status != MODE_OK)
>  		return status;
>  
> -	if (mode_rate > max_rate && !dsc)
> -		return MODE_CLOCK_HIGH;
> -
>  	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
> +

Extra w/s.

>  }
>  
>  bool intel_dp_source_supports_tps3(struct intel_display *display)
> -- 
> 2.45.2
> 
