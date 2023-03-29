Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BE26CED33
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 17:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E496C10EB59;
	Wed, 29 Mar 2023 15:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A3810EB60
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680104612; x=1711640612;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BVB9ZUZDMEkIaHsBBryR0u00ONT7vXW8AvMj95bnq8g=;
 b=VisAxweG9J4JKRJ1PS+c3JcelrGMALenWFE6f1Uj3X79NhkR+pkPvchs
 yTZWv65/pzZOoSbc2FgJN4w0JH+9rJ4n74OFkrq1T49lSttSWmTvmupp8
 HlSUwsP7ROtCfEGAPS2DDcJe1IeDg5vcpxU97/aL9Fzomp6oFJs/gilEW
 ye/CVbfDSAu1JYkUY4OsITn2WWokdiBvW7NP2g2TsyVVXxynRyhKD9suy
 CeA+SFhk8yBUd7LGRAJ55ZVAFYCcXfiRoLJjuYQDGgOY9Yv014eM1ze7L
 z417l4LS00+0SGmHOpsKujNFrfF5DwvwCgkpHZNLB34wiAnLZIUJvIpe+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="343348504"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="343348504"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:40:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="714651148"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="714651148"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:40:43 -0700
Date: Wed, 29 Mar 2023 18:40:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZCRb90HL81lTTIms@ideak-desk.fi.intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-5-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230327123433.896216-5-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY
 message bus and pll programming
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 27, 2023 at 03:34:30PM +0300, Mika Kahola wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> XELPDP has C10 and C20 phys from Synopsys to drive displays. Each phy
> has a dedicated PIPE 5.2 Message bus for configuration. This message
> bus is used to configure the phy internal registers.
> 
> XELPDP has C10 phys to drive output to the EDP and the native output
> from the display engine. Add structures, programming hardware state
> readout logic. Port clock calculations are similar to DG2. Use the DG2
> formulae to calculate the port clock but use the relevant pll signals.
> Note: PHY lane 0 is always used for PLL programming.
> 
> Add sequences for C10 phy enable/disable phy lane reset,
> powerdown change sequence and phy lane programming.
> 
> Bspec: 64539, 64568, 64599, 65100, 65101, 65450, 65451, 67610, 67636
> 
> v2: Squash patches related to C10 phy message bus and pll
>     programming support (Jani)
>     Move register definitions to a new file i.e. intel_cx0_reg_defs.h (Jani)
>     Move macro definitions (Jani)
>     DP rates as separate patch (Jani)
>     Spin out xelpdp register definitions into a separate file (Jani)
>     Replace macro to select registers based on phy lane with
>     function calls (Jani)
>     Fix styling issues (Jani)
>     Call XELPDP_PORT_P2M_MSGBUS_STATUS() with port instead of phy (Lucas)
> v3: Move clear request flag into try-loop
> v4: On PHY idle change drm_err_once() as drm_dbg_kms() (Jani)
>     use __intel_de_wait_for_register() instead of __intel_wait_for_register
>     and uncomment intel_uncore.h (Jani)
>     Add DP-alt support for PHY lane programming (Khaled)
> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |    1 +
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1120 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   43 +
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   32 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   22 +-
>  .../drm/i915/display/intel_display_power.c    |    3 +-
>  .../i915/display/intel_display_power_well.c   |    2 +-
>  .../drm/i915/display/intel_display_types.h    |    6 +
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   20 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
>  .../drm/i915/display/intel_modeset_verify.c   |    2 +
>  drivers/gpu/drm/i915/i915_reg.h               |    5 +
>  drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
>  13 files changed, 1309 insertions(+), 6 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 057ef22fa9c6..57b1417792b4 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -298,6 +298,7 @@ i915-y += \
>  	display/icl_dsi.o \
>  	display/intel_backlight.o \
>  	display/intel_crt.o \
> +	display/intel_cx0_phy.o \
>  	display/intel_ddi.o \
>  	display/intel_ddi_buf_trans.o \
>  	display/intel_display_trace.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> new file mode 100644
> index 000000000000..ced8c8aa6c82
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -0,0 +1,1120 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#include "i915_reg.h"
> +#include "intel_cx0_phy.h"
> +#include "intel_cx0_phy_regs.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +#include "intel_dp.h"
> +#include "intel_panel.h"
> +#include "intel_tc.h"
> +
> +bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
> +{
> +	if (IS_METEORLAKE(dev_priv) && (phy < PHY_C))
> +		return true;
> +
> +	return false;
> +}
> +
> +static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, int lane)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +
> +	/* Bring the phy to idle. */
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane - 1),

For the above and every other place taking a lane mask parameter or
converting the lane mask to a lane:

I think the function parameter should be an 'u8 lane_mask' for clarity
and instead of open-coding the conversion should be done by a
lane_mask_to_lane() helper which also sanity checks lane_mask (that it's
either INTEL_CX0_LANE0 or INTEL_CX0_LANE1, but not both).


> +		       XELPDP_PORT_M2P_TRANSACTION_RESET);
> +
> +	/* Wait for Idle Clear. */
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane - 1),
> +				    XELPDP_PORT_M2P_TRANSACTION_RESET,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_dbg_kms(&i915->drm, "Failed to bring PHY %c to idle.\n", phy_name(phy));
> +		return;
> +	}
> +
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane - 1), ~0);

The above should write only the XELPDP_PORT_P2M_RESPONSE_READY and
XELPDP_PORT_P2M_ERROR_SET flags to get those cleared.

Could factor out a function for it since the same is also used later.

> +}
> +
> +static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port, int lane, u32 *val)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +
> +	if (__intel_de_wait_for_register(i915,
> +					 XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane - 1),

As above this function should take the 0-based lane value.

> +					 XELPDP_PORT_P2M_RESPONSE_READY,
> +					 XELPDP_PORT_P2M_RESPONSE_READY,
> +					 XELPDP_MSGBUS_TIMEOUT_FAST_US,
> +					 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n", phy_name(phy), *val);
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +
> +static int __intel_cx0_read(struct drm_i915_private *i915, enum port port,
> +			   int lane, u16 addr, u32 *val)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +	int ack;
> +
> +	/* Wait for pending transactions.*/
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane - 1),
> +				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
> +		intel_cx0_bus_reset(i915, port, lane);

