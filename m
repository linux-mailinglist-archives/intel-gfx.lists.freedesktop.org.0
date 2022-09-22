Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DD15E654E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 16:27:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2C410EB81;
	Thu, 22 Sep 2022 14:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91D3D10EB82
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 14:27:14 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28MDlI7u020634;
 Thu, 22 Sep 2022 14:27:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2022-7-12;
 bh=waHBpvWmIhXBpX00nh4QHrsdg+LdDv9K2Z0TKQMWBYE=;
 b=uNwU8Aq6TZMN70+Yr2CZxv8ERIIXRYgZgAj6+tM9eDGN2+ICro92nriCXY/ztKg+Does
 ircwIz0U1X/DtzVDXCofdZxEkDA3ZQScuHgroJqdVh13ACkCrJYwVdEgd/OXWKqmmj+G
 zd6mqXcStvJTJBw5V7loE5OyMJ5HSh2VS4yv5PWetsGnV8gpdmJBammSBC47Dpc7IDKd
 FpGzHtQrh2oP1G0H61jNlr3X9BJ0JFotGTSouC5schI3ZsJQvF/OoHwSCoRNX6SL46r2
 n/q8WhCYKCNEmvPvSTZSpLq4vTj4rniQbYVZSE/M94/2p7b0PGxSCwtYjJekUi1cQzgG FQ== 
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3jn68mdq9v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Sep 2022 14:27:03 +0000
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5)
 with ESMTP id 28MEAEMq001773; Thu, 22 Sep 2022 14:27:03 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2176.outbound.protection.outlook.com [104.47.56.176])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3jp39suu2h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Sep 2022 14:27:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kNrojPAzuuFwT7fLQQNQNvmezV8eqYjqMe0+1soQZ9hVynn7IFRxXrXcKdB0HLqClDOomWqcdfLQHlvRtaZSdn3RbEQ/gY7ah9x/RzydIyJPj8PbHkASceCzCY5MRsJG6XciBjABXckJqbch4tNmlzngRaZarS/DqMozmS8EWNj5sq40uvq4AmTA5eXBdSpdd/Kz3xsLUpUGyBXW/QOhraf32iIVKps+jl26Dm2TiX+X6EKHgo/Lbgr0gRtSmg9LdK1ZdiiYdiTQZPwR1RIhRNbbJ7ryLy+5YpWufcUj7z+OA6cZS65q4dinDTvwGaivCcN0jN9DuaBjb/SNFr5TOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=waHBpvWmIhXBpX00nh4QHrsdg+LdDv9K2Z0TKQMWBYE=;
 b=HUPx2jSSHY482IDlS48MGDg30itCwgXx61t98wDOo5YO5Bgm2XUnDzJkHDOsPFm8aPBc7KrPMYWxbu1rXuKrZh7CM5R3yrWa6P+RG3l50UizAeV9Kp8btcnINTJAIrh/2ISNi4R3ONNMXYdZnnOssqHZIxcWeVgNl92nBISfOBz2ezi+nbJ4scfgaBSCM+E1lK9RHJycwsut0LrUOREFHuG7WFjc2djQR3N0JVkbul1+FCzCJuuOtlVnSE/Ju7OfHc9ec+ShBTJXXIHrRS7v997ZuPuGWxMjFVFbidtrGgWdzApnlMFiK7LcrnBsDl7vwMv/Y3/1Uzh2aso2sMskWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=waHBpvWmIhXBpX00nh4QHrsdg+LdDv9K2Z0TKQMWBYE=;
 b=SpbQS0Ka7EVQMOwxDhZoTPuCYYNub4NzfQSdznbW6GGAmDgcKJVh7QXuEWT+emk7Ms1vS/01AFD47083ym4prRY/e7NdFackNl6SIllR5oWpG+shoXuZPFmBBc2IupaWAnwN0/JSa6bUF9/Q4IdxrNDi34QGSQuxVfIt9LiErzM=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CH3PR10MB6690.namprd10.prod.outlook.com
 (2603:10b6:610:143::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Thu, 22 Sep
 2022 14:27:00 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::a493:38d9:86ee:73d6]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::a493:38d9:86ee:73d6%6]) with mapi id 15.20.5654.019; Thu, 22 Sep 2022
 14:27:00 +0000
