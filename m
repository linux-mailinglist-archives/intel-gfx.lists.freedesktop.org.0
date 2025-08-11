Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E1BB2011F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 10:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4F8810E3A1;
	Mon, 11 Aug 2025 08:02:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FXy74pLH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A912A10E3A1;
 Mon, 11 Aug 2025 08:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754899331; x=1786435331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=91oc9byqw3UB6TyRMeGe+PaUBQT9MWaoQK+oa+Vn3+Y=;
 b=FXy74pLHnhdthEKF1Bi9iSq9nhOqmFFLYuvVgBuXwUdkcpMz/TX8TT7D
 4SoqbitvmMhOcim4wbsmKYW17Th6eTi9x+6bc3ZEYABFmO51Wa+wfV0zZ
 yE6geIkL3xLFiSckbOrDLJ9L436PCSwNd8Bap6YzEt5ER5kSipzjEBTrM
 n8J9RX40Zf0MpzHOe8o6cQGnQG80nX0W2fw5lvDLbAgYL90Zj/UdbCHWF
 O6q/vnn89cnmM/NL8xabnEduQ9utfEzE76ZvkK1mlnENx3RTqvQqs+I86
 A5QG05guDQFWYh9tDe60dA+CWOo/dTM8Zbgcv9lIyAwgZ1gXInKH2rVnY g==;
X-CSE-ConnectionGUID: EVlxLiXIRve3wyDEJ/XkcA==
X-CSE-MsgGUID: oK9VzjRgQkCk0UcAGIV7nw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="44730358"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="44730358"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:11 -0700
X-CSE-ConnectionGUID: KHOGXKJmQgW9BjFVLacLQQ==
X-CSE-MsgGUID: I5JsnV/FSyq9wVuB1SC0JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="165060302"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:02:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 01:02:11 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.44) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:02:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w0lexzPhZtaCE/doEoeqyOPIfVoFW1j5JREfsWEBhFTv53NJCBgjaS67Q7O8A20npjv96htVif/mABmZGFJKXdv4M8ByCE/hjVZaxeMpTdDe5UAEf3DbV9hM290s0PqIf7pDS/uTApk42lxvZWJLdtMF20H9aiHI1r7hIlnhOp0FDn9TvWtkC6EvnvGUkoP4iZFMz3zWiFWwbluwz7OIegdsHwb8Cu1q3HHSzt6UqBYrZq6omvkwOHP/9j9bWv2Gv5PG32uy7lUaPcbb66BPgQ9CgIg1TShlY8Q6wLnoOoci8if2MFA2BRw8fBdeoIHenOgBOa+eYQH/EiWsbVp/yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H/GQsg/JpOn7dcWjvgT47AcOd1tSU4pjG5bsRODPowI=;
 b=gkQRCqNqtqlvJBo+9qNFFi7h2b1x7qKKGmombsyJ3k0fXYsBslKvbKQ6C1VqBaZVynUTQKheNKsigfFjLPrwfhQUX7qmfWjCdXyVMh2hMEK1eNjnGr7TMhuyop2qrOraumrVwZTzK0OS+1VEht/iErbMdBCQEKV+PkFnLBejdWeQ+iTxWNd9PkAvOqUQ5ueCPbmdHT23ebSRwYQ33GDaWpuqzNVRpf6T+C2Nv4/fILABsZ7+FfVfZCMFLm8Zkv2HRzAbuoXrGdbAo5OQQd/LoqaUIgnC8mS3hAVHCTElNgXpcw266WSc/NNSf+gKS/NNuj2iKliBDUmvHLO/+bNzxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 08:02:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 08:02:09 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: [CI 5/5] drm/i915/icl+/tc: Convert AUX powered WARN to a debug message