Does bspec describe somewhere that this reset is needed?

> +		return -ETIMEDOUT;
> +	}
> +
> +	/* Issue the read command. */
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane - 1),
> +		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
> +		       XELPDP_PORT_M2P_COMMAND_READ |
> +		       XELPDP_PORT_M2P_ADDRESS(addr));
> +
> +	/* Wait for response ready. And read response.*/
> +	ack = intel_cx0_wait_for_ack(i915, port, lane, val);
> +	if (ack < 0) {
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return ack;
> +	}
> +
> +	/* Check for error. */
> +	if (*val & XELPDP_PORT_P2M_ERROR_SET) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during read command. Status: 0x%x\n", phy_name(phy), *val);
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return -EINVAL;
> +	}
> +
> +	/* Check for Read Ack. */
> +	if (REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, *val) !=
> +			  XELPDP_PORT_P2M_COMMAND_READ_ACK) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Not a Read response. MSGBUS Status: 0x%x.\n", phy_name(phy), *val);
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return -EINVAL;
> +	}
> +
> +	/* Clear Response Ready flag.*/
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane - 1), ~0);

Could use a helper for the above.

> +
> +	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, *val);
> +}
> +
> +static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
> +			 int lane, u16 addr)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +	int i, status = 0;
> +	u32 val;
> +
> +	for (i = 0; i < 3; i++) {

Please add a comment why this retries 3 times, doesn't seem to be
described by the spec.

> +		status = __intel_cx0_read(i915, port, lane, addr, &val);

val could be removed as it's not used, and remove the last param from
__intel_cx0_read() accordingly.

> +
> +		if (status >= 0)
> +			break;

Returning status here would simplify the code below.

> +	}
> +
> +	if (i == 3) {
> +		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n", phy_name(phy), addr, i);
> +		return 0;
> +	}
> +
> +	return status;
> +}
> +
> +static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
> +				      enum port port, int lane)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +	int ack;
> +	u32 val = 0;
> +
> +	/* Check for write ack. */
> +	ack = intel_cx0_wait_for_ack(i915, port, lane, &val);
> +	if (ack < 0)
> +		return ack;
> +
> +	if ((REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, val) !=
> +	     XELPDP_PORT_P2M_COMMAND_WRITE_ACK) || val & XELPDP_PORT_P2M_ERROR_SET) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Unexpected ACK received. MSGBUS STATUS: 0x%x.\n", phy_name(phy), val);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
> +				  int lane, u16 addr, u8 data, bool committed)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +
> +	/* Wait for pending transactions.*/
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane - 1),
> +				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return -ETIMEDOUT;
> +	}
> +
> +	/* Issue the write command. */
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane - 1),
> +		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
> +		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
> +		       XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |

Could better indent the above line for clarity.

> +		       XELPDP_PORT_M2P_DATA(data) |
> +		       XELPDP_PORT_M2P_ADDRESS(addr));
> +

The spec requires to wait here MSGBUS_CTL / XELPDP_PORT_M2P_TRANSACTION_PENDING
to clear (for both commited/uncommited writes).

> +	/* Check for error. */
> +	if (committed) {
> +		if (intel_cx0_wait_cwrite_ack(i915, port, lane) < 0) {
> +			intel_cx0_bus_reset(i915, port, lane);
> +			return -EINVAL;
> +		}
> +	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane - 1)) &
> +			    XELPDP_PORT_P2M_ERROR_SET)) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during write command.\n", phy_name(phy));
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return -EINVAL;
> +	}
> +
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane - 1), ~0);

Could use a helper for the above.

> +
> +	return 0;
> +}
> +
> +static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
> +			      int lane, u16 addr, u8 data, bool committed)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +	int i, status;
> +
> +	for (i = 0; i < 3; i++) {
> +		status = __intel_cx0_write_once(i915, port, lane, addr, data, committed);
> +
> +		if (status == 0)
> +			break;

Could simplify by the code below by returning here.

> +	}
> +
> +	if (i == 3) {
> +		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
> +		return;
> +	}
> +}
> +
> +static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
> +			    int lane, u16 addr, u8 data, bool committed)
> +{
> +	if (lane == INTEL_CX0_BOTH_LANES) {
> +		__intel_cx0_write(i915, port, INTEL_CX0_LANE0, addr, data, committed);
> +		__intel_cx0_write(i915, port, INTEL_CX0_LANE1, addr, data, committed);
> +	} else {
> +		__intel_cx0_write(i915, port, lane, addr, data, committed);

Could add a helper and simplify the above by

	for_each_cx0_lane_in_mask(lane, lane_mask)
		__intel_cx0_write(i915, port, lane, addr, data, committed);

> +	}
> +}
> +
> +static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
> +			    int lane, u16 addr, u8 clear, u8 set, bool committed)
> +{
> +	u8 old, val;
> +
> +	old = intel_cx0_read(i915, port, lane, addr);
> +	val = (old & ~clear) | set;
> +
> +	if (val != old)
> +		intel_cx0_write(i915, port, lane, addr, val, committed);
> +}
> +
> +static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
> +			  int lane, u16 addr, u8 clear, u8 set, bool committed)
> +{
> +	if (lane == INTEL_CX0_BOTH_LANES) {
> +		__intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, addr, clear, set, committed);
> +		__intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, addr, clear, set, committed);
> +	} else {
> +		__intel_cx0_rmw(i915, port, lane, addr, clear, set, committed);
> +	}

Could use a for_each_cx0_lane_in_mask() helper here too.