Date: Thu, 22 Sep 2022 17:26:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: matthew.brost@intel.com
Message-ID: <Yyxwn4XN6tnD1E6Z@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-ClientProxiedBy: ZR0P278CA0128.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::7) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2365:EE_|CH3PR10MB6690:EE_
X-MS-Office365-Filtering-Correlation-Id: eb295e88-506a-48ef-3a40-08da9ca68243
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pUBIyrz2jgOW93qXMxWEF/1UZVEZYIle5gPqGJbAGusIRIKP+md/cZuEe9TI7ap7LV/3jTsBo1MXS+OHajDDiYJXvHZ8lNuImA0CQaefVZ5kDSxBDfXHT7zF8xr2v97S6i9uvHWEn/RsAzq4IU+fqC078FBBuUZn8l4jfn0RQblryzO3TAXstcd8XWXj5TvmyYZ5JMaI8RHNhncPgaWFpGILUYrBKlDwPhoICQNU4eYHKW91PeetBc3u8DyTSSAEDwOtDKaD5TGJ1D3ooBdfvzPLNc0MyQZkDc50EN616Jk0S8RketBPhi2PaRQ8mCPXt91TPF5EC0yfmiKG64XPaHxBGecP7kyYALB1+KRGxy2jN0Pz1FTf/NZPYcXu9SvLt3bmW5I/tf74aE6rt15RxRhB/OKiGK5Hw9VtrT7BFMtynni2QXZ4eWf13upsR5R4GvXqFcVdRHg/A7vULtSGWqsG11dAfKPAdSzCh3huVr0amIB55UwczFLj+KqV9UdGkGx7xLI4JXKcC0ZoTAXm+aqUW+7FMLmt452aFd1gGR1WLfeAld/gzrpB634r7lga7euTbDQU2DakvRJh8Ma8LPfqUvO1b5iy2G49+dWVEdWvDnsAPTopKJtTioeku5OBENvzagJ2d2eRQQQQlO9Cq7Xihm2RUScJ/7v8PY6NXGwsE+RONQuquJkDhXRvGWuo6G7hwpNPGXa3+nl9Q0JXFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199015)(478600001)(4326008)(66946007)(66476007)(6666004)(66556008)(6506007)(83380400001)(186003)(5660300002)(44832011)(6512007)(9686003)(41300700001)(26005)(86362001)(8936002)(6916009)(38100700002)(33716001)(8676002)(6486002)(316002)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pQeMcsKc3glEtoJGdqXGd7HqTtlA5VumcM8PV1nLRTX+olz9u1rA4Yw+krWn?=
 =?us-ascii?Q?sgqhfdit2d2DI7neFl8g6649JdAj6gtwcrrW7zLAavy7SGH0/IKUZaietZKj?=
 =?us-ascii?Q?aF1xIzoguWw8fT2lOPHs7zIH3b0a/0d4y1cKjJcZZbqfombhzaqMV2pTU0G9?=
 =?us-ascii?Q?NDmYE0qOu74epxAGfxAgHAJZy8iYRfiwXIczTH482Evx7ngK910aefYlJUuk?=
 =?us-ascii?Q?UIi9DA65yJkNqeL7XMVE11lfXnlzoWOWkkr8NCAMUnp9uhAHY8QVioMJVOGd?=
 =?us-ascii?Q?VAUxs4Sn/mHZdMp6Sz5iIg9DFWND+rGXJsXX+ckyE+2An1N9Pq1tfuS4qCRG?=
 =?us-ascii?Q?cgSYTn2dRQF/qP1IXI+y6IFsqOvgA5reqYLZrvpYzk3TTY2kWa0bprjW+P1+?=
 =?us-ascii?Q?EGOrlkWwwqz6eXr3tz5WJlpkwwtgfmkutvvH/nWQuwE+VD26mDYJqwc2VefF?=
 =?us-ascii?Q?gZdvkPwOAO15WmcVuZ/kMyP6qgi7ndwNNHDOhlGSa9ClnAVArKjiiwMsetzt?=
 =?us-ascii?Q?5XEjL9eniXcquDvWook2q4VrSvDrP2NXft8Q+dWwqr2is2JZpq/vlAOivgWj?=
 =?us-ascii?Q?Ng/3A55FuB70RboFxSrPWlwy2kfBepp0crc0VBrLQuGwP+yrPVLlmjBabVoJ?=
 =?us-ascii?Q?QVLag+mQSJ3B0KSEFIcsj2MuK1fEhjJNiGNa+0vNkEbdV1SVGyRROhpav7tr?=
 =?us-ascii?Q?px/BPxv79jSY82h+Qelpt+ulVWsd+SBSvOwBt0rE3siPklCu8tOxZTOYt2tW?=
 =?us-ascii?Q?+c3IDiYJLxP/qJYIGQXbYjzfiYV6wyXZeUuiwXLRdh4q4ZqifIJZ8Ig0jNWW?=
 =?us-ascii?Q?gcwOAtHejeU9JE53KgQBXkn5f9l7dmMySakV8Fiky2WHBAt8VnM8oJsV+yER?=
 =?us-ascii?Q?ibSinv45vvC4DyQmP0VYa78tc3quC35Nsmvb5T3ER8AlQRt8/Wje5XiYCeM/?=
 =?us-ascii?Q?qSwlGMn4IADgMF8t2KrcklAArwVGe+b34wbJPX6j9JIJKb3+MBP2mjk1lFHF?=
 =?us-ascii?Q?WjfSxlyF7gaHZMaxJ4vuauyYcYRgRWpPTG2Uf+p3uK84A0Q3Qf8r76v6EfoA?=
 =?us-ascii?Q?2Sd06XOVSaQXvc256iz+/GshYbFNJZBULBbBErx3IQjNwsGfZMSWoH+lHn/A?=
 =?us-ascii?Q?hqiUCCxuRCqmRtSIMh6nGXit58lcl5aoai9Xpd3CiOsybP+/Qct08lKn8TZD?=
 =?us-ascii?Q?TO/FaPnICHkPZ0XMR/sOzahwWImjhpcV0TXz8m5LRYnTerzzG8XPwKvwRsWk?=
 =?us-ascii?Q?A9vodbCFpGBItMZPKVJyhr2eGjN9lUtJVPkhbD0a1p7hoYm3Ih/SR902sU1v?=
 =?us-ascii?Q?BAEesJjGZpSCjIwDSKmP5pLPrczO4linUfmvPxz7iUln6rioCh7rLCmQtLur?=
 =?us-ascii?Q?FuvQ/bwxqsHub5uAFKMMveErfkjNAsCBd7iy2JDWwigS2Ey8BXOx2PcptMY6?=
 =?us-ascii?Q?BLnFWEgV6D01NF6ozBahCfgMTt3JKxRpKFP/cTmakQ8cj82qYAL8EOQU6IT5?=
 =?us-ascii?Q?MJzxRbBabZ7tJtW5lGZNoGMlQhhSq9aqigp2AK+ektJMO7Mv6ei93cd3fcDD?=
 =?us-ascii?Q?YtN46UF8pDd1bHaJ6NGt3xQsfkZVKP3X1Ce266RB?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb295e88-506a-48ef-3a40-08da9ca68243
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 14:27:00.2949 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Eni7n+5cNdWOU995PRkMXszgubQo9XbX1Ev7xArtf0CZXNXhbjlX1Pu7u8LWPZSF4sfggYm1n9H2RqrpC6RKWGYXznHk+vAFS0mAYbuV5Bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB6690
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-22_08,2022-09-22_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=920
 adultscore=0
 phishscore=0 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209220095
