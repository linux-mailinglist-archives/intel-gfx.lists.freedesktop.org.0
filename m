Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OqOJPRtlGkEDwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 14:32:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C5614C9DE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 14:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2666810E4D5;
	Tue, 17 Feb 2026 13:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 421 seconds by postgrey-1.36 at gabe;
 Sat, 14 Feb 2026 08:57:01 UTC
Received: from mail.unwrap.rs (mail.unwrap.rs [172.232.15.166])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EF8010E23C
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Feb 2026 08:57:01 +0000 (UTC)
From: Cole Leavitt <cole@unwrap.rs>
To: arun.r.murthy@intel.com
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@intel.com, Cole Leavitt <cole@unwrap.rs>
Subject: Re: [PATCH v2 1/2] drm/i915/cx0_phy_regs: Include SoC and OS
 turnaround time
Date: Sat, 14 Feb 2026 01:48:04 -0700
Message-ID: <20260214084804.7563-1-cole@unwrap.rs>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260212-timeout-v2-1-74bccad5018d@intel.com>
References: <20260212-timeout-v2-1-74bccad5018d@intel.com>
Content-Type: text/plain; charset=UTF-8
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 17 Feb 2026 13:32:31 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.39 / 15.00];
	DMARC_POLICY_REJECT(2.00)[unwrap.rs : SPF not aligned (strict), No valid DKIM,reject];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[76];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:arun.r.murthy@intel.com,m:suraj.kandpal@intel.com,m:jani.nikula@intel.com,m:cole@unwrap.rs,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[cole@unwrap.rs,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[cole@unwrap.rs,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,unwrap.rs:mid,unwrap.rs:email]
X-Rspamd-Queue-Id: 30C5614C9DE
X-Rspamd-Action: no action

On Wed, 12 Feb 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The port refclk enable timeout and the soc ready timeout value mentioned
> in the spec is the PHY timings and doesn't include the turnaround time
> from the SoC or OS. So add an overhead timeout value on top of the
> recommended timeouts from the PHY spec.

Hi Arun,

Thanks for the fix. I wanted to flag that I independently identified
this exact issue and posted a detailed root cause analysis on the i915
GitLab tracker five days before this patch series.

On February 7, 2026, I filed the analysis on GitLab issue #14713:

  https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14713#note_2739573

That comment includes the following findings, which directly correspond
to what this patch addresses:

1. Traced the error to intel_cx0_phy_lane_reset() in intel_cx0_phy.c
   (line ~2911), where the driver writes the PCLK_REFCLK_REQUEST bit to
   XELPDP_PORT_CLOCK_CTL and polls for PCLK_REFCLK_ACK with a timeout
   of XELPDP_REFCLK_ENABLE_TIMEOUT_US = 1 (1 us).

2. Identified that this calls __intel_wait_for_register() with
   fast_timeout_us=1 and slow_timeout_ms=0 -- a single spin-poll with
   no slow-path fallback.

3. Compared the 1 us refclk timeout against other timeouts in the same
   PHY init sequence:

     XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US  = 100 us
     XELPDP_PORT_RESET_START_TIMEOUT_US     =   5 us
     XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US      = 3200 us
     XELPDP_PORT_RESET_END_TIMEOUT_MS       =  15 ms

   The 1 us value is an outlier by 1-3 orders of magnitude compared to
   every other timeout in the same code path.

4. Recommended increasing XELPDP_REFCLK_ENABLE_TIMEOUT_US to ~100 us
   or adding a slow-path ms fallback, consistent with how other waits
   in the same function are structured.

This analysis was performed on a Lenovo ThinkPad P16 Gen 3 with an
Arrow Lake-S Core Ultra 9 275HX (device ID 7d67) running kernel
6.19.0-rc8. The PHY A refclk failure reproduced on every boot at ~8.5s
after i915 init, during the eDP panel probe path.

Your patch does the right thing -- increasing the timeout values and
adding SoC/OS overhead. Since my analysis identified the root cause and
recommended the same fix direction, I'd appreciate attribution:

Reported-by: Cole Leavitt <cole@unwrap.rs>

Thanks,
Cole
