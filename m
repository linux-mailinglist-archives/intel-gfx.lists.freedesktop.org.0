Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61078877F87
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 13:04:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F540112322;
	Mon, 11 Mar 2024 12:04:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NG8uWga3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0307C112337
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 12:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710158691; x=1741694691;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=rLHAk7lk3YGo0FghUsVGzFaaJqhWXMdAvOFSfbxFpgA=;
 b=NG8uWga38UK+pMs6L1HoOOBPnHr3QCuLd9GQWlu0a9Kqn1ratsPrdP2o
 0Wn1knkLiG3nJW7g8im8EHF4pcVMRDCb2QIG014JxdYrDHQozd+9m30eL
 GZmjcqWaKSwLPQ/n6F03bXNrKFETMIJu+LtJognhmJSzJHvXZED+Cz9h4
 h/t+XjsrTpkKgUnk1TJC2v8DicsNxjnDepb1wADwX7qsYPF+Flifb7Smz
 Pk39CGYvHCy/q0z0TLPhYk5F9Srj9O8C1xrXuxNpAYrfZK8uPKwpfFKsn
 uI9GPae6SnGr1yMJBuRzlwjfw+Ooc5+4AdqMvWb+JxF0MWs5VO+4ItKfR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="15377797"
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="15377797"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 05:04:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="15707597"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 05:04:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 05:04:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 05:04:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 05:04:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YWzsW3e+jxr117+Tb8cWa4FocatBxnm8Pi73wRHcbZdt0wMjwVBB9Z07s0y5pwvaR7Sy01MbvKBKTlDzntQWqOw/O9aLDVkFSofXy/KLnVJSdrEAsBAoZnkYe7AsFvKUF4AQiBn+LwbQ4t62cvDivF2xmpvzosrrXdJ5FNVWMfh8P2az0cI8Qwr+dUF8wQFgX7TD2cphncgT4x6fELwV7klJHoRH5wkn2VkckrdcdR3/pqtU39vphIFg86LTQYyki1S3bQR6YcN7GbcuSfZIN5jidb8aH2pboBN8Nbqjb0kWeauR1WVJ2NRhMH1ro5gdRAWMEVMoEDN3Qo6On0YKKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fz9K+GeY5mYjWiG0d2aKEOBv0MW2sGsr3vxVJhigxpM=;
 b=SwvO97IgFF6WWIkKgnoZtLwS4sMCTyr+qzGtyfP9yvLBKpK5lB4mnZ2VsExvcKGdDcaTqH+1SPTQ9pn8VDHLnXQes2ef0URsebfPVjpATMF9JUtBfB15LAw95HOgJNnmQGIx8Cjk/eLPncTlBtG0oSRXK9vkEV8EnHbtjiKVlZ1LVmxSFFf24i+o5JBGEkDvTpb8UmH22jaxDZb5eUANEyuaKc2KJrx4xXGGuMNewvOJlmoOuftTj1lOk9tn10Vzt+ImUB4MJ5zmyqUT757BC4lTNOnAEsWT3Eqao/qaeHvgSETmHhlzveSQUHhkSeShfiJohIsli65lOsEWJfNt3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA0PR11MB4528.namprd11.prod.outlook.com (2603:10b6:806:99::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Mon, 11 Mar
 2024 12:04:41 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09%7]) with mapi id 15.20.7386.014; Mon, 11 Mar 2024
 12:04:41 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240311041504.806058-1-shekhar.chauhan@intel.com>
References: <20240311041504.806058-1-shekhar.chauhan@intel.com>
Subject: Re: [PATCH v5] drm/i915/dp: Increase idle pattern wait timeout to 2ms
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@linux.intel.com>, <matthew.d.roper@intel.com>,
 <clinton.a.taylor@intel.com>, <shekhar.chauhan@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Mon, 11 Mar 2024 09:04:36 -0300