X-Proofpoint-ORIG-GUID: CRkUvHTrKS-m1nr6K9OwPe8h_dZJ9xyN
X-Proofpoint-GUID: CRkUvHTrKS-m1nr6K9OwPe8h_dZJ9xyN
Subject: [Intel-gfx] [bug report] drm/i915/guc: Implement multi-lrc
 submission
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

Hello Matthew Brost,

The patch 6b540bf6f143: "drm/i915/guc: Implement multi-lrc
submission" from Oct 14, 2021, leads to the following Smatch static
checker warning:

	drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:752 __guc_add_request()
	warn: refcount leak 'ce->ref.refcount.refs.counter': lines='752'

drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
    672 static int __guc_add_request(struct intel_guc *guc, struct i915_request *rq)
    673 {
    674         int err = 0;
    675         struct intel_context *ce = request_to_scheduling_context(rq);
    676         u32 action[3];
    677         int len = 0;
    678         u32 g2h_len_dw = 0;
    679         bool enabled;
    680 
    681         lockdep_assert_held(&rq->engine->sched_engine->lock);
    682 
    683         /*
    684          * Corner case where requests were sitting in the priority list or a
    685          * request resubmitted after the context was banned.
    686          */
    687         if (unlikely(intel_context_is_banned(ce))) {
    688                 i915_request_put(i915_request_mark_eio(rq));
    689                 intel_engine_signal_breadcrumbs(ce->engine);
    690                 return 0;
    691         }
    692 
    693         GEM_BUG_ON(!atomic_read(&ce->guc_id.ref));
    694         GEM_BUG_ON(context_guc_id_invalid(ce));
    695 
    696         if (context_policy_required(ce)) {
    697                 err = guc_context_policy_init_v70(ce, false);
    698                 if (err)
    699                         return err;
    700         }
    701 
    702         spin_lock(&ce->guc_state.lock);
    703 
    704         /*
    705          * The request / context will be run on the hardware when scheduling
    706          * gets enabled in the unblock. For multi-lrc we still submit the
    707          * context to move the LRC tails.
    708          */
    709         if (unlikely(context_blocked(ce) && !intel_context_is_parent(ce)))
    710                 goto out;
    711 
    712         enabled = context_enabled(ce) || context_blocked(ce);
    713 
    714         if (!enabled) {
    715                 action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET;
    716                 action[len++] = ce->guc_id.id;
    717                 action[len++] = GUC_CONTEXT_ENABLE;
    718                 set_context_pending_enable(ce);
    719                 intel_context_get(ce);
    720                 g2h_len_dw = G2H_LEN_DW_SCHED_CONTEXT_MODE_SET;
    721         } else {
    722                 action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT;
    723                 action[len++] = ce->guc_id.id;
    724         }
    725 
    726         err = intel_guc_send_nb(guc, action, len, g2h_len_dw);
    727         if (!enabled && !err) {
    728                 trace_intel_context_sched_enable(ce);
    729                 atomic_inc(&guc->outstanding_submission_g2h);
    730                 set_context_enabled(ce);
    731 
    732                 /*
    733                  * Without multi-lrc KMD does the submission step (moving the
    734                  * lrc tail) so enabling scheduling is sufficient to submit the
    735                  * context. This isn't the case in multi-lrc submission as the
    736                  * GuC needs to move the tails, hence the need for another H2G
    737                  * to submit a multi-lrc context after enabling scheduling.
    738                  */
    739                 if (intel_context_is_parent(ce)) {
    740                         action[0] = INTEL_GUC_ACTION_SCHED_CONTEXT;
    741                         err = intel_guc_send_nb(guc, action, len - 1, 0);

Should this have a something like:

				if (err)
					intel_context_put(ce);

    742                 }
    743         } else if (!enabled) {
    744                 clr_context_pending_enable(ce);
    745                 intel_context_put(ce);
    746         }
    747         if (likely(!err))
    748                 trace_i915_request_guc_submit(rq);
    749 
    750 out:
    751         spin_unlock(&ce->guc_state.lock);
--> 752         return err;
    753 }

regards,
dan carpenter