Date: Mon, 11 Aug 2025 11:01:52 +0300
Message-ID: <20250811080152.906216-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250811080152.906216-1-imre.deak@intel.com>
References: <20250811080152.906216-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0223.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB6557:EE_
X-MS-Office365-Filtering-Correlation-Id: dbfdc2fa-0ad8-4ac4-82b0-08ddd8ad5eb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ifEknaD7sa8kuh1AjIu9XDyKoRCaqllcHTOquEXJfaPa1mjuFbEzeNN9NLbv?=
 =?us-ascii?Q?gMrXNNw1aV7STe84qAhSa+DkJaqKOGpdgtQuHwB0liZvu/fqhY1lgK3gSKgE?=
 =?us-ascii?Q?tBmbx9PWvfXuskywJvcZ6W488fzN0sG44fjTY056szt77OIKrUmScWWc4rjf?=
 =?us-ascii?Q?dL0DXb7PKog7LG8PRpw4j1CORIk/eLDPOMxlFg1rkKGdFqN7WysHMApEBG3u?=
 =?us-ascii?Q?Hzasy3KKGbaIG7yRjP+XCiuLWlOAYqaPc2caFmmLtW4Fl1VHg5dBYKpVNMZz?=
 =?us-ascii?Q?FmYvqYzgupdDvWxGFTjBGnusci9K+K62o2PMhuO9Yyo1C39R6sjpreRyFIf8?=
 =?us-ascii?Q?ROrKgDyQfLLC2aIBM1FpABfLCpGl98e5fG3uC/GRIcdPCh/94mVjvpEm8pbL?=
 =?us-ascii?Q?3HYbN1abfG4Kovr8eCnTBJQJ22eQnBpwnJ4Z2++Up9zCDE4srMTnyajX20ru?=
 =?us-ascii?Q?3GgLamUckjap92ju02OAgRMx87P/45rYXfmQDUT5X/4qDdOFPisW3nxMbWCC?=
 =?us-ascii?Q?0nzK4oOeRNKtCJa83b/S5ciqslx0g8tyrg4A7JN1C6rHtI+Sqa1LRASFQr2A?=
 =?us-ascii?Q?BcDZT8tXXceNcfDs4n4y3+xVjlLXv6zlws1A7NYO828Am5SMHUScRhAWkF64?=
 =?us-ascii?Q?xFSfd4Pmy8ZGmmvItT6mOEhMeWxDbeKmyOZKmNWSW/V5usC/nHG6CdC8oyIZ?=
 =?us-ascii?Q?9z+kdJ8dgCT5+8HEJuIJwMkfJaxQe6zggrR+zF4RIgVizdInM8MvnG08XDnX?=
 =?us-ascii?Q?lVNFD46VhqxMPGQYRI+Ob/7UHA6I8IiswLFNGRS21VweudkEL68ZKH0mazlA?=
 =?us-ascii?Q?79VE2/wyIesFngrgfKWXOKatEOVCRcwj/duLii/4BYy0S/lurgou4eLKLf3G?=
 =?us-ascii?Q?Em2qe9diJhgK/5jmJqxUeWL7PZDLNy4V8gDuHl7KLiqtVaqxH2DAdTq4M5EI?=
 =?us-ascii?Q?V+poowpghOmeHVeWFdc1XXAUwcD8IgdEeZEiL4+i0mWCSpqXyX4XUh4ovmcc?=
 =?us-ascii?Q?L/vn3uzbRJsikAHfNW2MYEIirxGcrMyyxTRlBuGHNo0GpJdU/zcYCJ8I3Llm?=
 =?us-ascii?Q?bVQibaQvy74bwvVBPjuCbYjrHtRAeQEF9yrhGvayckEGLVKcA75janc04c3O?=
 =?us-ascii?Q?KbtW0cyEQYU/MlxsIcZCxHt2R763XwVox2BBsHwvbvFWYFz1LWOM5XSwTISK?=
 =?us-ascii?Q?O7RWDNGIPYmR3iKdfku6Vxl1GtHrniRw+nnwXXXyvK5etb1o166wQXDCzRzL?=
 =?us-ascii?Q?+4u5s5Fc1sx8/RBEv+DHBNbJeyzyPTEF56irrwZdb13rtRHIUjPUhgLoP4Pb?=
 =?us-ascii?Q?TcFakxnHpHgrVrumw0vyUQMy3een53jaIJNsXjZsNiocR/fJcu614h7YezxL?=
 =?us-ascii?Q?fIXr0oqUYt2kwQSvacfkmKjyobNiNMPbF1czsTV+MiBSW9T09A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dmUmqpp5/GgZeR/QpnIQ2RuZJdd3UktOU2Sm0xsgIfZ5N1VzXqfKnSqojcc2?=
 =?us-ascii?Q?lKG9BalDyKhlVJ78Frml4yhII/dRCeCnyeDVwb/w5yvjAmEOt5x/mNjkhhcI?=
 =?us-ascii?Q?A0/rfCpDemrc+RoTdbGpZm8d3ycnvB50/OzzZYY2dxeDXMItm+gZOwaRyUbE?=
 =?us-ascii?Q?T7gjRt+xMlJt2Qdvgc2RRuzdEZsWGPBznYIu2AgAzdLPNR/S5PjO3rJ3dtgR?=
 =?us-ascii?Q?zT3lE4YZY15+N7jdOIu5aJrKvulsSJOO0jn/0LrBVrNNOwm4wE57jyvS+MoM?=
 =?us-ascii?Q?PD/5+RJoa9swo4+5E8OQT5cxI9qL1gBA5W+OTrqId+PcQ/09ZBYXnZP88lb7?=
 =?us-ascii?Q?A2VWzo7O0FTo+fNaAyDsl3ocMwQlSjJRRdWNL4H8yJm0Ht3aMPFAbTR6lhjf?=
 =?us-ascii?Q?V12Hn3Cm5Fca/miXRMQVVweRz+qJrF0Q211tKwxnMKkrbRxzTW7QOSnUQKVx?=
 =?us-ascii?Q?2LIPk/LW9fA8lNHEL4BZgirc/8+a8zMp9vASshsb0F0gQhzwTih55v8Vyfx1?=
 =?us-ascii?Q?csxj+TZDcFfZ5EclgMzJRQADWdB4EMYKKDdCW607f2vvcO6iz/z+/TmQm69P?=
 =?us-ascii?Q?dUYenL22D397DrXmKLkZKxALLPWNRzU5WXHPL9i11sdZ+FtVXedJGQsJZ1cf?=
 =?us-ascii?Q?B2AhfuyDl8YFC832hRBcCJYMQoJVc6wSmTrGKdKc1b3EMNiHtuuNPf4sZarC?=
 =?us-ascii?Q?YumJHW6TZJUj/P63v6oesaZ+F6NpfjsRZo2+TZjpPfrVsvG1EGa9iKIVIyD7?=
 =?us-ascii?Q?pc/uMSPc2QMvn724dKFYdPEWeWlPFg9bdEMiTjPwC5FNCHHXpUlzULpzlJQ3?=
 =?us-ascii?Q?RIsAZkkW4dpATsII3qArXVnpw9zregUT309vU7Itkgb558eQySN5329h6UyK?=
 =?us-ascii?Q?0P7EEMyF/ipCkqdL4I1s0RPMaG2+/vq7FDiDpCL61xXH+n4aFFaiBYZY6IT1?=
 =?us-ascii?Q?J/mUCPzTFL9RBKTvH3mCtuxWNjm9iFgdbRvWumjSQh8kmrtlHhtkAO02r7f0?=
 =?us-ascii?Q?nnzpzUGUpLVQjdSqH00Jdc+LwGJdDv/RshoOaRDPWV/0JLkTYK1ts+1xyO+M?=
 =?us-ascii?Q?NDhGtux0cHmx0kpVb2qvcUHjUyHf5stYx09j7Ekc26JMSybwYIfBwFLH3TiS?=
 =?us-ascii?Q?Z2UWkS0VfGEvtFTcQqxtmxHjNfzI6scAwgJe/WW87OwByJBfjtdXhhAmmrmU?=
 =?us-ascii?Q?nhPlX9A7SmYVK6OyaRxhXYY6l4Q7gzcJG3wgpP5qcGNus1dq+3h3sFnykUmC?=
 =?us-ascii?Q?VlXeVU0K3piGo8Z6RjCBOrW9v4IwRoafwxt5pHyeCa1ZpqJeHTz0TDkZGFvc?=
 =?us-ascii?Q?opCcdbO1CXHiQ4sVZPTZFdTcVIsnq1yUBIicUmila020PAzmF0OlQDf6b4TM?=
 =?us-ascii?Q?k61T9p/v/WujtSJexR3bmEDVkX012qeey43Au7lS9hMzBLGxWMxav9e1Tn8L?=
 =?us-ascii?Q?jMSVsRe6jinfV7FUH127gnvWitbdQbz45I91mCODXEQNvavSorPBZdNbS1pu?=
 =?us-ascii?Q?4wG/j0NFIFsODu51BzL3trRZGM+H6cR/NEFaAQB6rT6ziuTFy4t+rWDZL2Q2?=
 =?us-ascii?Q?Qn+fm9X+1xmht9BKajYiqYjRYB5R93Jd6k9tuw07f5Fc+pEqW3/MV47IXvkx?=
 =?us-ascii?Q?mIucfP5SMGUgJuZSUAlEgoOkt/Z/+GRg+bchds70u1Be?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbfdc2fa-0ad8-4ac4-82b0-08ddd8ad5eb8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 08:02:09.1776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oiI1fKqloBQKEPWSQRW+GVcC1N1HvCGL9HhXmhqlgVoLVkVi44oFvMUH6iGQyMd1vnQtpjhtRLT4rUrzqP8sAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
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

The BIOS can leave the AUX power well enabled on an output, even if this
isn't required (on platforms where the AUX power is only needed for an
AUX access). This was observed at least on PTL. To avoid the WARN which
would be triggered by this during the HW readout, convert the WARN to a
debug message.

Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 8b6826fc06855..0ff5a8951e734 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1497,11 +1497,11 @@ static void intel_tc_port_reset_mode(struct intel_tc_port *tc,
 	intel_display_power_flush_work(display);
 	if (!intel_tc_cold_requires_aux_pw(dig_port)) {
 		enum intel_display_power_domain aux_domain;
-		bool aux_powered;
 
 		aux_domain = intel_aux_power_domain(dig_port);
-		aux_powered = intel_display_power_is_enabled(display, aux_domain);
-		drm_WARN_ON(display->drm, aux_powered);
+		if (intel_display_power_is_enabled(display, aux_domain))
+			drm_dbg_kms(display->drm, "Port %s: AUX unexpectedly powered\n",
+				    tc->port_name);
 	}
 
 	tc_phy_disconnect(tc);
-- 
2.49.1