> +}
> +
> +/*
> + * Basic DP link rates with 38.4 MHz reference clock.
> + * Note: The tables below are with SSC. In non-ssc
> + * registers 0xC04 to 0xC08(pll[4] to pll[8]) will be
> + * programmed 0.
> + */
> +
> +static const struct intel_c10mpllb_state mtl_c10_dp_rbr = {
> +	.clock = 162000,
> +	.pll[0] = 0xB4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x30,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x26,
> +	.pll[5] = 0x0C,
> +	.pll[6] = 0x98,
> +	.pll[7] = 0x46,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xC0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x2,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_edp_r216 = {
> +	.clock = 216000,
> +	.pll[0] = 0x4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xA2,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x33,
> +	.pll[5] = 0x10,
> +	.pll[6] = 0x75,
> +	.pll[7] = 0xB3,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x2,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x0F,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_edp_r243 = {
> +	.clock = 243000,
> +	.pll[0] = 0x34,
> +	.pll[1] = 0,
> +	.pll[2] = 0xDA,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x39,
> +	.pll[5] = 0x12,
> +	.pll[6] = 0xE3,
> +	.pll[7] = 0xE9,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0x20,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x2,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x8F,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_dp_hbr1 = {
> +	.clock = 270000,
> +	.pll[0] = 0xF4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xF8,
> +	.pll[3] = 0x0,
> +	.pll[4] = 0x20,
> +	.pll[5] = 0x0A,
> +	.pll[6] = 0x29,
> +	.pll[7] = 0x10,
> +	.pll[8] = 0x1,   /* Verify */
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xA0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x1,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_edp_r324 = {
> +	.clock = 324000,
> +	.pll[0] = 0xB4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x30,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x26,
> +	.pll[5] = 0x0C,
> +	.pll[6] = 0x98,
> +	.pll[7] = 0x46,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xC0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x1,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_edp_r432 = {
> +	.clock = 432000,
> +	.pll[0] = 0x4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xA2,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x33,
> +	.pll[5] = 0x10,
> +	.pll[6] = 0x75,
> +	.pll[7] = 0xB3,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x1,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x0F,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_dp_hbr2 = {
> +	.clock = 540000,
> +	.pll[0] = 0xF4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xF8,
> +	.pll[3] = 0,
> +	.pll[4] = 0x20,
> +	.pll[5] = 0x0A,
> +	.pll[6] = 0x29,
> +	.pll[7] = 0x10,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xA0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_edp_r675 = {
> +	.clock = 675000,
> +	.pll[0] = 0xB4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x3E,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0xA8,
> +	.pll[5] = 0x0C,
> +	.pll[6] = 0x33,
> +	.pll[7] = 0x54,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xC8,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x8F,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_dp_hbr3 = {
> +	.clock = 810000,
> +	.pll[0] = 0x34,
> +	.pll[1] = 0,
> +	.pll[2] = 0x84,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x30,
> +	.pll[5] = 0x0F,
> +	.pll[6] = 0x3D,
> +	.pll[7] = 0x98,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xF0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x0F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state * const mtl_c10_dp_tables[] = {
> +	&mtl_c10_dp_rbr,
> +	&mtl_c10_dp_hbr1,
> +	&mtl_c10_dp_hbr2,
> +	&mtl_c10_dp_hbr3,
> +	NULL,
> +};
> +
> +static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
> +	&mtl_c10_dp_rbr,
> +	&mtl_c10_edp_r216,
> +	&mtl_c10_edp_r243,
> +	&mtl_c10_dp_hbr1,
> +	&mtl_c10_edp_r324,
> +	&mtl_c10_edp_r432,
> +	&mtl_c10_dp_hbr2,
> +	&mtl_c10_edp_r675,
> +	&mtl_c10_dp_hbr3,
> +	NULL,
> +};
> +
> +static const struct intel_c10mpllb_state * const *
> +intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
> +			   struct intel_encoder *encoder)
> +{
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +			return mtl_c10_edp_tables;
> +		else
> +			return mtl_c10_dp_tables;
> +	}
> +
> +	/* TODO: Add HDMI Support */
> +	MISSING_CASE(encoder->type);
> +	return NULL;
> +}
> +
> +static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
> +				     struct intel_encoder *encoder)
> +{
> +	const struct intel_c10mpllb_state * const *tables;
> +	int i;
> +
> +	tables = intel_c10_mpllb_tables_get(crtc_state, encoder);
> +	if (!tables)
> +		return -EINVAL;
> +
> +	for (i = 0; tables[i]; i++) {
> +		if (crtc_state->port_clock <= tables[i]->clock) {

Not sure how an inaccurate PLL clock would work, shouldn't the above
accept only a matching clock?

> +			crtc_state->c10mpllb_state = *tables[i];
> +			return 0;
> +		}
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
> +			      struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +
> +	return intel_c10mpllb_calc_state(crtc_state, encoder);
> +}
> +
> +void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
> +				     struct intel_c10mpllb_state *pll_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +	u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
> +				  INTEL_CX0_LANE0;
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	int i;
> +	u8 cmn, tx0;
> +
> +	/*
> +	 * According to C10 VDR Register programming Sequence we need
> +	 * to do this to read PHY internal registers from MsgBus.
> +	 */
> +	intel_cx0_rmw(i915, encoder->port, lane, PHY_C10_VDR_CONTROL(1), 0,
> +		      C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> +
> +	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> +		pll_state->pll[i] = intel_cx0_read(i915, encoder->port, lane,
> +						   PHY_C10_VDR_PLL(i));
> +
> +	cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
> +	tx0 = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));

The driver programs these registers, so why aren't they also stored in
the intell_c20pll_state struct?

> +
> +	if (tx0 != C10_TX0_VAL || cmn != C10_CMN0_DP_VAL)
> +		drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
> +			 tx0, cmn, phy_name(phy));

Shouldn't PHY_C10_VDR_CONTROL(1)/C10_VDR_CTRL_MSGBUS_ACCESS be cleared
here?

> +}
> +
> +static void intel_c10_pll_program(struct drm_i915_private *i915,
> +				  const struct intel_crtc_state *crtc_state,
> +				  struct intel_encoder *encoder)
> +{
> +	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
> +					 INTEL_CX0_LANE0;
> +	u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
> +					   INTEL_CX0_LANE1;
> +
> +	int i;
> +	struct intel_dp *intel_dp;
> +	bool use_ssc = false;
> +	u8 cmn0 = 0;
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		intel_dp = enc_to_intel_dp(encoder);
> +		use_ssc = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> +			  DP_MAX_DOWNSPREAD_0_5);
> +
> +		if (!intel_panel_use_ssc(i915))
> +			use_ssc = false;
> +
> +		cmn0 = C10_CMN0_DP_VAL;

Would be clearer by stg like:
		/* Using x MHz reference */
		cmn0 = C10_CMN0_REF_RANGE(1) | C10_CMN0_REF_CLK_MPLLB_DIV(2);

> +	}
> +
> +	intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> +			C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);

For DP-alt MFD the PHY lane not owned by display shouldn't be
programmed, no?

> +	/* Custom width needs to be programmed to 0 for both the phy lanes */
> +	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> +		      PHY_C10_VDR_CUSTOM_WIDTH, 0x3, 0, MB_WRITE_COMMITTED);

