Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E583A5F0724
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 11:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2377A10EBED;
	Fri, 30 Sep 2022 09:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB85C10EBED
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 09:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664528688; x=1696064688;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=a1Yg6o+Cpmub0VXIUkSjecrfpuur/9mg+9T41EXuwAE=;
 b=azrUkaspu1A6dptpG9PsZ1LVEX/ZUV6cNmvYYoQnqKCGtCpjdb/Bpcvg
 fdQiIsCf0h7HKEizbklhcX1h+cKRldLP3lttE33FRgLAHWxPvC2lTrsYi
 qCGyi5KfXif943qccskNC6GYU1kSUGmRfOXTLduEd+SSs/q38j6jRdkOc
 ZAOoUQmU+m8UY4h68lR+o5iJ0B4tl29XNBYuuoCypqd2iXqxaN1I/d0Yd
 dIVQTFlIXaXpTzy5SYLaCYZsA6JMOKF2r8LWTiVLiSHraz3hGvc4zIhK3
 Yh51Z4RoWvTfMUybZejA1Yc5Bik9xdvwfuYXDpdZnxa2jNKvsbpwdLTa/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="300863574"
X-IronPort-AV: E=Sophos;i="5.93,357,1654585200"; d="scan'208";a="300863574"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 02:04:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="622706646"
X-IronPort-AV: E=Sophos;i="5.93,357,1654585200"; d="scan'208";a="622706646"
Received: from rrogov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.37.237])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 02:04:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220929131747.2592092-2-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220929131747.2592092-1-mika.kahola@intel.com>
 <20220929131747.2592092-2-mika.kahola@intel.com>
Date: Fri, 30 Sep 2022 12:04:43 +0300
Message-ID: <87pmfdw7v8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/mtl: Add Support for C10,
 C20 PHY Message Bus
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

On Thu, 29 Sep 2022, Mika Kahola <mika.kahola@intel.com> wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>
> XELPDP has C10 and C20 phys from Synopsys to drive displays. Each phy
> has a dedicated PIPE 5.2 Message bus for configuration. This message
> bus is used to configure the phy internal registers.

This looks like a silly intermediate step, adding a bunch of static
functions with __maybe_unused, just to be modified again in the next
patch.

>
> Bspec: 64599, 65100, 65101, 67610, 67636
>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com> (v4)
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 179 +++++++++++++++++++
>  1 file changed, 179 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> new file mode 100644
> index 000000000000..7930b0255cfa
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -0,0 +1,179 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + */
> +
> +#include "intel_de.h"
> +#include "intel_uncore.h"

Do you use anything from intel_uncore.h directly, or is it just
intel_de.h?

> +
> +static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port=
 port, int lane)
> +{
> +	enum phy phy =3D intel_port_to_phy(i915, port);
> +
> +	/* Bring the phy to idle. */
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +		       XELPDP_PORT_M2P_TRANSACTION_RESET);
> +
> +	/* Wait for Idle Clear. */
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane=
),
> +				    XELPDP_PORT_M2P_TRANSACTION_RESET,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle. \n", phy_nam=
e(phy));
> +		return;
> +	}
> +
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), ~0);
> +	return;

Unnecessary return statement.

> +}
> +
> +__maybe_unused static u8 intel_cx0_read(struct drm_i915_private *i915, e=
num port port,
> +			 int lane, u16 addr)
> +{
> +	enum phy phy =3D intel_port_to_phy(i915, port);
> +	u32 val =3D 0;
> +	int attempts =3D 0;
> +
> +retry:
> +	if (attempts =3D=3D 3) {
> +		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries. St=
atus: 0x%x\n", phy_name(phy), addr, attempts, val ?: 0);
> +		return 0;
> +	}

The code looks like it would benefit from abstracting a non-retrying
read function that returns errors, with this function doing the retry
loop using a conventional for loop.

There's four copy-pasted bits of error handling here that's just error
prone.

> +
> +	/* Wait for pending transactions.*/
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane=
),
> +				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_dbg(&i915->drm, "PHY %c Timeout waiting for previous transaction t=
o complete. Reset the bus and retry.\n", phy_name(phy));

drm_dbg_kms() throughout.

> +		attempts++;
> +		intel_cx0_bus_reset(i915, port, lane);
> +		goto retry;
> +	}
> +
> +	/* Issue the read command. */
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
> +		       XELPDP_PORT_M2P_COMMAND_READ |
> +		       XELPDP_PORT_M2P_ADDRESS(addr));
> +
> +	/* Wait for response ready. And read response.*/
> +	if (__intel_wait_for_register(&i915->uncore,
> +				      XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
> +				      XELPDP_PORT_P2M_RESPONSE_READY,
> +				      XELPDP_PORT_P2M_RESPONSE_READY,
> +				      XELPDP_MSGBUS_TIMEOUT_FAST_US,
> +				      XELPDP_MSGBUS_TIMEOUT_SLOW, &val)) {
> +		drm_dbg(&i915->drm, "PHY %c Timeout waiting for Read response ACK. Sta=
tus: 0x%x\n", phy_name(phy), val);
> +		attempts++;
> +		intel_cx0_bus_reset(i915, port, lane);
> +		goto retry;
> +	}
> +
> +	/* Check for error. */
> +	if (val & XELPDP_PORT_P2M_ERROR_SET) {
> +		drm_dbg(&i915->drm, "PHY %c Error occurred during read command. Status=
: 0x%x\n", phy_name(phy), val);
> +		attempts++;
> +		intel_cx0_bus_reset(i915, port, lane);
> +		goto retry;
> +	}
> +
> +	/* Check for Read Ack. */
> +	if (REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, val) !=3D
> +	    XELPDP_PORT_P2M_COMMAND_READ_ACK) {
> +		drm_dbg(&i915->drm, "PHY %c Not a Read response. MSGBUS Status: 0x%x.\=
n", phy_name(phy), val);
> +		attempts++;
> +		intel_cx0_bus_reset(i915, port, lane);
> +		goto retry;
> +	}
> +
> +	/* Clear Response Ready flag.*/
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), ~0);