Message-ID: <171015867667.7312.2596870350343862692@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR06CA0006.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::19) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA0PR11MB4528:EE_
X-MS-Office365-Filtering-Correlation-Id: 28f95f6c-0c57-4a2d-9f50-08dc41c36ed7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: alAnKI20nBp0ggAQ+93FPz9QO8Rl3qU8aCNNfKxdpCQAaPQ6MsccSiPIPBK8rvL3LupfG6TRSO3aajTBFTUWcd6PCIJdOg5NZETNf2F2suRT1ZQ67nqUfKSNtZNGWLUURv0dTi9HtZyWwKdZNhYgrEd4Bnf3GQPfaonjtl6vfbgRpW8u3SQHncDmLZ9cfGXBohFUeBZQ6vWaS+iVdpivAvXSWgEJvtu54Injzi11XcoI4tfQhE86IAlbivR27+0QVV321lKlpckwj9h5Vd9wPNsJGddCu4Ah5pnNm5ocuDPYmB+SFR5Flq57HWYMbaYwD0Gr438Dt/ZUqiOPrRTYZPfn79e6vPxkpNf5ypUlp49qLMJqW8duvQbCgZRA2WJFcKYlaj4eI95ZKP1t07hg83TfN4/czodQy+0Gv60CnHHTXWv8vzcvyZQFE/98AmicdjpXT4BIdPmNmzHot+/82wv3ewtOcd7MOpYn3PwpLa9RwICdseIdY/kcwl97NFsQgT2VJy6kXBABao9tWRnjvEsivlcckMdUbPwkmGCbuCAVeSQJ0OCh/MSNjUkjB3qzQz1+VuLtAJgth4FkWvely34h53OJ3YRSzYA3ppgt+gBSI3sF/oMJ/mDiSHRk2GicZuHUcvVDYZ0U97vk8gNkSOSy1XAJSaXATHNVa6zF4xE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bE9OTDJNc2V6amJVK05XV1lSM3NrY3BtZTNERTVNank2dXlJdlp2SVJ5b3Vr?=
 =?utf-8?B?M3I5OENjeEdKOE0xNHZieVNaOXJZYnZSd2N4c0dTT1l6U0ZVeCszZS9DakRD?=
 =?utf-8?B?ak9OU3ZqbHB4SjB1MWUyMjRvZzdkc3MzVzNpR3FBdDF3emlreEFScC83NUtn?=
 =?utf-8?B?a1JVRlZTQStnV21LcE1xYlZtVGpwRi8vb0NwODlENmJ5bkxlY2duZmZhY2N4?=
 =?utf-8?B?dldVcGc5TkdLalc5MEtrU1NTK2JUS0F4VG5kWXJpdUtEV2dkY2ZYSzNucXhS?=
 =?utf-8?B?RXh2RVJMZncvZ1BhY0JicDhTM01EMmt1Z1VOVWQrU1NielBPaHNSSGJ1djdI?=
 =?utf-8?B?UTVFMkM4L05pblRTVW15T2tUenFTRmxtYTF2VnBCWGN1VXFFNVcyc25TZk11?=
 =?utf-8?B?YVhuVWFkZWltVFA3enFiaEViMGdtVkNVZWU3R21SdWN6dzlDQ1RCUVZMQmdn?=
 =?utf-8?B?dkYxdm5oVlpuM2xxenY1Zlk5eXd5TzNMMnFxZWJWTTVwdG5STWJsZXM3Tk0w?=
 =?utf-8?B?dVJrNEJLSi9id0J1ZmtHZGVVUXpqSzUzZWNrM2JWb0VaUENSaVVoSU1EaDNI?=
 =?utf-8?B?Y0cycGFyWG5HTnZvazJVa082cGE1Qlpmbmd3TDJxVmFDcmdIenhBUFV5N09F?=
 =?utf-8?B?THgyOEdyS3hBaUhrS2Z3VWtkTW1tUXU0RVRPb3ErSnQwQjdUcE9mZDJxU3RY?=
 =?utf-8?B?OGFHTlZpeWVGcUx2SzBob212a2dtWkFwZ28yU2gzbEFzSFhBd3hMMk15REQr?=
 =?utf-8?B?c2dvQ0JmakNoUS8rcndFQlNxak5EbkUzdkRFV1NNUFozbXlUaFRqM0ZsOVZ3?=
 =?utf-8?B?RHVzTkp2WmF6QmR0cDAySzR0M3NUNWxORHQ1TUNsUEV4TGc0cUk5Y2ZTellj?=
 =?utf-8?B?ejVvVkVTSEZSVzc1NUpxZzlNaXNoNi9pcmlmd2dFT1NGNGZkR2VVRXdRY0Nh?=
 =?utf-8?B?M0tid1hRR25MYnoxM1RVaVh2bzI4OTlLYjIyU2JkMWVDWEo2M3d1bW95aDJT?=
 =?utf-8?B?ejloM3RUdHZJL05zY3R5Wjd3TEtIcm1NN1BoSXY4YmFwdlVHL09VSVdmL3Rk?=
 =?utf-8?B?ZUM2SHNHa0NSbHk5VmdORUtxY1ZxdHMyYkp4c1ZYeDljaFpVSmxnR0RrRVEy?=
 =?utf-8?B?dno1cDRLelBXWWVsc2NBSDIvOGo3OUFEOUNPa2xaMytMZDMxYXBxZ3ZFN1FQ?=
 =?utf-8?B?T3d0KzlyanVyVFRmSWVKQnJmWStwSGVhcjhDMmhIdm1ZTmRpZzI5V082Q2ha?=
 =?utf-8?B?VG5jcXpwMHFnTXJpUnA2N2tlcEpwcVhScHJrRldTUWFwYklXRnhoOGVMa21h?=
 =?utf-8?B?V3VhaXNxZVNBTVk0UjNwWHVUanUvK1pCWmFxWW9MNWVyTDZQRHpPWnBWR3pZ?=
 =?utf-8?B?QjM4N3J2WURZQktCM0hGaDFzQVh1QzNCcndjYy9PeENsRmVacFB2dWpFZ0xI?=
 =?utf-8?B?eER4MHhOd1ZNckcvUmJoNXhEVm1pTENqTzRsTjI0VGVGMFRZVVRpblVUaGpW?=
 =?utf-8?B?NmJabjVpbEVrS1lRcUFOTndiblhmbHV6R3BrbkNWSG4yRXhpYzhLV1BTRjlI?=
 =?utf-8?B?a3VLYnJITkNyQWxGRVhjdTRUbzhFWG9WRnB2RTB1ZlJJU2RLSThwdWV2czV5?=
 =?utf-8?B?RFhybkpXbzJ4eWJ5alpWR2NMazZBTjZjSDQzaXZFQVp3Y0tCUWxhOWZwa0dB?=
 =?utf-8?B?a0RQWlZpWGNTMkg5NUlFczJ6b3JYREFpU1VoU2NVblltYi90SHRtanhxQkRL?=
 =?utf-8?B?ZVRDVWxGY2F3VkxBRjZwS0RZRUJjcEpidFFrd01nUEpvQlEvVVZwUUxrb2pL?=
 =?utf-8?B?Mnd6RGhUVlJ3aCtURE1hRHFtWFA3QmJrY0tpbjk4QjcvNjdaMTJuSXBzdnQz?=
 =?utf-8?B?VGtsejNJdngwOVVrUndxMTcxeU9UeFg2ZElyckFkRUlmK1FKOVlwak1SVXR0?=
 =?utf-8?B?S1hwdGJMZW9Yc0J6cEpSK1g2cnlibVhqaVVYZ3FhNEJ1N1FCUnZWV0ozQWxM?=
 =?utf-8?B?ZTZuRWdFUU5QdDhjNnZJZ2FTR2kzY1I1SDNVaDVvMnRjanA5MUhuZnJYem5N?=
 =?utf-8?B?Y3ZSSkwzYitoWDhmTmdmTm9vVE5lTkhrbnBsa1labGUxNHcrWFNobEJ4S0wr?=
 =?utf-8?B?cG9rajFVQ2M3VVJvdmFRMmtzN29FVHM0Q0xkVVowcmFjUkF1SUw5SUhlUGNP?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28f95f6c-0c57-4a2d-9f50-08dc41c36ed7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 12:04:41.4932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OYtqsfkRh/SUavfb5Io4ZDn09/hRks7egDJ+iJUOacSvoueInRhcD5NZDU9EGKwGAURoK4WONxul3mxLMBAHNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4528
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