The above hard-coded values should have a macro definiton.

> +	intel_cx0_rmw(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MASTER_LANE, C10_VDR_CTRL_UPDATE_CFG,
> +		      MB_WRITE_COMMITTED);
> +
> +	/* Program the pll values only for the master lane */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> +		/* If not using ssc pll[4] through pll[8] must be 0*/
> +		intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_PLL(i),
> +				(!use_ssc && (i > 3 && i < 9)) ? 0 : pll_state->pll[i],

pll_state->pll should be setup already intel_c10mpllb_calc_state()
taking into account SSC as well.

> +				(i % 4) ? MB_WRITE_UNCOMMITTED : MB_WRITE_COMMITTED);
> +
> +	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);
> +	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);

Instead of C10_TX0_VAL the flags programmed should be better described
here as cmn0 above.

> +	intel_cx0_rmw(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MASTER_LANE |
> +		      C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> +}
> +
> +void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
> +				  const struct intel_c10mpllb_state *hw_state)
> +{
> +	bool fracen;
> +	int i;
> +	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
> +	unsigned int multiplier, tx_clk_div;
> +
> +	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
> +	drm_dbg_kms(&dev_priv->drm, "c10pll_hw_state: fracen: %s, ",
> +		    str_yes_no(fracen));
> +
> +	if (fracen) {
> +		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
> +		frac_rem =  hw_state->pll[14] << 8 | hw_state->pll[13];
> +		frac_den =  hw_state->pll[10] << 8 | hw_state->pll[9];
> +		drm_dbg_kms(&dev_priv->drm, "quot: %u, rem: %u, den: %u,\n",
> +			    frac_quot, frac_rem, frac_den);
> +	}
> +
> +	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, hw_state->pll[3]) << 8 |
> +		      hw_state->pll[2]) / 2 + 16;
> +	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, hw_state->pll[15]);
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
> +
> +	drm_dbg_kms(&dev_priv->drm, "c10pll_rawhw_state:");
> +
> +	for (i = 0; i < ARRAY_SIZE(hw_state->pll); i = i + 4)
> +		drm_dbg_kms(&dev_priv->drm, "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
> +			    i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
> +			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
> +}
> +
> +int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
> +				   const struct intel_c10mpllb_state *pll_state)
> +{
> +	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
> +	unsigned int multiplier, tx_clk_div, refclk = 38400;
> +
> +	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
> +		frac_quot = pll_state->pll[12] << 8 | pll_state->pll[11];
> +		frac_rem =  pll_state->pll[14] << 8 | pll_state->pll[13];
> +		frac_den =  pll_state->pll[10] << 8 | pll_state->pll[9];
> +	}
> +
> +	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_state->pll[3]) << 8 |
> +		      pll_state->pll[2]) / 2 + 16;
> +
> +	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state->pll[15]);
> +
> +	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
> +				     DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
> +				     10 << (tx_clk_div + 16));
> +}
> +
> +static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
> +					 const struct intel_crtc_state *crtc_state,
> +					 bool lane_reversal)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp;
> +	bool ssc_enabled;
> +	u32 val = 0;
> +
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port), XELPDP_PORT_REVERSAL,
> +		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
> +
> +	if (lane_reversal)
> +		val |= XELPDP_LANE1_PHY_CLOCK_SELECT;
> +
> +	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> +	val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);

TODO: HDMI FRL?