Blank line before return.

> +	return (u8)REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);

Unnecessary cast.

> +}
> +
> +static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
> +				      enum port port, int lane)
> +{
> +	enum phy phy =3D intel_port_to_phy(i915, port);
> +	u32 val;
> +
> +	/* Check for write ack. */
> +	if (__intel_wait_for_register(&i915->uncore,
> +				      XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
> +				      XELPDP_PORT_P2M_RESPONSE_READY,
> +				      XELPDP_PORT_P2M_RESPONSE_READY,
> +				      XELPDP_MSGBUS_TIMEOUT_FAST_US,
> +				      XELPDP_MSGBUS_TIMEOUT_SLOW, &val)) {
> +		drm_dbg(&i915->drm, "PHY %c Timeout waiting for Committed message ACK.=
 Status: 0x%x\n", phy_name(phy), val);
> +		return -ETIMEDOUT;
> +	}
> +
> +	if ((REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, val) !=3D
> +	     XELPDP_PORT_P2M_COMMAND_WRITE_ACK) || val & XELPDP_PORT_P2M_ERROR_=
SET) {
> +		drm_dbg(&i915->drm, "PHY %c Unexpected ACK received. MSGBUS STATUS: 0x=
%x.\n", phy_name(phy), val);
> +		return -EINVAL;
> +	}

This is also copy-paste duplicating the stuff in the previous
function. So why isn't this function used there?

> +
> +	return 0;
> +}
> +
> +__maybe_unused static void intel_cx0_write(struct drm_i915_private *i915=
, enum port port,
> +			    int lane, u16 addr, u8 data, bool committed)
> +{
> +	enum phy phy =3D intel_port_to_phy(i915, port);
> +	int attempts =3D 0;
> +
> +retry:
> +	if (attempts =3D=3D 3) {
> +		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n=
", phy_name(phy), addr, attempts);
> +		return;
> +	}

Same here with the retries as in the write. Have a lower level
non-retrying write function, and handle the rewrites at a different
abstraction level.

> +
> +	/* Wait for pending transactions.*/
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane=
),
> +				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_dbg(&i915->drm, "PHY %c Timeout waiting for previous transaction t=
o complete. Reset the bus and retry.\n", phy_name(phy));
> +		attempts++;
> +		intel_cx0_bus_reset(i915, port, lane);
> +		goto retry;
> +	}
> +
> +	/* Issue the write command. */
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
> +		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
> +		       XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
> +		       XELPDP_PORT_M2P_DATA(data) |
> +		       XELPDP_PORT_M2P_ADDRESS(addr));
> +
> +	/* Check for error. */
> +	if (committed) {
> +		if (intel_cx0_wait_cwrite_ack(i915, port, lane) < 0) {
> +			attempts++;
> +			intel_cx0_bus_reset(i915, port, lane);
> +			goto retry;
> +		}
> +	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(phy, lane=
)) &
> +			    XELPDP_PORT_P2M_ERROR_SET)) {
> +		drm_dbg(&i915->drm, "PHY %c Error occurred during write command.\n", p=
hy_name(phy));
> +		attempts++;
> +		intel_cx0_bus_reset(i915, port, lane);
> +		goto retry;
> +	}
> +
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), ~0);
> +
> +	return;

Unnecessary return statement.

> +}
> +
> +__maybe_unused static void intel_cx0_rmw(struct drm_i915_private *i915, =
enum port port,
> +			  int lane, u16 addr, u8 clear, u8 set, bool committed)
> +{
> +	u8 old, val;
> +
> +	old =3D intel_cx0_read(i915, port, lane, addr);
> +	val =3D (old & ~clear) | set;
> +
> +	if (val !=3D old)
> +		intel_cx0_write(i915, port, lane, addr, val, committed);
> +}

--=20
Jani Nikula, Intel Open Source Graphics Center