Quoting Shekhar Chauhan (2024-03-11 01:15:04-03:00)
>The driver currently waits 1ms for idle patterns,
>but for Xe2LPD and possibly future display IPs,
>it requires a 1640us (rounded up to 2ms) timeout
>whilst waiting for idle patterns for MST streams.
>
>To simplify the code, the timeout is uniformly
>increased by 1ms across all platforms/display IPs.
>
>v1: Introduced the 2ms wait timeout.
>v2: Segregated the wait timeout for platforms before & after LNL.
>v3: Fixed 2 cosmetic changes.
>v4: Revert to v2 design with commit message enhancements.
>v5: Minor cosmetic changes to the commit message.
>
>BSpec: 68849
>Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index bea441590204..05ba3642d486 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3680,7 +3680,7 @@ static void intel_ddi_set_idle_link_train(struct int=
el_dp *intel_dp,
>=20
>         if (intel_de_wait_for_set(dev_priv,
>                                   dp_tp_status_reg(encoder, crtc_state),
>-                                  DP_TP_STATUS_IDLE_DONE, 1))
>+                                  DP_TP_STATUS_IDLE_DONE, 2))
>                 drm_err(&dev_priv->drm,
>                         "Timed out waiting for DP idle patterns\n");
> }
>--=20
>2.34.1
>