> +
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		intel_dp = enc_to_intel_dp(encoder);
> +		ssc_enabled = intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> +			      DP_MAX_DOWNSPREAD_0_5;
> +
> +		if (!intel_panel_use_ssc(i915))
> +			ssc_enabled = false;
> +
> +		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
> +		val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> +	}
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> +		     XELPDP_FORWARD_CLOCK_UNGATE |
> +		     XELPDP_DDI_CLOCK_SELECT_MASK |
> +		     XELPDP_SSC_ENABLE_PLLB, val);
> +}
> +
> +static u32 intel_cx0_get_powerdown_update(u8 lane)
> +{
> +	if (lane == INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_POWERDOWN_UPDATE;
> +	else if (lane == INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_POWERDOWN_UPDATE;
> +	else
> +		return XELPDP_LANE0_POWERDOWN_UPDATE |
> +		       XELPDP_LANE1_POWERDOWN_UPDATE;

Could simplify by
	val = 0;
	for_each_cx0_lane_in_mask(lane, lane_mask)
		val |= XELPDP_LANE_POWERDOWN_UPDATE(lane);

> +}
> +
> +static u32 intel_cx0_get_powerdown_state(u8 lane, u8 state)
> +{
> +	if (lane == INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_POWERDOWN_NEW_STATE(state);
> +	else if (lane == INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_POWERDOWN_NEW_STATE(state);
> +	else
> +		return XELPDP_LANE0_POWERDOWN_NEW_STATE(state) |
> +		       XELPDP_LANE1_POWERDOWN_NEW_STATE(state);

Could simplify similarly to the above.

> +}
> +
> +static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
> +						enum port port,
> +						u8 lane, u8 state)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +		     XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK | XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK,
> +		     intel_cx0_get_powerdown_state(lane, state));
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +		     XELPDP_LANE0_POWERDOWN_UPDATE | XELPDP_LANE1_POWERDOWN_UPDATE,
> +		     intel_cx0_get_powerdown_update(lane));

The spec says (65451):
"Only update powerdown for one port at a time.  Wait for powerdown
update to finish for one port before initiating update on another port."

both could be updated at the same time if a non-zero stagger delay was
programmed, but for C10/C20 it must be programmed as 0.

> +
> +	/* Update Timeout Value */
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
> +					 intel_cx0_get_powerdown_update(lane), 0,
> +					 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
> +			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
> +}
> +
> +static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum port port)
> +{
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +		     XELPDP_POWER_STATE_READY_MASK,
> +		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(port),
> +		     XELPDP_POWER_STATE_ACTIVE_MASK |
> +		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
> +		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
> +		     XELPDP_PLL_LANE_STAGGERING_DELAY(0));
> +}
> +
> +static u32 intel_cx0_get_pclk_refclk_request(u8 lane)
> +{
> +	if (lane == INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_PCLK_REFCLK_REQUEST;
> +	else if (lane == INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_PCLK_REFCLK_REQUEST;
> +	else
> +		return XELPDP_LANE0_PCLK_REFCLK_REQUEST |
> +		       XELPDP_LANE1_PCLK_REFCLK_REQUEST;
> +}
> +
> +static u32 intel_cx0_get_pclk_refclk_ack(u8 lane)
> +{
> +	if (lane == INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_PCLK_REFCLK_ACK;
> +	else if (lane == INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_PCLK_REFCLK_ACK;
> +	else
> +		return XELPDP_LANE0_PCLK_REFCLK_ACK |
> +		       XELPDP_LANE1_PCLK_REFCLK_ACK;
> +}

Could simplify both of the above functions.

> +
> +/* FIXME: Some Type-C cases need not reset both the lanes. Handle those cases. */
> +static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port port,
> +				     bool lane_reversal)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +	u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
> +				  INTEL_CX0_LANE0;
> +
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
> +					 XELPDP_PORT_BUF_SOC_PHY_READY,
> +					 XELPDP_PORT_BUF_SOC_PHY_READY,
> +					 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
> +			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
> +
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET,
> +		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET);
> +
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
> +					 XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,
> +					 XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,
> +					 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
> +			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
> +
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
> +		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES),
> +		     intel_cx0_get_pclk_refclk_request(lane));
> +
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
> +					 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES),
> +					 intel_cx0_get_pclk_refclk_ack(lane),
> +					 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
> +			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
> +
> +	intel_cx0_powerdown_change_sequence(i915, port, INTEL_CX0_BOTH_LANES,
> +					    CX0_P2_STATE_RESET);
> +	intel_cx0_setup_powerdown(i915, port);
> +
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET, 0);
> +
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port),
> +				    XELPDP_LANE0_PHY_CURRENT_STATUS |
> +				    XELPDP_LANE1_PHY_CURRENT_STATUS,
> +				    XELPDP_PORT_RESET_END_TIMEOUT))
> +		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
> +			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
> +}
> +
> +static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
> +				       struct intel_encoder *encoder, int lane_count,
> +				       bool lane_reversal)
> +{
> +	u8 l0t1, l0t2, l1t1, l1t2;
> +	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
> +	enum port port = encoder->port;
> +
> +	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MSGBUS_ACCESS,
> +		      MB_WRITE_COMMITTED);

TODO: DP-alt MFD case where only one PHY lane should be programmed.

> +
> +	l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
> +	l0t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2));
> +	l1t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2));
> +	l1t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2));
> +

Would be clearer setting here CONTROL2_DISABLE_SINGLE_TX in all of l[0/1]t[1/2], and then

> +	if (lane_reversal) {
> +		switch (lane_count) {
> +		case 1:
			l1t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
			break;

			etc. for 2,3,4 lanes and then

> +			/* Disable MLs 1(lane0), 2(lane0), 3(lane1) */
> +			intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
> +					l1t1 | CONTROL2_DISABLE_SINGLE_TX,
> +					MB_WRITE_COMMITTED);
> +			fallthrough;


> +		case 2:
> +			/* Disable MLs 1(lane0), 2(lane0) */
> +			intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),
> +					l0t2 | CONTROL2_DISABLE_SINGLE_TX,
> +					MB_WRITE_COMMITTED);
> +			fallthrough;
> +		case 3:
> +			/* Disable MLs 1(lane0) */
> +			intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2),
> +					l0t1 | CONTROL2_DISABLE_SINGLE_TX,
> +					MB_WRITE_COMMITTED);
> +			break;
> +		}
> +	} else {
> +		switch (lane_count) {
> +		case 1:
> +			if (dp_alt_mode) {
> +				/* Disable MLs 1(lane0), 3(lane1), 4(lane1) */
> +				intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2),
> +						l0t1 | CONTROL2_DISABLE_SINGLE_TX,
> +						MB_WRITE_COMMITTED);
> +			} else {
> +				/* Disable MLs 2(lane0), 3(lane1), 4(lane1) */
> +				intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),
> +						l0t2 | CONTROL2_DISABLE_SINGLE_TX,
> +						MB_WRITE_COMMITTED);
> +			}
> +			fallthrough;
> +		case 2:
> +			/* Disable MLs 3(lane1), 4(lane1) */
> +			intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
> +					l1t1 | CONTROL2_DISABLE_SINGLE_TX,
> +					MB_WRITE_COMMITTED);
> +			fallthrough;
> +		case 3:
> +			/* Disable MLs 4(lane1) */
> +			intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2),
> +					l1t2 | CONTROL2_DISABLE_SINGLE_TX,
> +					MB_WRITE_COMMITTED);
> +			break;
> +		}
> +	}

write here PHY_CX0_LANE[0/1], PHY_CX0_TX_CONTROL([1/2], 2)

