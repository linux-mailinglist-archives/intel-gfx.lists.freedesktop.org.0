Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A0770086F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 14:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 361C510E699;
	Fri, 12 May 2023 12:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2674A10E58C
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 12:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683895860; x=1715431860;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=2IKX5GgssF5m16ew303PllYpLBdVIAHWjWpgHYGT6MM=;
 b=jJjMJ4J7plTiXKU888buw2lITo4cfZNH/BV75CrRG1+jTLBxm5X6QOuO
 BqBzlVGKhYe12HrtQaVI0MFc5Ld0r7RfwNw21BK+JDxwobQI0LTUcpLFb
 kjbqAM0bijdFROIDXHqt0xsv631JrgXcqJj20dSlePsbtedcw2z1yEAJX
 dLhq4KGDQuVAx7o1pW93fZaifeVUgxw6omoR2ca9/MBpWjKqjz+yJmg6O
 SxgPlqTNSB9U5lVyte3dBHyYJbfWdMVWkfeQKDaKSRRqQi6a8SC852krX
 P8+vsIJveY0Ikwg5sUSntHsJYOGBcabeboFEWcp+BTp9uVA5MyhDU2S9M w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="330399662"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="330399662"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 05:50:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="730807407"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="730807407"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 12 May 2023 05:50:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 05:50:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 05:50:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 05:50:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 05:50:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VHtfULHuBJo1RmPKBI4K7oeKHlb9V27wKmOPBsazCFtmMWmL+nP/ZqDf8K1glrVHDejdzct+8qa1+o+VkabHU5lWbWNPrHfvZe4it5U5Z8hPnRqEHX58rNFJKLiWcGdrA/+A5lia5V0jyEa4Q4NnNMoCn//SYUfqxN9Jz7oCn+a0C5vPhcz5k+QRb4UhLcSdeURUhveP8PTZKiMGp+fGo/lIYm9G/hWLlGqIFXegN1DC7g9UICyRenMfco1KUYjGvWiLvkmQRDoufW3RZDjAIrQhfJf82kURgm3S1QCWxIds1UGM9HBYSpuaro5Eky/ZEOdINCXg7kE4Qdqnh0kWKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fiZIKJCD3TN0fEZfih5U3iscGRMyzjIbv1StCEBomJE=;
 b=FDCB51o1YNjJb/qAXgWXtLZMVT1iX0au7oh97uOn/eU49gG6empggPgzfcgAN5pqBE19qrJ9C5azC0VwZPmti3XbCxnOVsMbSox4s+jdB6mnZ++U7GtgspaRx1Po/ueSe1/BtTIePdQKiBoiQ2ouKmAL1ozo6KyB/6O4kwNjFVBiWgZ2Zjc2vqodHAzwNf/bY04YsNWof0VxUnV0QylHhEcf2O/SxyZ8SnUMXCeJ9ADbW8jf67j8zXmcFkQ5/ElZcDNr43o9Za6QIb0IjfVZtt+b5vJJDQnFoNFYdmAgZVERIo95IyFHITt35vUUvhyvzG8/8sXan1pJoV3XdZC1nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by IA0PR11MB7934.namprd11.prod.outlook.com (2603:10b6:208:40d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.20; Fri, 12 May
 2023 12:50:51 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6363.033; Fri, 12 May 2023
 12:50:51 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230512102310.1398406-1-jani.nikula@intel.com>
References: <20230512102310.1398406-1-jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 12 May 2023 09:50:45 -0300
Message-ID: <168389584526.5455.5308025289017401100@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0066.namprd05.prod.outlook.com
 (2603:10b6:a03:74::43) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|IA0PR11MB7934:EE_
X-MS-Office365-Filtering-Correlation-Id: 87770f69-1335-42fe-1fd8-08db52e78403
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MLCcMOyEeZZA8q903CEpXfK1UffN2uW5MbCZO4QLQZJaK5pOoDnpcrcP6RG22RKSdokbxfDg+yWsbwQBSdZzOmATVv334SGeTlpqNLvTXqgh+hXPYqj19p1aQ//F5OtsaXIYbzpgFGrk91pHHxQ8IZxeMZusRciVkYT+e2YCMbu11D52x9Km231YqvEmvt6eyth+F7I3W4g5JHPjms24KeF/DhQZ594w3a42Ya4Bpbxw814YscNO13zKnE6iFtAQ/K36bSwDEtIlr9hedTUflpbQEM/jCsUlnboZ2Ym9Vexl+vekdUEzv4OzPhw1gs5d/B0b85ysbDPV/4Sp0GmX4UtRQL50agiaCht6vD73LHuJ/gTBWUH3mTotj4FDT5iOyu7UmYCl3oD3NlLhXlphdj5SlOW/+WhY1inHgca1sJHtollazDUImhBCvlz6T1e/OnzRZT06lb9os+TcypBCv7Ff59GOphM47JCtvK0Fq6VCpO7GKb2tfh4WC0ahnm3oLxdDKLWiJXDClA184Z1hhaGNxxdbzegUichXnpnYr0xtwkkxLsPe2FZnk9qXjsfu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(366004)(346002)(136003)(39860400002)(396003)(451199021)(186003)(107886003)(2906002)(26005)(6512007)(83380400001)(9686003)(38100700002)(86362001)(33716001)(82960400001)(6506007)(8676002)(478600001)(8936002)(4326008)(41300700001)(6666004)(66476007)(66556008)(66946007)(316002)(6486002)(5660300002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXVCaUM0QWpZa3BaaFpQUVN4QjNvZXpTVUNucGM0WW51cVA4bFVXdm5VSW5J?=
 =?utf-8?B?WEF4Q1EzQUZYZGRlUzg4VHNJUHdWalNiNTNBMEYvSEdaU0tMYXg4dENMa2Vo?=
 =?utf-8?B?RHlRcDVRcHYxdmRreGU1QTdqS3lva1FqNGNESW1rUXh6RnFpdDNST20yTnJX?=
 =?utf-8?B?aitwUHF6REh4U09xSlZFTHpwMXZFKytCbDZNKzNJMzJ6Q1A0MXhJZEdoVVBw?=
 =?utf-8?B?bjh1c2lsaFF5NGxISEVWd0VkUlVyRnovYWJMSmo0ZkpReWYyTFpoR2JyTWtr?=
 =?utf-8?B?S2EyS0dIZ3N0OUNwQ1c0UmJ5T1NEdDYyMVBhczhDT3RSNWpxeXo5dzRKcnNH?=
 =?utf-8?B?cEZuSFlJSlRYTnpBS1BVVUE5MERIWDdTcHlEVFhmVy8zeWgzdGVrNHNtZWxj?=
 =?utf-8?B?RnhHOURvVjNlWmMrWUpwVXJZVThhNUsyN1BBUFRGWnowUHFoUTNsVmZocVRE?=
 =?utf-8?B?K1BzTU1iSUp0eWtQQmc5ZEdVSjZ1dGZINjlPWHRSa05ySDFaVE4zUnFjckFU?=
 =?utf-8?B?R2d5aERtdmpZRlJLZHNuVlYvZTF2dDJiSEZhTU1naTIzclR2VmphSzVhNkJk?=
 =?utf-8?B?cm1BdWtudjB0QmxYQmgxd083MTF3WkwxcnJwTFduN05vTitrL3pZaTFXOWpX?=
 =?utf-8?B?QktZTm9pQzA3ZTAwSlc1ZDRCaDcxTmJXcGhFMERzQ3VOdWJjMk9TY2NXTW5D?=
 =?utf-8?B?a2JVSFM0b0RLcGJFMUJCTTF0OEZFZjh6aUlmYjRmT2tSL1NnSW1Nb0k1L1Bk?=
 =?utf-8?B?d3hpOXZlNStuMGluWG1lbHN6MEVaS3YyLzNKS0JuQUxjNi83TzMycXFNbDAx?=
 =?utf-8?B?alFvS0F6VmZLdnN4WldWemxTNnBEVVVpOWNyWVpVSTluUGs5ZjhvWmJObE1n?=
 =?utf-8?B?TUpXM0xFVXphNWlra0hZWWJWa2IyRGM1T3JtSitXYStiSE00OWNxUGZkVWxv?=
 =?utf-8?B?eWtDa3M4K1VON00wODhvektFeGh2VXV0T2J6KzVSWnhENHZnQVlDQ3JLczZV?=
 =?utf-8?B?Zk1oRXVZOEZyYXpMUzV2VG9NbXJnY3Z3UFdvVzZoQm5mb2ViSDZkbkR2aEVr?=
 =?utf-8?B?Z0sxWnk5QVJEdU95TDFPL2pheGxMOW14T3V5TDN1clBaVmxoWTVGN2tSa1Zx?=
 =?utf-8?B?TzdmRG1HR3hvWkExMStrVGZXQkhJbTNHWDNiRHA2Myt1N3loMWtsaFo1ck1H?=
 =?utf-8?B?d0V5Wnd2aC8wekxLVkJtZW9PRmlXU3ZLYVl2R1F6dlpSRVZMRGFSOXMybnNO?=
 =?utf-8?B?SW9lUVgzTnFTQ3pDMHlvTSthTGRLcHFLTCthcmFGZ21PZXZ4aFRwTzdZNGE3?=
 =?utf-8?B?aFNnRkhFbHZFdTIyQldFTkN2VjUxcmkvekZ2N1FIbGJ1RFdXZHBIekR0bWpo?=
 =?utf-8?B?K2lqdDdkN3NtbzJ6eUxJMmdhRDEybGs4ZlJHNnJOVWlxUFd3a0RsQkVOSmsv?=
 =?utf-8?B?cHNPTDFRTkVVQWRYbjdyWHJOTHJWWFVYdmVIdFlLRzVvOHhZSHY3TkYvR3Fr?=
 =?utf-8?B?SzlzbDhHbU1uOVQxZTduWU5zZmVTek5EMEpYekdqclF0cEg1bmNXTmtCV0FV?=
 =?utf-8?B?dno1dlJaZ3YrOEZvTEVQelptbFI5RUpZblhLSThMRXNXckt1ODV1NnJHb0lS?=
 =?utf-8?B?ampBTjNNUSt3aSt2V2taZEpnWjhXdUY1amtHbk4zMXROMkl6cWJ5aHlialFG?=
 =?utf-8?B?TENKU3VCa0o3WVBBd055cjB4Nmt5d3lYbWZvWS82c0dDM0NiMkV3TEt2KzRn?=
 =?utf-8?B?Z1NTK0Nwb0ZKVmdzQ1RFbG1HbzVremNxYU5ZM2RBWnNJUmg4dnAxSFJhTW9F?=
 =?utf-8?B?OTBXOVhUT1hoQzZkeXBBcjNaclBlbVVOQnVvTlRZNW5XMVVLbHdycjZNNjEx?=
 =?utf-8?B?OGxxMUswbGNZVDM3TUpJYk41VUhUSCs5S2lqQnlhbkxDYWtkcVVuMWlIOVBh?=
 =?utf-8?B?RmR6MUpJZXpJR3FjOUZVb2J4VHlVWVFPRG5PL2d3RzlCQW1nWWQzaG1FU2JW?=
 =?utf-8?B?REN3STZpUERXR2ozTE1VZ0tGcWZ2dnY2MHcvMmw2QkdYUHJmenJHUlZtNmpC?=
 =?utf-8?B?NldBOE1KYmRtOXNicTA0bGhZdDgvdDgzM3dUQ1k0MDdkNG81VDlvVEo1ZTc3?=
 =?utf-8?B?MFlRMlNYRmVwellvSkVZTTJPYkxHN0lmWk8wUXJlRzM1MXRiSTc4RERIMllr?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87770f69-1335-42fe-1fd8-08db52e78403
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 12:50:51.1439 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /GE61KN0UnlU98GPTmDaKVVu2lbfuaal0BD5hkR/anfzTTB/RjafdiTbZvY9qYOvyd7ozGp7niqc1GZ37FRWhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/irq: convert
 gen8_de_irq_handler() to void
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-05-12 07:23:08)
>The return value is not used for anything.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/i915_irq.c | 12 +-----------
> 1 file changed, 1 insertion(+), 11 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 02b6cbb832e9..64cc52538206 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -2124,10 +2124,8 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i=
915_private *i915, u32 *pch_i
>                 intel_de_write(i915, PICAINTERRUPT_IER, pica_ier);
> }
>=20
>-static irqreturn_t
>-gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>+static void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 ma=
ster_ctl)
> {
>-        irqreturn_t ret =3D IRQ_NONE;
>         u32 iir;
>         enum pipe pipe;
>=20
>@@ -2137,7 +2135,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pri=
v, u32 master_ctl)
>                 iir =3D intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC=
_IIR);
>                 if (iir) {
>                         intel_uncore_write(&dev_priv->uncore, GEN8_DE_MIS=
C_IIR, iir);
>-                        ret =3D IRQ_HANDLED;
>                         gen8_de_misc_irq_handler(dev_priv, iir);
>                 } else {
>                         drm_err_ratelimited(&dev_priv->drm,
>@@ -2149,7 +2146,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pri=
v, u32 master_ctl)
>                 iir =3D intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD=
_IIR);
>                 if (iir) {
>                         intel_uncore_write(&dev_priv->uncore, GEN11_DE_HP=
D_IIR, iir);
>-                        ret =3D IRQ_HANDLED;
>                         gen11_hpd_irq_handler(dev_priv, iir);
>                 } else {
>                         drm_err_ratelimited(&dev_priv->drm,
>@@ -2163,7 +2159,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pri=
v, u32 master_ctl)
>                         bool found =3D false;
>=20
>                         intel_uncore_write(&dev_priv->uncore, GEN8_DE_POR=
T_IIR, iir);
>-                        ret =3D IRQ_HANDLED;
>=20
>                         if (iir & gen8_de_port_aux_mask(dev_priv)) {
>                                 intel_dp_aux_irq_handler(dev_priv);
>@@ -2223,7 +2218,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pri=
v, u32 master_ctl)
>                         continue;
>                 }
>=20
>-                ret =3D IRQ_HANDLED;
>                 intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pi=
pe), iir);
>=20
>                 if (iir & GEN8_PIPE_VBLANK)
>@@ -2257,8 +2251,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pri=
v, u32 master_ctl)
>                  */
>                 gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
>                 if (iir) {
>-                        ret =3D IRQ_HANDLED;
>-
>                         if (pica_iir)
>                                 xelpdp_pica_irq_handler(dev_priv, pica_ii=
r);
>=20
>@@ -2277,8 +2269,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pri=
v, u32 master_ctl)
>                                 "The master control interrupt lied (SDE)!=
\n");
>                 }
>         }
>-
>-        return ret;
> }
>=20
> static inline u32 gen8_master_intr_disable(void __iomem * const regs)
>--=20
>2.39.2
>