> +
> +	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port))) {

This check is not needed, as we get here only for C10 PHY.

> +		intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, PHY_C10_VDR_CONTROL(1),
> +			      C10_VDR_CTRL_UPDATE_CFG | C10_VDR_CTRL_MSGBUS_ACCESS,

Should the above clear C10_VDR_CTRL_MASTER_LANE?

> +			      C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> +		intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
> +			      C10_VDR_CTRL_UPDATE_CFG | C10_VDR_CTRL_MSGBUS_ACCESS,
> +			      C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> +	}
> +}
> +
> +static u32 intel_cx0_get_pclk_pll_request(u8 lane)
> +{
> +	if (lane == INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_PCLK_PLL_REQUEST;
> +	else if (lane == INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_PCLK_PLL_REQUEST;
> +	else
> +		return XELPDP_LANE0_PCLK_PLL_REQUEST |
> +		       XELPDP_LANE1_PCLK_PLL_REQUEST;
> +}
> +
> +static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
> +{
> +	if (lane == INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_PCLK_PLL_ACK;
> +	else if (lane == INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_PCLK_PLL_ACK;
> +	else
> +		return XELPDP_LANE0_PCLK_PLL_ACK |
> +		       XELPDP_LANE1_PCLK_PLL_ACK;
> +}

Could simplify the above functions.

> +
> +static void intel_c10pll_enable(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
> +					  INTEL_CX0_LANE0;
> +
> +	/*
> +	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
> +	 * clock muxes, gating and SSC
> +	 */
> +	intel_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
> +
> +	/* 2. Bring PHY out of reset. */
> +	intel_cx0_phy_lane_reset(i915, encoder->port, lane_reversal);
> +
> +	/*
> +	 * 3. Change Phy power state to Ready.
> +	 * TODO: For DP alt mode use only one lane.
> +	 */
> +	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> +					    CX0_P2_STATE_READY);
> +
> +	/* 4. Program PHY internal PLL internal registers. */
> +	intel_c10_pll_program(i915, crtc_state, encoder);
> +
> +	/*
> +	 * 5. Program the enabled and disabled owned PHY lane
> +	 * transmitters over message bus
> +	 */
> +	intel_c10_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
> +
> +	/*
> +	 * 6. Follow the Display Voltage Frequency Switching - Sequence
> +	 * Before Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/*
> +	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
> +	 * clock frequency.
> +	 */
> +	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
> +		       crtc_state->port_clock);
> +	/*
> +	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
> +	 * LN<Lane for maxPCLK> to "1" to enable PLL.
> +	 */
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
> +		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
> +
> +	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
> +					 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
> +					 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "Port %c PLL not locked after %dus.\n",
> +			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
> +
> +	/*
> +	 * 10. Follow the Display Voltage Frequency Switching Sequence After
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +}
> +
> +void intel_cx0pll_enable(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +	intel_c10pll_enable(encoder, crtc_state);

TBT-alt is not handled, so needs a TODO: comment.

> +}
> +
> +static void intel_c10pll_disable(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	/* 1. Change owned PHY lane power to Disable state. */
> +	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> +					    CX0_P2PG_STATE_DISABLE);
> +
> +	/*
> +	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/*
> +	 * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK>
> +	 * to "0" to disable PLL.
> +	 */
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES) |
> +		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES), 0);
> +
> +	/* 4. Program DDI_CLK_VALFREQ to 0. */
> +	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
> +
> +	/*
> +	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
> +	 */
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
> +					 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
> +					 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "Port %c PLL not unlocked after %dus.\n",
> +			 phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US);
> +
> +	/*
> +	 * 6. Follow the Display Voltage Frequency Switching Sequence After
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     XELPDP_DDI_CLOCK_SELECT_MASK |
> +		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
> +}
> +
> +void intel_cx0pll_disable(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +	intel_c10pll_disable(encoder);
> +}
> +
> +void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
> +				 struct intel_crtc_state *new_crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_c10mpllb_state mpllb_hw_state = { 0 };
> +	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->c10mpllb_state;
> +	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
> +	struct intel_encoder *encoder;
> +	struct intel_dp *intel_dp;
> +	enum phy phy;
> +	int i;
> +	bool use_ssc = false;
> +
> +	if (DISPLAY_VER(i915) < 14)
> +		return;
> +
> +	if (!new_crtc_state->hw.active)
> +		return;
> +
> +	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
> +	phy = intel_port_to_phy(i915, encoder->port);
> +
> +	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
> +		intel_dp = enc_to_intel_dp(encoder);
> +		use_ssc = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> +			  DP_MAX_DOWNSPREAD_0_5);
> +
> +		if (!intel_panel_use_ssc(i915))
> +			use_ssc = false;
> +	}
> +
> +	if (!intel_is_c10phy(i915, phy))
> +		return;
> +
> +	intel_c10mpllb_readout_hw_state(encoder, &mpllb_hw_state);
> +
> +	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
> +		u8 expected;
> +
> +		if (!use_ssc && i > 3 && i < 9)
> +			expected = 0;
> +		else
> +			expected = mpllb_sw_state->pll[i];

The above isn't needed if PLL state is setup correctly in
intel_c10mpllb_calc_state(), taking into account SSC as well.

> +
> +		I915_STATE_WARN(mpllb_hw_state.pll[i] != expected,
> +				"[CRTC:%d:%s] mismatch in C10MPLLB: Register[%d] (expected 0x%02x, found 0x%02x)",
> +				crtc->base.base.id, crtc->base.name,
> +				i, expected, mpllb_hw_state.pll[i]);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> new file mode 100644
> index 000000000000..8cf340509097
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -0,0 +1,43 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CX0_PHY_H__
> +#define __INTEL_CX0_PHY_H__
> +
> +#include <linux/types.h>
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +
> +#include "i915_drv.h"
> +#include "intel_display_types.h"
> +
> +struct drm_i915_private;
> +struct intel_encoder;
> +struct intel_crtc_state;
> +enum phy;
> +
> +#define INTEL_CX0_LANE0		0x1
> +#define INTEL_CX0_LANE1		0x2
> +#define INTEL_CX0_BOTH_LANES	0x3

Please use INTEL_CX0_LANE0/1 instead of open-coding them.

> +
> +#define MB_WRITE_COMMITTED		1
> +#define MB_WRITE_UNCOMMITTED		0

The above should be bool values.

Could the above be moved to intel_cx0_phy.c ?

> +
> +bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
> +void intel_cx0pll_enable(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state);
> +void intel_cx0pll_disable(struct intel_encoder *encoder);
> +void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
> +				     struct intel_c10mpllb_state *pll_state);
> +int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
> +			      struct intel_encoder *encoder);
> +void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
> +				  const struct intel_c10mpllb_state *hw_state);
> +int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
> +				   const struct intel_c10mpllb_state *pll_state);
> +void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
> +				 struct intel_crtc_state *new_crtc_state);
> +
> +#endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index d1ee8a2fc9cf..15e249f46a64 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -128,4 +128,34 @@
>  #define   XELPDP_SSC_ENABLE_PLLA			REG_BIT(1)
>  #define   XELPDP_SSC_ENABLE_PLLB			REG_BIT(0)
>  
> -#endif /* __INTEL_CX0_PHY_REGS_H__ */
> +/* C10 Vendor Registers */
> +#define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
> +#define   C10_PLL0_FRACEN		REG_BIT8(4)
> +#define   C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
> +#define   C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
> +#define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
> +#define   C10_CMN0_DP_VAL		0x21
> +#define   C10_CMN3_TXVBOOST_MASK	REG_GENMASK8(7, 5)
> +#define   C10_CMN3_TXVBOOST(val)	REG_FIELD_PREP8(C10_CMN3_TXVBOOST_MASK, val)
> +#define PHY_C10_VDR_TX(idx)		(0xC30 + (idx))
> +#define   C10_TX0_VAL			0x10
> +#define PHY_C10_VDR_CONTROL(idx)	(0xC70 + (idx) - 1)
> +#define   C10_VDR_CTRL_MSGBUS_ACCESS	REG_BIT8(2)
> +#define   C10_VDR_CTRL_MASTER_LANE	REG_BIT8(1)
> +#define   C10_VDR_CTRL_UPDATE_CFG	REG_BIT8(0)
> +#define PHY_C10_VDR_CUSTOM_WIDTH	0xD02
> +
> +#define CX0_P0_STATE_ACTIVE             0x0
> +#define CX0_P2_STATE_READY              0x2
> +#define CX0_P2PG_STATE_DISABLE          0x9
> +#define CX0_P4PG_STATE_DISABLE          0xC
> +#define CX0_P2_STATE_RESET              0x2
> +
> +/* PHY_C10_VDR_PLL0 */
> +#define PLL_C10_MPLL_SSC_EN             REG_BIT8(0)
> +
> +/* PIPE SPEC Defined Registers */
> +#define PHY_CX0_TX_CONTROL(tx, control) (0x400 + ((tx) - 1) * 0x200 + (control))
> +#define CONTROL2_DISABLE_SINGLE_TX      REG_BIT(6)
> +
> +#endif /* __INTEL_CX0_REG_DEFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 73240cf78c8b..a433dea5b9a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -39,6 +39,7 @@
>  #include "intel_combo_phy_regs.h"
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_ddi.h"
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
> @@ -3507,6 +3508,21 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
>  						     &crtc_state->dpll_hw_state);
>  }
>  
> +static void mtl_ddi_get_config(struct intel_encoder *encoder,
> +			       struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +
> +	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->c10mpllb_state);
> +	intel_c10mpllb_dump_hw_state(i915, &crtc_state->c10mpllb_state);
> +	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);
> +
> +	intel_ddi_get_config(encoder, crtc_state);
> +}
> +
>  static void dg2_ddi_get_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state)
>  {
> @@ -4413,7 +4429,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	encoder->cloneable = 0;
>  	encoder->pipe_mask = ~0;
>  
> -	if (IS_DG2(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		encoder->enable_clock = intel_cx0pll_enable;
> +		encoder->disable_clock = intel_cx0pll_disable;
> +		encoder->get_config = mtl_ddi_get_config;
> +	} else if (IS_DG2(dev_priv)) {
>  		encoder->enable_clock = intel_mpllb_enable;
>  		encoder->disable_clock = intel_mpllb_disable;
>  		encoder->get_config = dg2_ddi_get_config;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index f86060195987..e23fecba446c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1614,7 +1614,8 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  		return;
>  
>  	/* 2. Initialize all combo phys */
> -	intel_combo_phy_init(dev_priv);
> +	if (DISPLAY_VER(dev_priv) < 14)
> +		intel_combo_phy_init(dev_priv);

This shouldn't be needed, intel_combo_phy_init() handles only combo
PHYs.

>  
>  	/*
>  	 * 3. Enable Power Well 1 (PG1).
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 1676df1dc066..a4c8cb75c0a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -970,7 +970,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
>  	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		bxt_verify_ddi_phy_power_wells(dev_priv);
>  
> -	if (DISPLAY_VER(dev_priv) >= 11)
> +	if (DISPLAY_VER(dev_priv) >= 11 && DISPLAY_VER(dev_priv) < 14)

Isn't needed.

>  		/*
>  		 * DMC retains HW context only for port A, the other combo
>  		 * PHY's HW context for port B is lost after DC transitions,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ab146b5b68bd..db7c108e4d86 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -985,6 +985,11 @@ struct intel_link_m_n {
>  	u32 link_n;
>  };
>  
> +struct intel_c10mpllb_state {
> +	u32 clock; /* in KHz */
> +	u8 pll[20];
> +};
> +
>  struct intel_crtc_state {
>  	/*
>  	 * uapi (drm) state. This is the software state shown to userspace.
> @@ -1128,6 +1133,7 @@ struct intel_crtc_state {
>  	union {
>  		struct intel_dpll_hw_state dpll_hw_state;
>  		struct intel_mpllb_state mpllb_state;
> +		struct intel_c10mpllb_state c10mpllb_state;
>  	};
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 4e9c18be7e1f..da5aa050a5ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -8,6 +8,7 @@
>  
>  #include "i915_reg.h"
>  #include "intel_crtc.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_de.h"
>  #include "intel_display.h"
>  #include "intel_display_types.h"
> @@ -995,6 +996,17 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> +static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_encoder *encoder =
> +		intel_get_crtc_new_encoder(state, crtc_state);
> +
> +	return intel_cx0mpllb_calc_state(crtc_state, encoder);
> +}
> +
>  static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
>  {
>  	return dpll->m < factor * dpll->n;
> @@ -1423,6 +1435,10 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> +static const struct intel_dpll_funcs mtl_dpll_funcs = {
> +	.crtc_compute_clock = mtl_crtc_compute_clock,
> +};
> +
>  static const struct intel_dpll_funcs dg2_dpll_funcs = {
>  	.crtc_compute_clock = dg2_crtc_compute_clock,
>  };
> @@ -1517,7 +1533,9 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
>  void
>  intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
>  {
> -	if (IS_DG2(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		dev_priv->display.funcs.dpll = &mtl_dpll_funcs;
> +	else if (IS_DG2(dev_priv))
>  		dev_priv->display.funcs.dpll = &dg2_dpll_funcs;
>  	else if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
>  		dev_priv->display.funcs.dpll = &hsw_dpll_funcs;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 22fc908b7e5d..ed372d227aa7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4104,7 +4104,7 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
>  
>  	mutex_init(&dev_priv->display.dpll.lock);
>  
> -	if (IS_DG2(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >= 14 || IS_DG2(dev_priv))
>  		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
>  		dpll_mgr = NULL;
>  	else if (IS_ALDERLAKE_P(dev_priv))
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 842d70f0dfd2..ec504470c2f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -11,6 +11,7 @@
>  #include "intel_atomic.h"
>  #include "intel_crtc.h"
>  #include "intel_crtc_state_dump.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_display.h"
>  #include "intel_display_types.h"
>  #include "intel_fdi.h"
> @@ -236,6 +237,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
>  	verify_crtc_state(crtc, old_crtc_state, new_crtc_state);
>  	intel_shared_dpll_state_verify(crtc, old_crtc_state, new_crtc_state);
>  	intel_mpllb_state_verify(state, new_crtc_state);
> +	intel_c10mpllb_state_verify(state, new_crtc_state);
>  }
>  
>  void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d22ffd7a32dc..94dd0d3a474b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2101,6 +2101,11 @@
>  #define   TRANS_PUSH_EN			REG_BIT(31)
>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>  
> +/* DDI Buffer Control */
> +#define _DDI_CLK_VALFREQ_A		0x64030
> +#define _DDI_CLK_VALFREQ_B		0x64130
> +#define DDI_CLK_VALFREQ(port)		_MMIO_PORT(port, _DDI_CLK_VALFREQ_A, _DDI_CLK_VALFREQ_B)
> +
>  /*
>   * HSW+ eDP PSR registers
>   *
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
> index db26de6b57bc..f9d7c03e95d6 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -22,6 +22,19 @@
>  	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
>  				 ((__n) < 0 || (__n) > 31))))
>  
> +/**
> + * REG_BIT8() - Prepare a u8 bit value
> + * @__n: 0-based bit number
> + *
> + * Local wrapper for BIT() to force u8, with compile time checks.
> + *
> + * @return: Value with bit @__n set.
> + */
> +#define REG_BIT8(__n)                                                   \
> +	((u8)(BIT(__n) +                                                \
> +	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
> +				 ((__n) < 0 || (__n) > 7))))
> +
>  /**
>   * REG_GENMASK() - Prepare a continuous u32 bitmask
>   * @__high: 0-based high bit
> @@ -52,6 +65,21 @@
>  				 __is_constexpr(__low) &&		\
>  				 ((__low) < 0 || (__high) > 63 || (__low) > (__high)))))
>  
> +/**
> + * REG_GENMASK8() - Prepare a continuous u8 bitmask
> + * @__high: 0-based high bit
> + * @__low: 0-based low bit
> + *
> + * Local wrapper for GENMASK() to force u8, with compile time checks.
> + *
> + * @return: Continuous bitmask from @__high to @__low, inclusive.
> + */
> +#define REG_GENMASK8(__high, __low)                                     \
> +	((u8)(GENMASK(__high, __low) +                                  \
> +	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
> +				 __is_constexpr(__low) &&               \
> +				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))
> +
>  /*
>   * Local integer constant expression version of is_power_of_2().
>   */
> @@ -74,6 +102,23 @@
>  	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
>  	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
>  
> +/**
> + * REG_FIELD_PREP8() - Prepare a u8 bitfield value
> + * @__mask: shifted mask defining the field's length and position
> + * @__val: value to put in the field
> + *
> + * Local copy of FIELD_PREP8() to generate an integer constant expression, force
> + * u8 and for consistency with REG_FIELD_GET8(), REG_BIT8() and REG_GENMASK8().
> + *
> + * @return: @__val masked and shifted into the field defined by @__mask.
> + */
> +#define REG_FIELD_PREP8(__mask, __val)                                          \
> +	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
> +	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
> +	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
> +	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
> +	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
> +
>  /**
>   * REG_FIELD_GET() - Extract a u32 bitfield value
>   * @__mask: shifted mask defining the field's length and position
> @@ -155,6 +200,18 @@
>   */
>  #define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
>  
> +/**
> + * REG_FIELD_GET8() - Extract a u8 bitfield value
> + * @__mask: shifted mask defining the field's length and position
> + * @__val: value to extract the bitfield value from
> + *
> + * Local wrapper for FIELD_GET() to force u8 and for consistency with
> + * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
> + *
> + * @return: Masked and shifted value of the field defined by @__mask in @__val.
> + */
> +#define REG_FIELD_GET8(__mask, __val)   ((u8)FIELD_GET(__mask, __val))
> +
>  typedef struct {
>  	u32 reg;
>  } i915_reg_t;
> -- 
> 2.34.1
> 
